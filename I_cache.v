`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:31 10/14/2017 
// Design Name: 
// Module Name:    I_cache 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module I_cache(
	input clk,//时钟与CPU反向
	input rst,
	input [31:0]addr,//indexmode = way, block, offset; addrmode = tag, block, offset
						  //不能同时读取以及执行指令
	input cache_r,
	output [31:0]cache_data,
	output reg cache_ready,
	output reg cache_err,
	
	input mem_ready,
	input [127:0]mem_data,
	output reg [31:0]mem_addr,
	output reg mem_r,
	
	input [6:0]op,//one hot
	input [31:0]Tag_Lo,
	input [31:0]Tag_Hi,
	output reg [31:0]Tag_Lo_in,
	output reg [31:0]Tag_Hi_in,
	output reg cache_tag_we
    );
		
	wire [19:0]tag_;
	wire [7:0]block_;
	wire [3:0]offset_;
	assign {tag_, block_ , offset_} = addr;
	
	wire i_i, i_stag, i_ltag, a_i, a_fill;
	//index invalidate  index set tag index load tag address invalidate
	assign i_i = op[0];
	assign i_stag = op[1];
	assign i_ltag = op[2];
	assign a_i = op[4];
	assign a_fill = op[5];

	reg [511:0]v;//mem
	reg [19:0]tag[511:0];//mem
	reg [19:0]tag0[255:0];
	reg [19:0]tag1[255:0];
	reg [127:0]data[511:0];//mem
	reg [1:0]count0[255:0];//mem
	reg [1:0]count1[255:0];//mem
	
	reg [31:0]data_w_0_3, data_w_0_2, data_w_0_1, data_w_0_0, data_w_0_res;
	reg [31:0]data_w_1_3, data_w_1_2, data_w_1_1, data_w_1_0, data_w_1_res;
	reg [19:0]tag_0, tag_1;
	reg [1:0]count_0, count_1;
	reg v_0, v_1;
	always @(posedge clk) begin
		//the first entry write first is needed
		{data_w_0_3, data_w_0_2, data_w_0_1, data_w_0_0} <= data[{1'b0, block_}];
		v_0 <= v[{1'b0, block_}];
		tag_0 <= tag0[block_];
		count_0 <= count0[block_];
		
		//the second entry write first is needed
		{data_w_1_3, data_w_1_2, data_w_1_1, data_w_1_0} <= data[{1'b1, block_}];
		v_1 <= v[{1'b1, block_}];
		tag_1 <= tag1[block_];
		count_1 <= count1[block_];
	end
	
	always @* begin
		case (offset_[3:2])
			2'b00:begin data_w_0_res = data_w_0_0; data_w_1_res = data_w_1_0; end
			2'b01:begin data_w_0_res = data_w_0_1; data_w_1_res = data_w_1_1; end
			2'b10:begin data_w_0_res = data_w_0_2; data_w_1_res = data_w_1_2; end
			2'b11:begin data_w_0_res = data_w_0_3; data_w_1_res = data_w_1_3; end
		endcase
	end
	
	//hit
	wire cache_hit_0, cache_hit_1, cache_hit;
	assign cache_hit_0 = v_0 & (tag_0 == tag_);
	assign cache_hit_1 = v_1 & (tag_1 == tag_);
	assign cache_hit = cache_hit_0 | cache_hit_1;
	assign cache_data = cache_hit_0 ? data_w_0_res : (cache_hit_1 ? data_w_1_res : 32'b0);
	
	//FSM
	parameter START = 2'b00;
	parameter FETCH = 2'b01;
	parameter STORE = 2'b10;
	reg [1:0]cur_state;
	reg [1:0]nxt_state;
	always @(posedge clk) begin
		if (rst)
			cur_state <= 2'b0;
		else
			cur_state <= nxt_state;
	end
	
	always @* begin
		if (rst)
			nxt_state = 2'b0;
		else
			case (cur_state)
				START: if ((cache_r | a_fill) & ~cache_hit) begin
							if (mem_ready) nxt_state = STORE;
							else nxt_state = FETCH;
						 end
						 else nxt_state = START;
				FETCH: if (mem_ready) nxt_state = STORE;
						 else nxt_state = FETCH;
				STORE: nxt_state = START;
				default: nxt_state = 2'b0;
			endcase
	end
	
	reg [8:0]v_addr, tag0_addr, tag1_addr, data_addr;
	reg v_data;
	reg [19:0]tag0_data, tag1_data;
	reg [127:0]data_data;
	reg v_w, tag0_w, tag1_w, data_w;
	reg select_1;
	always @* begin
		{v_addr, v_data, v_w, tag0_addr, tag0_data, tag0_w
		, tag1_addr, tag1_data, tag1_w
		, data_addr, data_data, data_w
		, Tag_Hi_in, Tag_Lo_in, cache_tag_we
		, mem_addr, mem_r} = 0;
		select_1 = 1'b0;
		case (cur_state)
			START: 
					if (cache_r) begin
						if (~cache_hit) begin
							mem_addr = {addr[31:4], 4'b0};
							mem_r = 1'b1;
						end
					end
					else begin
						if (i_i) begin
							v_addr = addr[12:4];
							v_data = 1'b0;
							v_w = 1'b1;
						end
						else if (i_stag) begin
							Tag_Hi_in = 32'b0;
							if (addr[12])
								Tag_Lo_in = tag_1;
							else
								Tag_Lo_in = tag_0;
							cache_tag_we = 1'b1;
						end
						else if (i_ltag) begin//programmer should make sure no tag conflicts
							if (addr[12]) begin
								tag1_addr = addr[11:4];
								tag1_data = Tag_Lo[19:0];
								tag1_w = 1'b1;
							end
							else begin
								tag0_addr = addr[11:4];
								tag0_data = Tag_Lo[19:0];
								tag0_w = 1'b1;
							end
						end
						else if (a_i) begin
							v_addr = {cache_hit_1, block_};
							v_data = 1'b0;
							v_w = 1'b1;
						end
						else if (a_fill & ~cache_hit) begin
							mem_addr = {addr[31:4], 4'b0};
							mem_r = 1'b1;
							cache_err = offset_[1] | offset_[0];
						end
						else if (a_fill & cache_hit) begin
							cache_err = offset_[1] | offset_[0] | (cache_hit_0 & cache_hit_1);
							cache_ready = ~cache_err;
						end
						else if (op == 0) begin
							cache_ready = 1'b1;
						end
					 end
			FETCH: begin
						mem_addr = {addr[31:4], 4'b0};
						mem_r = 1'b1;
						cache_err = offset_[1] | offset_[0];
					end
			STORE:begin
						select_1 = ~v_1 | (v_0 & v_1 & count_0 < count_1);
						if (select_1) begin
							tag1_addr = block_;
							tag1_data = tag_;
							tag1_w = 1'b1;
						end
						else begin
							tag0_addr = block_;
							tag0_data = tag_;
							tag0_w = 1'b1;
						end
						data_addr = {select_1, block_};
						data_data = mem_data;
						data_w = 1'b1;
						v_addr = {select_1, block_};
						v_data = 1'b1;
						v_w = 1'b1;
						cache_err = offset_[1] | offset_[0];
					end
		endcase
	end
	
	assign cache_err = offset_[1] | offset_[0] | (cache_hit_0 & cac
	
	always @(posedge clk) begin
		if (rst) begin
			cache_err <= 1'b0;
			cache_ready <= 1'b0;
		end
		else
			case (cur_state)
				START: if (i_i | i_stag | i_ltag | a_i) begin//programmer should make sure no tag conflicts
							cache_err <= offset_[1] | offset_[0];
							cache_ready <= 1'b1;
						 end
						 else if (a_fill | cache_r) begin	
							cache_err <= offset_[1] | offset_[0] | (cache_hit_0 & cache_hit_1);
							cache_ready <= ~cache_err & cache_hit;
						 end
						 else begin
							cache_err <= 1'b0;
							cache_ready <= 1'b1;
						 end
						 
						 
	end
	
	wire [7:0]count0_addr, count1_addr;
	reg [1:0]count0_data,count1_data;
	reg count0_w, count1_w;
	assign count0_addr = block_;
	assign count1_addr = block_;
	
	always @* begin
		{count0_data, count1_data, count0_w, count1_w} = 22'b0;
		//load
		case (cur_state)
			START: if (cache_r) begin
						if (cache_hit) begin
							count0_data = 2'b11;//hit
							count0_w = 1'b1;
							count1_w = 1'b1;
							case (count_1)//综合后生成LUT
								2'b11: count1_data = 2'b10;
								2'b10: count1_data = 2'b01;
								2'b01: count1_data = 2'b00;
								2'b00: count1_data = 2'b00;
							endcase
						end
						else begin
							count1_data = 2'b11;
							count1_w = 1'b1;
							count0_w = 1'b1;
							case (count_0)
								2'b11: count0_data = 2'b10;
								2'b10: count0_data = 2'b01;
								2'b01: count0_data = 2'b00;
								2'b00: count0_data = 2'b00;
							endcase
						end
					end
			STORE: if (select_1) begin
						count1_data = 2'b11;
						count1_w = 1'b1;
					end
					else begin
						count0_data = 2'b11;
						count0_w = 1'b1;
					end
		endcase
	end
	
	//v tag data count写入
	always @(posedge clk) begin
		if (v_w)
			v[v_addr] <= v_data;
		if (tag0_w)
			tag0[tag0_addr] <= tag0_data;
		if (tag1_w)
			tag1[tag1_addr] <= tag1_data;
		if (data_w)
			data[data_addr] <= data_data;
		if (count0_w)
			count0[count0_addr] <= count0_data;
		if (count1_w)
			count1[count1_addr] <= count1_data;
	end
	
	//第一个上升沿，CPU发送read信号和地址到cache
	//如果没有reload，第一个上升沿到第二个上升沿之间数据传送给CPU，第二个上升沿count发生变化
	//如果有reload，第一个上升沿到第二个上升沿之间将地址传送给L2，L2将数据传送给cache，
	//   当第二个上升沿时，数据写入cache，count发生变化
	//   第二个上升沿到第三个上升沿之间数据传送给CPU，第三个上升沿count发生变化
endmodule
