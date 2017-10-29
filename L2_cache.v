`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:53 10/29/2017 
// Design Name: 
// Module Name:    L2_cache 
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
module L2_cache(
	input clk,
	input rst,
	input [31:0]addr,//indexmode = way, block, offset; addrmode = tag, block, offset
						  //不能同时读取以及执行指令
	input dcache_r,
	input dcache_w,
	input [31:0]dcache_addr,
	input [127:0]dcache_data_in,
	output cache_ready_d,
	
	input icache_r,
	input [31:0]icache_addr,
	output cache_ready_i,
	
	output [127:0]cache_data,
	output cache_err,
	
	input  mem_ready,
	input  [31:0]mem_data,
	output [31:0]mem_addr,
	output [31:0]mem_data_out,
	output mem_r,
	output mem_w,
	
	input [6:0]op,//one hot only index store tag and index load tag
	input [31:0]Tag_Lo,
	input [31:0]Tag_Hi,
	output [31:0]Tag_Lo_in,
	output [31:0]Tag_Hi_in,
	output cache_tag_w
    );
			


endmodule
