`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:26 12/09/2017 
// Design Name: 
// Module Name:    Exception_handler 
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
module Exception_handler(
	input [2:0]wb_excvec,
	input [31:0]PC,
	input bd,
	input id_eret,//STATUS_EXL
	input [5:0]int_reg,
	
	input [31:0]STATUS_in,
	input [31:0]CAUSE_in,
	input [31:0]EPC_in,
	
	output reg STATUS_EXL,
	output reg [4:0]CAUSE_EXCCODE,
	output reg CAUSE_BD,
	output reg [5:0]CAUSE_HIP,//CAUSE_HIP 与MIPS32标准可能不太一样
	output reg [31:0]EPC_out,
	
	output reg [31:0]exc_addr,
	output exc
    );

//excvec
`define INT 0
`define UNKNOWN 1
`define SYSCALL 2
`define OVERFLOW 3

wire INT_;
assign INT_ = ~(|wb_excvec) & (|(int_reg[15:8] & STATUS_in[15:8])) & ~STATUS_in[1] & ~STATUS_in[2] & STATUS_in[0];
wire [3:0]excvec;
assign excvec = {wb_excvec, INT_};//notice &

//handle EPC
always @* begin
	if (STATUS_in[1] | ~exc)//if EXL is set or no exception
		EPC_out = EPC_in;
	else if (bd)
		EPC_out = PC - 4;
	else
		EPC_out = PC;
end

//handle STATUS
always @* begin
	if (exc)
		STATUS_EXL = 1'b1;
	else if (id_eret)
		STATUS_EXL = 1'b0;
	else
		STATUS_EXL = STATUS_in[1];
end

//handle CAUSE
always @* begin
	if (excvec[`OVERFLOW])
		CAUSE_EXCCODE = 5'h0c;
	else if (excvec[`SYSCALL])
		CAUSE_EXCCODE = 5'h08;
	else if (excvec[`UNKNOWN])
		CAUSE_EXCCODE = 5'h0a;
	else if (excvec[`INT])
		CAUSE_EXCCODE = 5'h00;
	else
		CAUSE_EXCCODE = CAUSE_in[6:2];
end
always @* begin
	if (STATUS_in[1] | ~exc)
		CAUSE_BD = CAUSE_in[31];
	else
		CAUSE_BD = bd;
end
always @* begin
	if (INT_)
		CAUSE_HIP = int_reg;
	else
		CAUSE_HIP = CAUSE_HIP;
end

//handle PC
//exc_addr = (STATUS[BEV]? 0xBFC00200:0x80000000) + CAUSE[IV]? 0x200:0x180;
always @* begin
	if (excvec[`OVERFLOW] | excvec[`SYSCALL] | excvec[`UNKNOWN])
		exc_addr = (STATUS_in[22]? 32'hBFC00380: 32'h80000180);
	else if (excvec[`INT])
		exc_addr = (STATUS_in[22]? 32'hBFC00200: 32'h80000000) + (CAUSE_in[23]? 32'h200:32'h180); 
	else
		exc_addr = (STATUS_in[22]? 32'hBFC00380: 32'h80000180);
end
	 
assign exc = |excvec;
endmodule
