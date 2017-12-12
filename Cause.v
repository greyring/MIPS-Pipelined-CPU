`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:33 09/12/2017 
// Design Name: 
// Module Name:    Cause 
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
module Cause(input clk,
			 input rst,
			 input we,
			 input [31:0]mtcd,
			 input BD_,
			 input [5:0]CAUSE_HIP,
			 input [4:0]ExcCode_,
			 output [31:0]Q
    );
reg BD = 0;
reg IV = 0;//0:0x180 1:0x200
reg [5:0]HIP = 0;//hardware interrupt pending
reg [1:0]SIP = 0;//software interrupt pending
reg [4:0]ExcCode = 0;

//BD
always @(posedge clk or posedge rst) begin
	if (rst) BD <= 0;
	else if (we) BD <= mtcd[31];
	else BD <= BD_;
end

//IV
always @(posedge clk or posedge rst) begin
	if (rst) IV <= 0;
	else if (we) IV <= mtcd[23];
	else IV <= IV;
end

//HIP
always @(posedge clk or posedge rst) begin
	if (rst) HIP <= 0;
	else HIP <= CAUSE_HIP;
end

//SIP
always @(posedge clk or posedge rst) begin
	if (rst) SIP <= 0;
	else if (we) SIP <= mtcd[9:8];
	else SIP <= SIP;
end

//ExcCode
always @(posedge clk or posedge rst) begin
	if (rst) ExcCode <= 0;
	else if (we) ExcCode <= mtcd[6:2];
	else ExcCode <= ExcCode_;
end

assign Q = {BD, 7'b0, IV, 7'b0, HIP, SIP, 1'b0, ExcCode, 2'b0};

endmodule
