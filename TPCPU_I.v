`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:33:48 09/12/2017
// Design Name:   PCPU_v
// Module Name:   F:/MyProgramme/0/PCPU/TPCPU_I.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCPU_v
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TPCPU_I;

	// Inputs
	reg clk;
	reg [31:0] inst_data;
	reg [31:0] mem_data_in;
	reg rst;
	reg [5:0] int_;

	// Outputs
	wire [31:0] inst_addr;
	wire [31:0] mem_addr;
	wire [31:0] mem_data;
	wire mem_we;

	// Instantiate the Unit Under Test (UUT)
	PCPU_v uut (
		.clk(clk), 
		.inst_data(inst_data), 
		.mem_data_in(mem_data_in), 
		.rst(rst), 
		.int_(int_), 
		.inst_addr(inst_addr), 
		.mem_addr(mem_addr), 
		.mem_data(mem_data), 
		.mem_we(mem_we)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		inst_data = 0;
		mem_data_in = 0;
		rst = 1;
		int_ = 0;

		// Wait 100 ns for global reset to finish
		#20;
		rst = 0;
		#10
		inst_data = 32'h00000020;//add $0, $0, $0
		#10
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h3c018000;//lui $1, 0x8000;
		
		/*#10
		inst_data = 32'h0000000c;//syscall
		#10
		inst_data = 32'h00000020;//被取消的
		#10
		inst_data = 32'h70000002;//mul $0, $0, $0 ri
		#10
		inst_data = 32'h00211020;//add $2, $1, $1 overflow
		*/
		/*
		#10
		inst_data = 32'h08000000;//jump
		#10
		inst_data = 32'h00211020;//add $2, $1, $1 overflow
		#10
		inst_data = 32'h00000020;//被取消的
		#10
		inst_data = 32'h00000020;//被取消的
		*/
		
		/*
		#10
		inst_data = 32'h00000020;//被取消的
		#1
		int_ = 6'b000001;
		#9
		inst_data = 32'h00000020;
		//interrupt 单独测，一个interrupt后不会再有interrupt
		*/
		
		/*
		#10
		inst_data = 32'h08000000;//jump
		#1
		int_ = 6'b000001;
		#9
		inst_data = 32'h00000020;//被取消的
		#10
		inst_data = 32'b01000000000000110110000000000000;//mfc0 $3, $12
		#10
		int_ = 6'b0;
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h00000020;
		#10
		inst_data = 32'h3063ff02; //andi $3, $3, 0xff02
		#10
		inst_data = 32'b01000000100000110110000000000000;//mtc0 $3, $12
		#10
		//inst_data = 32'b0;
		//#10//CP0 harzards//要测试有一个延时和两个延时的forward
		inst_data = 32'b01000010000000000000000000011000;//eret
		*/
		#10
		inst_data = 32'b01000000000000110110000000000000;//mfc0 $3, $12
		#10
		inst_data = 32'h3463ffff;//ori $3, $3, $3//stall
		
		#10
		inst_data = 32'h0;
      
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

