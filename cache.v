`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:09:32 11/20/2017 
// Design Name: 
// Module Name:    cache 
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
module cache(
	input clk,
	input rst,
	
	input [2:0]choose,
	input [6:0]op,
	input [31:0]op_addr,
	input [31:0]Tag_Hi,
	input [31:0]Tag_Lo,
	output reg [31:0]Tag_wHi,
	output reg [31:0]Tag_wLo,
	output Tag_w,
	
	input [31:0]i_addr,
	output[31:0]i_data,
	
	input d_r,
	input d_w,
	input [3:0]d_wmask,
	input [31:0]d_addr,
	output[31:0]d_rdata,
	input [31:0]d_wdata,
	
	output cache_err,
	output ready,
	
	output mem_r,
	output mem_w,
	output [31:0]mem_addr,
	output [31:0]mem_wdata,
	input  [31:0]mem_rdata,
	input mem_ready
    );

wire icache_ready, icache_err, dcache_ready, dcache_err, L2_ready,
		L2_I_ready, I_L2_r, L2_D_ready, D_L2_r, D_L2_w,
		buf_L2_ready, L2_buf_r, L2_buf_w, L2_buf_ready;
wire [127:0]L2_data, D_L2_data, L2_buf_data, buf_L2_data;
wire [31:0]I_L2_addr, D_L2_addr, L2_buf_addr;
wire [31:0]I_tag_wLo, I_tag_wHi, D_tag_wLo, D_tag_wHi, L2_tag_wLo, L2_tag_wHi;
wire I_tag_w, D_tag_w, L2_tag_w;

wire [31:0]I_addr, D_addr;

assign I_addr = choose[0]? op_addr : i_addr;
I_cache I_cache_(
    .clk(clk), 
    .rst(rst), 
    .addr(I_addr), 
    .cache_r(~rst & ~choose[0]), 
    .cache_data(i_data), 
    .cache_ready(icache_ready), 
    .cache_err(icache_err), 
    .mem_ready(L2_I_ready), 
    .mem_data(L2_data), 
    .mem_addr(I_L2_addr), 
    .mem_r(I_L2_r), 
    .op(op & {7{choose[0]}}), 
    .Tag_Lo(Tag_Lo), 
    .Tag_Hi(Tag_Hi), 
    .Tag_Lo_in(I_tag_wLo), 
    .Tag_Hi_in(I_tag_wHi), 
    .cache_tag_w(I_tag_w)
    );

assign D_addr = choose[1] ? op_addr : d_addr;
D_cache D_cache_(
    .clk(clk), 
    .rst(rst), 
    .addr(D_addr), 
    .cache_r(d_r), 
    .cache_w(d_w), 
    .cache_data_in(d_wdata), 
    .wmask(d_wmask), 
    .cache_data(d_rdata), 
    .cache_ready(dcache_ready), 
    .cache_err(dcache_err), 
    .mem_ready(L2_D_ready), 
    .mem_data(L2_data), 
    .mem_addr(D_L2_addr), 
    .mem_data_out(D_L2_data), 
    .mem_r(D_L2_r), 
    .mem_w(D_L2_w), 
    .op(op & {6{choose[1]}}), 
    .Tag_Lo(Tag_Lo), 
    .Tag_Hi(Tag_Hi), 
    .Tag_Lo_in(D_tag_wLo), 
    .Tag_Hi_in(D_tag_wHi), 
    .cache_tag_w(D_tag_w)
    );

// Instantiate the module
L2_cache L2_cache_(
    .clk(clk), 
    .rst(rst), 
    .dcache_r(D_L2_r), 
    .dcache_w(D_L2_w), 
    .dcache_addr(D_L2_addr), 
    .dcache_data_in(D_L2_data), 
    .cache_ready_d(L2_D_ready), 
	 
    .icache_r(I_L2_r), 
    .icache_addr(I_L2_addr), 
    .cache_ready_i(L2_I_ready),
	 
    .op(op & {6{choose[2]}}), 
    .op_index(op_addr), 
    .cache_ready_op(L2_ready), 
	 
    .mem_ready(buf_L2_ready), 
    .mem_data(buf_L2_data), 
    .mem_addr(L2_buf_addr), 
    .mem_data_out(L2_buf_data), 
    .mem_r(L2_buf_r), 
    .mem_w(L2_buf_w), 
	 
    .cache_data(L2_data), 
    .Tag_Lo(Tag_Lo), 
    .Tag_Hi(Tag_Hi), 
    .Tag_Lo_in(L2_tag_wLo), 
    .Tag_Hi_in(L2_tag_wHi), 
    .cache_tag_w(L2_tag_w)
    );

mem_buffer Mem_buf(
    .clk(clk), 
    .rst(rst), 
    .mem_r(L2_buf_r), 
    .mem_w(L2_buf_w), 
    .mem_addr(L2_buf_addr), 
    .mem_wdata(L2_buf_data), 
    .mem_rdata(buf_L2_data), 
    .bus_r(mem_r), 
    .bus_w(mem_w), 
    .bus_addr(mem_addr), 
    .bus_rdata(mem_rdata), 
    .bus_wdata(mem_wdata), 
    .bus_ready(mem_ready), 
    .ready(buf_L2_ready)
    );

assign Tag_w = I_tag_w | D_tag_w | L2_tag_w;
always @* begin
	{Tag_wHi, Tag_wLo} = 0;
	if (choose[0])
		{Tag_wHi, Tag_wLo} = {I_tag_wHi, I_tag_wLo};
	else if (choose[1])
		{Tag_wHi, Tag_wLo} = {D_tag_wHi, D_tag_wLo};
	else if (choose[2])
		{Tag_wHi, Tag_wLo} = {L2_tag_wHi, L2_tag_wLo};
end

assign cache_err = icache_err | dcache_err;
assign ready = icache_ready & dcache_ready & L2_ready;

endmodule
