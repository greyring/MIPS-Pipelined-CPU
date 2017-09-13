`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:33 09/12/2017 
// Design Name: 
// Module Name:    Exp_Addr 
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
module Exp_Addr(
	input INT,
	input id_syscall,
	input id_unknown,
	input exe_overflow,
	input BEV,
	input CAUSE_IV,
	output reg [31:0]exp_addr
    );

always @* begin
	if (INT)
		exp_addr = (BEV? 32'hBFC00200: 32'h80000000) + (CAUSE_IV? 32'h200:32'h180);
	else if (id_syscall | id_unknown | exe_overflow)
		exp_addr = (BEV? 32'hBFC00380: 32'h80000180);
	else
		exp_addr = (BEV? 32'hBFC00380: 32'h80000180);
end


endmodule
