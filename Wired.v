`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:16 12/12/2017 
// Design Name: 
// Module Name:    Wired 
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
module Wired(
	input clk,
	input rst,
	input we,
	input [31:0]mtcd,
	output [31:0]Q
    );
reg [3:0]WIRED = 0;
always @(posedge clk or posedge rst) begin
	if (rst) WIRED <= 0;
	else if (we) WIRED <= mtcd[3:0];
	else WIRED <= WIRED;
end

assign Q = WIRED;
endmodule
