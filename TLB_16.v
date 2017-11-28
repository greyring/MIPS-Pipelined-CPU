`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:12:04 11/22/2017 
// Design Name: 
// Module Name:    TLB_16 
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
module TLB_16(
	input clk,
	input rst,
	
	input [31:0]Vaddr,
	output[31:0]Paddr,
	output tlb_hit,
	
	input we,
	input rd,
	input [31:0]index,//index, random, given
	input [31:0]Entry_Hi,
	input [31:0]Entry_Lo0,
	input [31:0]Entry_Lo1,
	
	output w_index,
	output w_content,
	output [31:0]index_out,
	output [31:0]Entry_Hi_out,
	output [31:0]Entry_Lo0_out,
	output [31:0]Entry_Lo1_out
    );


endmodule
