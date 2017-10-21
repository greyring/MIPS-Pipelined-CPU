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
	output cache_ready,
	output cache_err,
	
	input mem_ready,
	input [127:0]mem_data,
	output [31:0]mem_addr,
	output mem_r,
	
	input [6:0]op,//one hot
	input [31:0]Tag_Lo,
	input [31:0]Tag_Hi,
	output [31:0]Tag_Lo_in,
	output [31:0]Tag_Hi_in,
	output cache_tag_w
    );
	
	//store inst and address
	reg [7:0]op_;//op_[7] = cache_r
	reg [31:0]addr_;
	reg [31:0]Tag_Lo_, Tag_Hi_;
	reg mem_ready_;
	always @(posedge clk) begin
		mem_ready_ <= mem_ready;
		if (cache_ready) begin
			op_ <= {cache_r, op};
			addr_ <= addr;
			Tag_Lo_ <= Tag_Lo;
			Tag_Hi_ <= Tag_Hi;
		end
		else begin
			op_ <= op_;
			addr_ <= addr_;
			Tag_Lo_ <= Tag_Lo_;
			Tag_Hi_ <= Tag_Hi_;
		end
	end
	
	//decode
	wire [19:0]tag_;
	wire [7:0]block_;
	wire [3:0]offset_;
	assign {tag_, block_, offset_} = addr_;
	
	wire v0_data, v1_data;
	wire v0_wdata, v1_wdata;
	wire v0_w, v1_w;
	cache_mem #(.DATA_WIDTH(1)) v0(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(v0_data), 
    .w_addr(block_), 
    .w_data(v0_wdata), 
    .w_en(v0_w)
   );
	cache_mem #(.DATA_WIDTH(1)) v1(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(v1_data), 
    .w_addr(block_), 
    .w_data(v1_wdata), 
    .w_en(v1_w)
   );
	
	wire [19:0]tag0_data, tag0_wdata, tag1_data, tag1_wdata;
	wire tag0_w, tag1_w;
	cache_mem #(.DATA_WIDTH(20)) tag0(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(tag0_data), 
    .w_addr(block_), 
    .w_data(tag0_wdata), 
    .w_en(tag0_w)
   );
	cache_mem #(.DATA_WIDTH(20)) tag1(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(tag1_data), 
    .w_addr(block_), 
    .w_data(tag1_wdata), 
    .w_en(tag1_w)
   );
	
	wire [127:0]data0_data, data1_data;
	wire data0_w, data1_w;
	cache_mem #(.DATA_WIDTH(128)) data0(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(data0_data), 
    .w_addr(block_), 
    .w_data(mem_data), 
    .w_en(data0_w)
   );
	cache_mem #(.DATA_WIDTH(128)) data1(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(data1_data), 
    .w_addr(block_), 
    .w_data(mem_data), 
    .w_en(data1_w)
   );
	
	wire [1:0]count0_data, count0_wdata, count1_data, count1_wdata;
	wire count0_w, count1_w;
	cache_mem #(.DATA_WIDTH(2)) count0(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(count0_data), 
    .w_addr(block_), 
    .w_data(count0_wdata), 
    .w_en(count0_w)
   );
	cache_mem #(.DATA_WIDTH(2)) count1(
    .clk(clk), 
    .r_addr(block_), 
    .r_en(cache_ready), 
    .r_data(count1_data), 
    .w_addr(block_), 
    .w_data(count1_wdata), 
    .w_en(count1_w)
   );
	
	//select data word
	wire [31:0]data_w00, data_w01, data_w02, data_w03, data_w10, data_w11, data_w12, data_w13,
				  mem_w0, mem_w1, mem_w2, mem_w3;
	reg [31:0]data_w0, data_w1, mem_word;
	assign {data_w03, data_w02, data_w01, data_w00} = data0_data;
	assign {data_w13, data_w12, data_w11, data_w10} = data1_data;
	assign {mem_w3, mem_w2, mem_w1, mem_w0} = mem_data;
	always @* begin
		case (offset_[3:2])
			2'b11:begin
						data_w0 = data_w03;
						data_w1 = data_w13;
						mem_word = mem_w3;
					end
			2'b10:begin
						data_w0 = data_w02;
						data_w1 = data_w12;
						mem_word = mem_w2;
					end
			2'b01:begin
						data_w0 = data_w01;
						data_w1 = data_w11;
						mem_word = mem_w1;
					end
			2'b00:begin
						data_w0 = data_w00;
						data_w1 = data_w10;
						mem_word = mem_w0;
			      end
		endcase
	end
	
	//cache_hit signal
	reg cache_hit_0, cache_hit_1;
	wire cache_hit;
	always @* begin
		cache_hit_0 = 1'b0;
		cache_hit_1 = 1'b0;
		if (v0_data & (tag0_data == tag_))
			cache_hit_0 = 1'b1;
		if (v1_data & (tag1_data == tag_))
			cache_hit_1 = 1'b1;
	end
	assign cache_hit = cache_hit_0 | cache_hit_1;
	
	//LRU select
	wire select_1;
	assign select_1 = ~v1_data | ((v0_data & v1_data) & (count1_data < count0_data));
	
	//state machine
	wire tag0_wdata_s, tag1_wdata_s;
	wire count0_wdata_s, count1_wdata_s;
	wire state_store;
	I_cache_crl I_cache_crl_(
    .clk(clk), 
    .rst(rst), 
    .op(op_), 
    .cache_hit(cache_hit), 
    .cache_hit_0(cache_hit_0), 
    .addr_12(addr_[12]), 
    .select_1(select_1), 
    .mem_ready(mem_ready_), 
    .cache_tag_w(cache_tag_w), 
    .v0_w(v0_w), 
    .v1_w(v1_w), 
    .v0_wdata(v0_wdata), 
    .v1_wdata(v1_wdata), 
    .tag0_w(tag0_w), 
    .tag1_w(tag1_w), 
    .tag0_wdata_s(tag0_wdata_s), 
    .tag1_wdata_s(tag1_wdata_s), 
    .data0_w(data0_w), 
    .data1_w(data1_w), 
    .count0_w(count0_w), 
    .count1_w(count1_w), 
    .count0_wdata_s(count0_wdata_s), 
    .count1_wdata_s(count1_wdata_s), 
    .mem_r(mem_r), 
    .state_store(state_store),
	 .cache_ready(cache_ready)
    );
	
	//tag write
	assign tag0_wdata = tag0_wdata_s ? Tag_Lo_[19:0] : tag_;
	assign tag1_wdata = tag1_wdata_s ? Tag_Lo_[19:0] : tag_;
	
	//count write
	wire [1:0]count0_nxtdata, count1_nxtdata;
	LUT_countdown count0LUT(
    .cur_count(count0_data), 
    .nxt_count(count0_nxtdata)
    );
	 LUT_countdown count1LUT(
    .cur_count(count1_data), 
    .nxt_count(count1_nxtdata)
    );
	assign count0_wdata = count0_wdata_s ? 2'b11 : count0_nxtdata;
	assign count1_wdata = count1_wdata_s ? 2'b11 : count1_nxtdata;
	
	//output
	assign cache_err = cache_hit_0 & cache_hit_1;
	assign Tag_Hi_in = 32'b0;
	assign Tag_Lo_in = {12'b0, addr_[12]? tag1_data : tag0_data};
	assign cache_data = state_store ? mem_word : (cache_hit_0 ? data_w0 : data_w1);
	assign mem_addr = addr_;
endmodule
