`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:56 09/11/2017 
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
	input [31:0]addr,
	input [2:0]mode,//[2]1signed 0 unsigned [1:0]00 word 01 halfword 10 byte 11double word
	input we,
	input [31:0]data_in,
	output [63:0]data_out
    );
//4kb cache,Ö±Á¬


endmodule
