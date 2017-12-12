`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:30 12/12/2017 
// Design Name: 
// Module Name:    EntryLo 
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
module EntryLo(
	input clk,
	input rst,
	input we,
	input [31:0]mtcd,
	input [19:0]pfn,
	input [2:0]dvg,
	output [31:0]Q
    );
reg [19:0]PFN = 0;
reg [2:0]DVG = 0;
always @(posedge clk or posedge rst) begin
	if (rst) PFN <= 0;
	else if (we) PFN <= mtcd[25:6];
	else PFN <= pfn;
end

always @(posedge clk or posedge rst) begin
	if (rst) DVG <= 0;
	else if (we) DVG <= mtcd[2:0];
	else DVG <= dvg;
end

assign Q = {6'b0, PFN, 3'b0, DVG};
endmodule
