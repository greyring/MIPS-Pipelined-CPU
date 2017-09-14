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
		/*//forward测试
		inst_data = 32'b00000000000000000000100000100111;//nor $1, $0, $0 = $1 = ffffffff
		#10
		inst_data = 32'b00100000001000100000000000000001;//addi $2, $1, 1 = $2 = 00000000 出错为1
		#10
		inst_data = 32'b00100000001000110000000000000010;//addi $3, $1, 2 = $3 = 00000001 出错为2
		#10
		inst_data = 32'b00100000001001000000000000000011;//addi $4, $1, 3 = $4 = 00000002 出错为3
		#10
		inst_data = 32'b00000000010000110010100000100000;//add $5, $2, $3 = $5 = 00000001 出错为0
		#10
		inst_data = 32'b00010000011001010000000000000100;//beq $3, $5, 4  跳转（此条测试时这之后的测试没有用了)
		#10
		inst_data = 32'b00000000100001010011000000100000;//add $6, $4, $5 = $6 = 00000003 出错为0
		#10
		inst_data = 32'b00100000110001100000000000000001;//addi $6, $6, 1 = $6 = 00000004 出错为1
		#10
		inst_data = 32'b00100000110001100000000000000001;//addi $6, $6, 1 = $6 = 00000005 出错为1或2
		#10
		inst_data = 32'b0;
		*/
		
		/*//stall 测试
		inst_data = 32'b10001100000000010000000000000100;//lw $1, $0(4) = $1 = 1
		#10
		inst_data = 32'b00100000001000010000000000000001;//addi $1, $1, 1 = $1 = 2
		#10
		inst_data = 32'b00100000001000010000000000000001;//addi $1, $1, 1(stall)
		mem_data_in = 32'b1;
		
		#10
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4) = mem_data = 2
		
		#1
		mem_data_in = 32'b0;
		#9
		inst_data = 32'b10001100000000010000000000000100;//lw $1, $0(4) = $1 = a5a5a5a5
		#10
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4) = mem_data = a5a5a5a5
		#10
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4)(stall)
		mem_data_in = 32'ha5a5a5a5;
		#10
		inst_data = 32'b0;
		#1
		mem_data_in = 32'b0;
		*/
		/*
		inst_data = 32'b10001100000000010000000000000100;//lw $1, $0(4) = $1 = 1
		#100
		inst_data = 32'b00000000001000010000100000100000;//add $1,$1,$1 = $1 = 2
		#100
		//stall
		#100
		inst_data = 32'b00000000001000010000100000100000;//add $1,$1,$1 = $1 = 4
		mem_data_in = 32'h1;
		#100
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4)(stall)
		#1
		mem_data_in = 32'h0;
		#99
		inst_data = 32'b0;
		*/
		/*inst_data = 32'b00010101010010100000000000000011;//bne $10, $10, 3;
		#100
		inst_data = 32'b0;
		#100
		inst_data = 32'b00000000000000000101000000100111;//nor $10, $0, $0;
		#100
		inst_data = 32'b00000001010010100101000000100000;//add $10,$10,$10 = $10 = fffffffe
		#100
		inst_data = 32'b10101100000010101111111111111100;//sw $10, $0(-4)
		#100
		inst_data = 32'b0;
		*/
		/*
		inst_data = 32'b00100000000010110000000000001000;//addi $11, $0, 8
		#100
		inst_data = 32'b0;
		#100
		inst_data = 32'h1160009;//beq $t3, $s2, L01
		#100
		inst_data = 32'b0;
		#100
		inst_data = 32'b00100000000100100000000000001000;//addi $18, $0, 8
		#100
		inst_data = 32'b00010001011100100000000000001110;//beq $11, $18, E
		*/
		
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
		
		/*
		#10
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
		inst_data = 32'b0;
		#10//CP0 harzards//要测试有一个延时和两个延时的forward
		#10
		inst_data = 32'b01000010000000000000000000011000;//eret
		
		#10
		inst_data = 32'b01000000000000110110000000000000;//mfc0 $3, $12
		#10
		inst_data = 32'h3463ffff;//ori $3, $3, 0xffff
		#10
		inst_data = 32'h3463ffff;//ori $3, $3, 0xffff//stall
		*/
		
		#10//stall时中断
		inst_data = 32'h8c010000;//lw $t1, 0($zero)
		#1
		int_ = 6'b000001;
		inst_data = 32'h00210820;//add $t1, $t1, $t1; 
		#9
		
		#10
		inst_data = 32'h0;
      
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

