`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:12 09/12/2017 
// Design Name: 
// Module Name:    Status 
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
module Status(input clk,
			 input rst,
			 input we,
			 
			 input [31:0]mtcd,
			 input EXL_,
			 output [31:0]Q
    );

reg BEV = 0;//0 normal 1 boot
reg [7:0] IM = 8'hff;
reg ERL = 0;
reg EXL = 0;
reg IE = 1;

//BEV
always @(posedge clk) begin
	if (rst) BEV <= 1'b0;
	else if (we) BEV <= mtcd[22];
	else BEV <= BEV;
end

//IM
always @(posedge clk) begin
	if (rst) IM <= 8'hff;
	else if (we) IM <= mtcd[15:8];
	else IM <= IM;
end

//ERL
always @(posedge clk) begin
	if (rst) ERL <= 0;
	else if (we) ERL <= mtcd[2];
	else ERL <= ERL;
end

//EXL
always @(posedge clk) begin
	if (rst) EXL <= 0;
	else if (we) EXL <= mtcd[1];
	else EXL <= EXL_;
end

//IE
always @(posedge clk) begin
	if (rst) IE <= 1'b1;
	else if (we) IE <= mtcd[0];
	else IE <= IE;
end

assign Q = {9'b0, BEV, 6'b0, IM, 5'b0, ERL, EXL, IE};

endmodule
