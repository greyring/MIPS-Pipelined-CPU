`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:09 09/05/2017 
// Design Name: 
// Module Name:    control 
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
module control(
	input [31:0]inst,
   
	output [2:0]id_bcond,
	output id_j,
	output id_jr,
	
	output [1:0]id_rega_addr,
	output [1:0]id_regb_addr,
	
	output id_exe_sign,
	output id_exe_imm,
	output [3:0]id_exe_aluop,
	output id_exe_res_sign,//help to judgeoverflow
	output id_exe_lui,
	output id_exe_jal,
	
	output [1:0]id_mem_ctrl,
	output [1:0]id_mem_op,
	output id_mem_CP0_we,
	output [2:0]id_mem_mem_reg,
	
	output id_wb_we,
	output [1:0]id_wb_dreg,//dest register
	
	output reg id_tlbr,
	output reg id_tlbwi,
	output reg id_tlbwr,
	output reg id_tlbp,
	
	output id_syscall,
	output id_unknown,
	output id_eret
    );
/*
//for id_bcond
parameter NO = 3'b000;
parameter EQ = 3'b001;
parameter NEQ= 3'b010;
parameter GE = 3'b011;
parameter LE = 3'b100;

//for id_wb_dreg, id_rega_addr, id_regb_addr
parameter NO = 2'b00;
parameter RS = 2'b01;
parameter RA = 2'b01;//for id_wb_dreg
parameter RT = 2'b10;
parameter RD = 2'b11;

//for id_mem_ctrl
parameter NO = 2'b00;
parameter BT = 2'b01;
parameter HW = 2'b10;
parameter W  = 2'b11;

//for id_mem_op
parameter NO = 2'b00;
parameter WE = 2'b01;
parameter RD = 2'b10;
parameter RU = 2'b11;//read unsigned

//for id_mem_mem_reg
parameter MEM = 3'b000;
parameter ALU = 3'b001;
parameter CP0 = 3'b010;
parameter MUL = 3'b011;
//for id_exe_aluop
parameter AND = 4'b0000;
parameter OR  = 4'b0001;
parameter ADD = 4'b0010;
parameter XOR = 4'b0011;
parameter NOR = 4'b0100;
parameter SRL = 4'b0101;
parameter SUB = 4'b0110;
parameter SLT = 4'b0111;
parameter SLL = 4'b1000;
SRA 1001
SLTU 1010
*/

integer i;
wire [5:0]op, fun;
wire [4:0]rs, rt, rd, shift;
reg [31:0]LUT_fun[63:0], LUT_op[63:0], LUT_1c[63:0];
reg [31:0]op_10, op_01;
wire [31:0]op_0, op_1c, op_other, bus;

assign {op, rs, rt, rd, shift, fun} = inst;
initial begin
	for (i = 0; i<64; i=i+1)
		 LUT_fun[i] = 32'b00000_0000_000000000_00000000_000_010;//unknown
	LUT_fun[6'h00] = 32'b00000_1000_011000000_00000001_111_000;//sll
	LUT_fun[6'h02] = 32'b00000_1000_010101000_00000001_111_000;//srl
	LUT_fun[6'h03] = 32'b00000_1000_011001000_00000001_111_000;//sra
	LUT_fun[6'h04] = 32'b00000_1001_001000000_00000001_111_000;//sllv untest
	LUT_fun[6'h06] = 32'b00000_1001_000101000_00000001_111_000;//srlv untest
	LUT_fun[6'h07] = 32'b00000_1001_001001000_00000001_111_000;//srav untest
	LUT_fun[6'h08] = 32'b00001_0100_000000000_00000000_000_000;//jr
	LUT_fun[6'h09] = 32'b00001_0100_000000001_00000001_111_000;//jalr
	LUT_fun[6'h0c] = 32'b00000_0000_000000000_00000000_000_100;//syscall
	LUT_fun[6'h10] = 32'b00000_0000_000000000_00000011_111_000;//mfhi
	LUT_fun[6'h11] = 32'b00000_0001_000000000_00000000_000_000;//mthi
	LUT_fun[6'h12] = 32'b00000_0000_000000000_00000011_111_000;//mflo
	LUT_fun[6'h13] = 32'b00000_0001_000000000_00000000_000_000;//mtlo
	LUT_fun[6'h18] = 32'b00000_0110_000000000_00000000_000_000;//mult
	LUT_fun[6'h19] = 32'b00000_0110_000000000_00000000_000_000;//multu
	//6'h1a:_div = 1'b1;
	//6'h1b:_divu = 1'b1;
	LUT_fun[6'h20] = 32'b00000_0110_000010100_00000001_111_000;//add
	LUT_fun[6'h21] = 32'b00000_0110_000010000_00000001_111_000;//addu
	LUT_fun[6'h22] = 32'b00000_0110_000110100_00000001_111_000;//sub
	LUT_fun[6'h23] = 32'b00000_0110_000110000_00000001_111_000;//subu
	LUT_fun[6'h24] = 32'b00000_0110_000000000_00000001_111_000;//and
	LUT_fun[6'h25] = 32'b00000_0110_000001000_00000001_111_000;//or
	LUT_fun[6'h26] = 32'b00000_0110_000011000_00000001_111_000;//xor
	LUT_fun[6'h27] = 32'b00000_0110_000100000_00000001_111_000;//nor
	LUT_fun[6'h2a] = 32'b00000_0110_000111000_00000001_111_000;//slt
	LUT_fun[6'h2b] = 32'b00000_0110_001010000_00000001_111_000;//sltu
end
initial begin
	for (i = 0; i<64; i= i+1)
		 LUT_op[i] = 32'b00000_0000_000000000_00000000_000_010;//unknown
	LUT_op[6'h02] = 32'b00010_0000_000000000_00000000_000_000;//j
	LUT_op[6'h03] = 32'b00010_0000_000000001_00000001_101_000;//jal
	LUT_op[6'h04] = 32'b00100_0110_000000000_00000000_000_000;//beq
	LUT_op[6'h05] = 32'b01000_0110_000000000_00000000_000_000;//bne
	LUT_op[6'h06] = 32'b01100_0100_000000000_00000000_000_000;//blez
	LUT_op[6'h07] = 32'b10000_0100_000000000_00000000_000_000;//bgtz
	LUT_op[6'h08] = 32'b00000_0100_110010100_00000001_110_000;//addi
	LUT_op[6'h09] = 32'b00000_0100_110010000_00000001_110_000;//addiu
	LUT_op[6'h0a] = 32'b00000_0100_110111000_00000001_110_000;//slti
	LUT_op[6'h0b] = 32'b00000_0100_111010000_00000001_110_000;//sltiu
	LUT_op[6'h0c] = 32'b00000_0100_010000000_00000001_110_000;//andi
	LUT_op[6'h0d] = 32'b00000_0100_010001000_00000001_110_000;//ori
	LUT_op[6'h0e] = 32'b00000_0100_010011000_00000001_110_000;//xori
	LUT_op[6'h0f] = 32'b00000_0000_000000010_00000001_110_000;//lui
	LUT_op[6'h20] = 32'b00000_0100_110010000_01100000_110_000;//lb
	LUT_op[6'h21] = 32'b00000_0100_110010000_10100000_110_000;//lh
	LUT_op[6'h23] = 32'b00000_0100_110010000_11100000_110_000;//lw
	LUT_op[6'h24] = 32'b00000_0100_110010000_01110000_110_000;//lbu
	LUT_op[6'h25] = 32'b00000_0100_110010000_10110000_110_000;//lhu
	LUT_op[6'h28] = 32'b00000_0110_110010000_01010000_000_000;//sb
	LUT_op[6'h29] = 32'b00000_0110_110010000_10010000_000_000;//sh
	LUT_op[6'h2b] = 32'b00000_0110_110010000_11010000_000_000;//sw
	LUT_op[6'h2f] = 32'b00000_0000_000000000_00000000_000_000;//cache
end
initial begin
	for (i = 0; i<64; i=i+1)
		LUT_1c[i] = 32'b00000_0000_000000000_00000000_000_010;//unknown
	LUT_1c[6'h00] = 32'b00000_0110_000000000_00000000_000_000;//madd
	LUT_1c[6'h01] = 32'b00000_0110_000000000_00000000_000_000;//maddu
	LUT_1c[6'h02] = 32'b00000_0110_000000000_00000011_111_000;//mul
	LUT_1c[6'h04] = 32'b00000_0110_000000000_00000000_000_000;//msub
	LUT_1c[6'h05] = 32'b00000_0110_000000000_00000000_000_000;//msubu
end

assign op_0      = LUT_fun[fun];
assign op_1c     = LUT_1c[fun];
assign op_other = LUT_op[op];
always @* begin
	op_10 = 32'b00000_0000_000000000_00000000_000_010;//unknown
	{id_tlbr, id_tlbwi, id_tlbwr, id_tlbp} = 0;
	case(rs)
		6'h00: op_10 = 32'b00000_0000_000000000_00000010_110_000;//mfc0
		6'h04: op_10 = 32'b00000_0010_000000000_00001000_000_000;//mtc0
		6'h10:case(fun)
					6'h01: begin op_10 = 32'b00000_0000_000000000_00000000_000_000; id_tlbr = 1'b1; end//tlbr
					6'h02: begin op_10 = 32'b00000_0000_000000000_00000000_000_000; id_tlbwi = 1'b1; end//tlbwi
					6'h06: begin op_10 = 32'b00000_0000_000000000_00000000_000_000; id_tlbwr = 1'b1; end//tlbwr
					6'h08: begin op_10 = 32'b00000_0000_000000000_00000000_000_000; id_tlbp = 1'b1; end//tlbp
					6'h18: op_10 = 32'b00000_0000_000000000_00000000_000_001;//eret
				endcase
	endcase
end
always @* begin
	op_01 = 32'b00000_0000_000000000_00000000_000_010;//unknown
	case (rt)
		6'h00:op_01 = 32'b10100_0100_000000000_00000000_000_000;//bltz untest
		6'h01:op_01 = 32'b11000_0100_000000000_00000000_000_000;//bgez untest
	endcase
end

wire en_00, en_1c, en_10, en_01, en_other;
assign en_00 = op == 6'h00;
assign en_01 = op == 6'h01;
assign en_10 = op == 6'h10;
assign en_1c = op == 6'h1c;
assign en_other = ~(en_00 | en_01 | en_10 | en_1c);

assign bus = en_00 ? op_0 : 32'bz;
assign bus = en_01 ? op_01: 32'bz;
assign bus = en_10 ? op_10: 32'bz;
assign bus = en_1c ? op_1c: 32'bz;
assign bus = en_other ? op_other : 32'bz;

assign {id_bcond, id_j, id_jr,
	     id_rega_addr, id_regb_addr,
		  id_exe_sign, id_exe_imm, id_exe_aluop, id_exe_res_sign, id_exe_lui, id_exe_jal,
		  id_mem_ctrl, id_mem_op, id_mem_CP0_we, id_mem_mem_reg,
		  id_wb_we, id_wb_dreg,
		  id_syscall, id_unknown, id_eret} = bus;

endmodule
