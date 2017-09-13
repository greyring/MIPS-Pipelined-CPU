// Verilog test fixture created from schematic F:\MyProgramme\0\PCPU\PCPU.sch - Tue Sep 05 11:16:54 2017

`timescale 1ns / 1ps

module PCPU_PCPU_sch_tb();

// Inputs
   reg clk;
   reg rst;
   reg [31:0] inst_data;
   reg [31:0] mem_data_in;
	reg MIO_ready;

// Output
   wire mem_we;
   wire [31:0] mem_addr;
   wire [31:0] mem_data;
   wire [31:0] inst_addr;

// Bidirs

// Instantiate the UUT
   PCPU UUT (
		.clk(clk), 
		.rst(rst), 
		.MIO_ready(MIO_ready),
		.mem_we(mem_we), 
		.mem_addr(mem_addr), 
		.mem_data(mem_data), 
		.inst_addr(inst_addr), 
		.inst_data(inst_data), 
		.mem_data_in(mem_data_in)
   );
// Initialize Inputs
   initial begin
		clk = 1;
		rst = 1;
		MIO_ready = 1;
		inst_data = 0;
		mem_data_in = 0;
		#190
		rst = 0;
		#10
		/*inst_data = 32'b00000000000000000000100000100111;//nor $1, $0, $0;
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00000000001000010001000000100000;//add $2, $1, $1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00000000000000100001100011000010;//srl $3, $2, 3
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00000000001000000010000000101010;//slt $4, $1, $0;
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b10101100000001001111111111111100;//sw $4, $0(-4)
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b10001100000001010000000000000100;//lw $5, $0(4)
		#100
		inst_data = 32'b0;
		#100
		mem_data_in = 32'h5a5a5a5a;
		#101
		mem_data_in = 32'b0;
		#99
		inst_data = 32'b00100000000001100000000000000001;//addi $6, $0, 1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00111100000001111111111111111111;//lui $7, 0xffff
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00101000111010001111111111111111;//slti $8, $7, 0xffff = 1
		#100
		inst_data = 32'b0;*/
		/*inst_data = 32'b00100000000001100000000000000001;//addi $6, $0, 1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00010000000000010000000000000010;//beq $0, $1, 2
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00010000000001100000000000000010;//beq $0, $6, 2
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00010100110000001111111111111111;//bne $6, $0, -1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00010100000000011111111111111111;//bne $0, $1, -1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00001000000000000000000000000001;//j 1
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00001100000000000000000000000100;//jal 4
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00000000000000000000000000001000;//jr $0
		#100
		inst_data = 32'b0;
		#300
		inst_data = 32'b00000000000000000000000000001001;//jalr $0
		#100
		inst_data = 32'b0;
		*/
		/*//没有forword的流水线测试
		inst_data = 32'b00000000000000000000100000100111;//nor $1, $0, $0
		#100
		inst_data = 32'b00100000000000100000000000000001;//addi $2, $0, 1
		#100
		inst_data = 32'b00100000000000110000000000000010;//addi $3, $0, 2
		#100
		inst_data = 32'b00100000000001000000000000000011;//addi $4, $0, 3
		#100
		inst_data = 32'b00100000000001010000000000000100;//addi $5, $0, 4
		#100
		inst_data = 32'b0;
		*/
		/*//forward测试
		inst_data = 32'b00000000000000000000100000100111;//nor $1, $0, $0 = $1 = ffffffff
		#100
		inst_data = 32'b00100000001000100000000000000001;//addi $2, $1, 1 = $2 = 00000000 出错为1
		#100
		inst_data = 32'b00100000001000110000000000000010;//addi $3, $1, 2 = $3 = 00000001 出错为2
		#100
		inst_data = 32'b00100000001001000000000000000011;//addi $4, $1, 3 = $4 = 00000002 出错为3
		#100
		inst_data = 32'b00000000010000110010100000100000;//add $5, $2, $3 = $5 = 00000001 出错为0
		//#100
		//inst_data = 32'b00010000011001010000000000000100;//beq $3, $5, 4  跳转（此条测试时这之后的测试没有用了)
		#100
		inst_data = 32'b00000000100001010011000000100000;//add $6, $4, $5 = $6 = 00000003 出错为0
		#100
		inst_data = 32'b00100000110001100000000000000001;//addi $6, $6, 1 = $6 = 00000004 出错为1
		#100
		inst_data = 32'b00100000110001100000000000000001;//addi $6, $6, 1 = $6 = 00000005 出错为1或2
		#100
		inst_data = 32'b0;
		*/
		/*//stall 测试
		inst_data = 32'b10001100000000010000000000000100;//lw $1, $0(4) = $1 = 1
		#100
		inst_data = 32'b00100000001000010000000000000001;//addi $1, $1, 1 = $1 = 2
		#100
		inst_data = 32'b00100000001000010000000000000001;//addi $1, $1, 1(stall)
		mem_data_in = 32'b1;
		
		#100
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4) = mem_data = 2
		
		#1
		mem_data_in = 32'b0;
		#99
		inst_data = 32'b10001100000000010000000000000100;//lw $1, $0(4) = $1 = a5a5a5a5
		#100
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4) = mem_data = a5a5a5a5
		#100
		inst_data = 32'b10101100000000011111111111111100;//sw $1, $0(-4)(stall)
		mem_data_in = 32'ha5a5a5a5;
		#100
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
		#100
		inst_data = 32'b0;
		
		
	end
	always @*
		#50
		clk <= ~clk;
endmodule
