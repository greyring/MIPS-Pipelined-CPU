`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:43 12/12/2017 
// Design Name: 
// Module Name:    Index 
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
module Index(
	input clk,
	input rst,
	input we,
	input [31:0]mtcd,
	
	input p,
	input [3:0]index,
	output [31:0]Q
    );
reg P = 0;
reg [3:0]INDEX = 0;

always @(posedge clk or posedge rst) begin
	if (rst) P <= 0;
	else if (we) P <= mtcd[31];
	else P <= p;
end

always @(posedge clk or posedge rst) begin
	if (rst) INDEX <= 0;
	else if (we) INDEX <= mtcd[3:0];
	else INDEX <= index;
end

assign Q = {P, 27'b0, INDEX};
endmodule
