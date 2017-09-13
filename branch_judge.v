`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:56 09/05/2017 
// Design Name: 
// Module Name:    branch_judge 
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
module branch_judge(
	input [31:0]rega,
	input [31:0]regb,
	output equl
    );
assign equl = rega == regb;


endmodule
