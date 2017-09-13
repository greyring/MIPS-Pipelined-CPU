`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:15 09/13/2017 
// Design Name: 
// Module Name:    Reg_HiLo 
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
module Reg_HiLo(
	input clk,
	input rst,
	input we,
	input [63:0]cal_res,
	input [31:0]data_in,
	input [1:0]HiLo,
	output [63:0]Hi_Lo
    );

reg [31:0]Hi = 32'b0;
reg [31:0]Lo = 32'b0;
always @(posedge clk) begin
	if (rst) begin
		Hi <= 32'b0;
		Lo <= 32'b0;
	end
	else if (we) begin//写入，有可能是计算结果写入，或者是信息载入
		if (HiLo == 2'b11) begin//计算结果写入mult multu madd maddu
			Hi <= cal_res[63:32];
			Lo <= cal_res[31:0];
		end
		else if (HiLo == 2'b10) begin//mtHi
			Hi <= data_in;
			Lo <= Lo;
		end
		else if (HiLo == 2'b01) begin//mtLo
			Hi <= Hi;
			Lo <= data_in;
		end
		else begin
			Hi <= Hi;
			Lo <= Lo;
		end
	end
	else begin
		Hi <= Hi;
		Lo <= Lo;
	end
end

assign Hi_Lo = {Hi, Lo};

endmodule
