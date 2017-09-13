`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:25 09/11/2017 
// Design Name: 
// Module Name:    EPC_data 
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
module EPC_data(
	input EXL,
	input id_bj,
	input mem_bj,
	input INT,
	input id_syscall,
	input id_unknown,
	input exe_overflow,
	input [31:0]id_pc,
	input [31:0]if_pc,
	input [31:0]mem_pc,
	input [31:0]EPC_out,
	output reg [31:0]EPC_in
    );

always @* begin
	if (EXL)
		EPC_in = EPC_out;
	else if (INT)
		if (id_bj)
			EPC_in = id_pc;
		else
			EPC_in = if_pc;
	else if (id_syscall | id_unknown)
		EPC_in = if_pc;
	else if (exe_overflow)
		if (mem_bj)
			EPC_in = mem_pc;
		else
			EPC_in = id_pc;
	else
		EPC_in = EPC_out;
end
endmodule
