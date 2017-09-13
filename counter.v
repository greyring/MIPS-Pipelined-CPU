`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:16 09/05/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(
	input clk,
	input rst,
	input clk0,
	input clk1,
	input clk2,
	input counter_we,
	input [31:0] counter_val,
	input [1:0] counter_ch,				//Counter channel set

	output counter0_OUT,
	output counter1_OUT,
	output counter2_OUT,
	output [31:0] counter_out
    );


endmodule
