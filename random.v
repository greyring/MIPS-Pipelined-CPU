`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:36 12/12/2017 
// Design Name: 
// Module Name:    Random 
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
module Random(
	input clk,
	input rst,
	input [31:0]Wired,
	input Wired_we,
	output [31:0]Q
    );
reg [3:0]RANDOM = 4'b1111;
always @(posedge clk) begin
	if (rst) RANDOM <= 4'b1111;
	else if (Wired_we) RANDOM<= 4'b1111;
	else if (RANDOM == Wired) RANDOM <= 4'b1111;
	else RANDOM <= RANDOM-4'b1;
end
assign Q = {28'b0, RANDOM};
endmodule
