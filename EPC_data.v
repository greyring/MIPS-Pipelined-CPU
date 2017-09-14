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
	output [31:0]EPC_in
    );
	 
reg [31:0]temp;
assign EPC_in = temp;
always @* begin
	if (EXL)
		temp = EPC_out;
	else if (exe_overflow)//overflow优先级最高
		if (mem_bj)
			temp = mem_pc;
		else
			temp = id_pc;
	else if (id_syscall | id_unknown)//然后是syscall与unknown
		temp = if_pc;
	else if (INT)//中断最后
		if (id_bj)
			temp = id_pc;
		else
			temp = if_pc;
	else
		temp = EPC_out;
end
endmodule
