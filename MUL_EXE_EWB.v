`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:17 09/13/2017 
// Design Name: 
// Module Name:    MUL_EXE_EWB 
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
module MUL_EXE_EWB(
	input clk,
	input EN,
	input rst,
	input [63:0]MUL_EXE_A_t,
	input [63:0]MUL_EXE_B_t,
	//input [31:0]MUL_EXE_data,
	input MUL_EXE_en_c,
	input MUL_EXE_add_sub,
	input [1:0]MUL_EXE_HiLo,
	input MUL_EXE_we,
	input MUL_EXE_mul,
	
	output [63:0]MUL_EWB_A_t,
	output [63:0]MUL_EWB_B_t,
	//output [31:0]MUL_EWB_data,
	output MUL_EWB_en_c,
	output MUL_EWB_add_sub,
	output [1:0]MUL_EWB_HiLo,
	output MUL_EWB_we,
	output MUL_EWB_mul
    );

reg [133:0]temp = 0;
always @(posedge clk) begin
	if (rst)
		temp <= 166'b0;
	else if (EN)
		temp <= {MUL_EXE_A_t, MUL_EXE_B_t, MUL_EXE_en_c, MUL_EXE_add_sub, MUL_EXE_HiLo,
					MUL_EXE_we, MUL_EXE_mul};
	else
		temp <= temp;
end

assign {MUL_EWB_A_t, MUL_EWB_B_t, MUL_EWB_en_c, MUL_EWB_add_sub, MUL_EWB_HiLo,
					MUL_EWB_we, MUL_EWB_mul} = temp;

endmodule
