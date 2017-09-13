`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:02 09/13/2017 
// Design Name: 
// Module Name:    MUL_ID_EXE 
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
module MUL_ID_EXE(
	input clk,
	input rst,
	input EN,
	input MUL_ID_sign,
	input [31:0]MUL_ID_A,
	input [31:0]MUL_ID_B,
	input [1:0]MUL_ID_HiLo,
	input MUL_ID_we,
	input MUL_ID_en_c,
	input MUL_ID_add_sub,
	input [31:0]MUL_ID_data,
	input MUL_ID_mul,
	
	output MUL_EXE_sign,
	output [31:0]MUL_EXE_A,
	output [31:0]MUL_EXE_B,
	output [1:0]MUL_EXE_HiLo,
	output MUL_EXE_we,
	output MUL_EXE_en_c,
	output MUL_EXE_add_sub,
	output [31:0]MUL_EXE_data,
	output MUL_EXE_mul
    );

reg [102:0]temp = 103'b0;	 
always @(posedge clk) begin
	if (rst)
		temp <= 103'b0;
	else if (EN)
		temp <= {MUL_ID_sign, MUL_ID_A, MUL_ID_B, MUL_ID_HiLo, MUL_ID_we
					, MUL_ID_en_c, MUL_ID_add_sub, MUL_ID_data, MUL_ID_mul};
	else
		temp <= temp;
end

assign {MUL_EXE_sign, MUL_EXE_A, MUL_EXE_B, MUL_EXE_HiLo, MUL_EXE_we,
				MUL_EXE_en_c, MUL_EXE_add_sub, MUL_EXE_data, MUL_EXE_mul} = temp;


endmodule
