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
	input [31:0]addr,//indexmode = way, block, offset; addrmode = tag, block, offset
						  //不能同时读取以及执行指令
	input cache_r,
	output [31:0]cache_data,
	output cache_ready,
	output cache_err,
	
	input mem_ready,
	input [127:0]mem_data,
	output reg [31:0]mem_addr,
	output reg mem_r,
	
	input op_en,
	input [2:0]op,
	input [31:0]Tag_Lo,
	input [31:0]Tag_Hi,
	output reg [31:0]Tag_Lo_in,
	output reg [31:0]Tag_Hi_in,
	output reg cache_tag_we
    );
	
	wire [19:0]tag_;
	wire [7:0]block_;
	wire [3:0]offset_;

	reg v[511:0];//mem
	reg [19:0]tag[511:0];//mem
	reg [127:0]data[511:0];//mem
	reg [1:0]count0[255:0];//mem
	reg [1:0]count1[255:0];//mem
	
	reg [31:0]data_w_0_3, data_w_0_2, data_w_0_1, data_w_0_0, data_w_0_res;
	reg [31:0]data_w_1_3, data_w_1_2, data_w_1_1, data_w_1_0, data_w_1_res;
	reg [19:0]tag_0, tag_1;
	reg v_0, v_1;
	
	assign {tag_, block_ , offset_} = addr;
	always @(posedge clk) begin
		//the first entry
		{data_w_0_3, data_w_0_2, data_w_0_1, data_w_0_0} <= data[{1'b0, block_}];
		v_0 <= v[{1'b0, block_}];
		tag_0 <= tag[{1'b0, block_}];
		
		//the second entry
		{data_w_1_3, data_w_1_2, data_w_1_1, data_w_1_0} <= data[{1'b1, block_}];
		v_1 <= v[{1'b1, block_}];
		tag_1 <= tag[{1'b1, block_}];
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
	//err
	assign cache_err = offset_[1] | offset_[0];
	//result
	assign cache_ready = ~cache_r | (cache_r & cache_hit);//////////////////////////////
	assign cache_data = cache_hit_0 ? data_w_0_res : data_w_1_res;
	
	/*
	wire select_1;
	assign select_1 = ~v_1 | (v_0 & v_1 & count[{1'b1, block_}] < count[{1'b0, block_}]);//LRU
	
	
	//时序电路部分（用于执行代码,以及填充）
	reg WAIT = 1'b0;
	reg [8:0]v_addr, tag_addr, data_addr;
	reg v_data;
	reg [19:0]tag_data;
	reg [127:0]data_data;
	reg v_w, tag_w, data_w;
	
	always @* begin
		{v_addr, v_data, v_w, tag_addr, tag_data
		, tag_w, data_addr, data_data, data_w
		, Tag_Hi_in, Tag_Lo_in, cache_tag_we
		, mem_addr, mem_r} = 280'b0;
		
		if (WAIT) begin
			if (mem_ready) begin
				tag_addr = {select_1, block_};
				tag_data = tag_;
				tag_w = 1'b1;
				data_addr = {select_1, block_};
				data_data = mem_data;
				data_w = 1'b1;
				v_addr = {select_1, block_};
				v_data = 1'b1;
				v_w = 1'b1;
			end
		end
		else if (cache_r) begin
			if (~cache_hit) begin
				mem_addr = {addr[31:4], 4'b0};
				mem_r = 1'b1;
			end
		end
		else if (op_en) begin
			if (op == 3'b000) begin//index set invalid
				v_addr = addr[12:4];
				v_data = 1'b0;
				v_w = 1'b1;
			end
			else if (op_en & (op == 3'b001)) begin//index store tag
				Tag_Hi_in = 32'b0;
				Tag_Lo_in = {12'b0, tag[addr[12:4]]};
				cache_tag_we = 1'b1;
			end
			else if (op == 3'b010) begin//index load tag
				tag_addr = addr[12:4];
				tag_data = Tag_Lo[19:0];
				tag_w = 1'b1;
			end
			else if ((op == 3'b100) & cache_hit) begin//addr set invalid
				v_addr = {cache_hit_1, block_};
				v_data = 1'b0;
				v_w = 1'b1;
			end
			else if ((op == 3'b101) & ~cache_hit) begin//addr fill
				mem_addr = {addr[31:4], 4'b0};
				mem_r = 1'b1;
			end
		end
	end
	
	//WAIT
	always @(posedge clk) begin
		if (WAIT & mem_ready)
			WAIT <= 1'b0;
		else if (~WAIT & op_en & (op==3'b101) & ~cache_hit)
			WAIT <= 1'b1;
		else
			WAIT <= WAIT;
	end
		
	//v tag data写入
	always @(posedge clk) begin
		if (v_w)
			v[v_addr] <= v_data;
		else
			v[v_addr] <= v[v_addr];
		
		if (tag_w)
			tag[tag_addr] <= tag_data;
		else
			tag[tag_addr] <= tag[tag_addr];
		
		if (data_w)
			data[data_addr] <= data_data;
		else
			data[data_addr] <= data[data_addr];
	end
	
	//LRU count down
	always @(posedge clk) begin
		if (WAIT & mem_ready) begin
			count[{select_1, block_}] <= 2'b11;
		end
		
		if (cache_r & cache_hit) begin
			count[{cache_hit_1, block_}] <= 2'b11;
			case (count[{cache_hit_0, block_}])
				2'b11: count[{cache_hit_0, block_}] <= 2'b10;
				2'b10: count[{cache_hit_0, block_}] <= 2'b01;
				2'b01: count[{cache_hit_0, block_}] <= 2'b00;
				2'b00: count[{cache_hit_0, block_}] <= 2'b00;
			endcase
		end
	end
	//第一个上升沿，CPU发送read信号和地址到cache
	//如果没有reload，第一个上升沿到第二个上升沿之间数据传送给CPU，第二个上升沿count发生变化
	//如果有reload，第一个上升沿到第二个上升沿之间将地址传送给L2，L2将数据传送给cache，
	//   当第二个上升沿时，数据写入cache，count发生变化
	//   第二个上升沿到第三个上升沿之间数据传送给CPU，第三个上升沿count发生变化
	*/
endmodule
