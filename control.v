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

	output id_beq,
	output id_bne,
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
	
	output id_mem_we,
	output id_mem_rd,
	output id_mem_CP0_we,
	output [2:0]id_mem_mem_reg,
	
	output id_wb_we,
	output [1:0]id_wb_dreg,//dest register
	
	output id_syscall,
	output id_unknown,
	output id_eret
    );
/*
//for id_wb_dreg, id_rega_addr, id_regb_addr
parameter NO = 2'b00;
parameter RS = 2'b01;
parameter RA = 2'b01;//for id_wb_dreg
parameter RT = 2'b10;
parameter RD = 2'b11;
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
*/

integer i;
wire [5:0]op, fun;
wire [4:0]rs, rt, rd, shift;
reg [28:0]LUT_fun[63:0], LUT_op[63:0], LUT_1c[63:0];
reg [28:0]op_10;
wire [28:0]op_0, op_1c, op_other, bus;

assign {op, rs, rt, rd, shift, fun} = inst;
initial begin
	for (i = 0; i<64; i=i+1)
		 LUT_fun[i] = 29'b0000_0000_000000000_000000_000_010;//unknown
	LUT_fun[6'h00] = 29'b0000_1000_011000000_000001_111_000;//sll
	LUT_fun[6'h02] = 29'b0000_1000_010101000_000001_111_000;//srl
	//6'h3: _sra = 1'b1;
	LUT_fun[6'h08] = 29'b0001_0100_000000000_000000_000_000;//jr
	LUT_fun[6'h09] = 29'b0001_0100_000000001_000001_111_000;//jalr
	LUT_fun[6'h0c] = 29'b0000_0000_000000000_000000_000_100;//syscall
	LUT_fun[6'h10] = 29'b0000_0000_000000000_000011_111_000;//mfhi
	LUT_fun[6'h11] = 29'b0000_0001_000000000_001000_000_000;//mthi
	LUT_fun[6'h12] = 29'b0000_0000_000000000_000011_111_000;//mflo
	LUT_fun[6'h13] = 29'b0000_0001_000000000_001000_000_000;//mtlo
	LUT_fun[6'h18] = 29'b0000_0110_000000000_000000_000_000;//mult
	LUT_fun[6'h19] = 29'b0000_0110_000000000_000000_000_000;//multu
	//6'h1a:_div = 1'b1;
	//6'h1b:_divu = 1'b1;
	LUT_fun[6'h20] = 29'b0000_0110_000010100_000001_111_000;//add
	LUT_fun[6'h21] = 29'b0000_0110_000010000_000001_111_000;//addu
	LUT_fun[6'h22] = 29'b0000_0110_000110100_000001_111_000;//sub
	LUT_fun[6'h23] = 29'b0000_0110_000110000_000001_111_000;//subu
	LUT_fun[6'h24] = 29'b0000_0110_000000000_000001_111_000;//and
	LUT_fun[6'h25] = 29'b0000_0110_000001000_000001_111_000;//or
	LUT_fun[6'h26] = 29'b0000_0110_000011000_000001_111_000;//xor
	LUT_fun[6'h27] = 29'b0000_0110_000100000_000001_111_000;//nor
	LUT_fun[6'h2a] = 29'b0000_0110_000111000_000001_111_000;//slt
	//6'h2b:_sltu = 1'b1;
end
initial begin
	for (i = 0; i<64; i= i+1)
		 LUT_op[i] = 29'b0000_0000_000000000_000000_000_010;//unknown
	LUT_op[6'h02] = 29'b0010_0000_000000000_000000_000_000;//j
	LUT_op[6'h03] = 29'b0010_0000_000000001_000001_101_000;//jal
	LUT_op[6'h04] = 29'b1000_0000_000000000_000000_000_000;//beq
	LUT_op[6'h05] = 29'b0100_0000_000000000_000000_000_000;//bne
	//6'h06:_blez = 1'b1;
	//6'h07:_bgtz = 1'b1;
	LUT_op[6'h08] = 29'b0000_0100_110010100_000001_110_000;//addi
	LUT_op[6'h09] = 29'b0000_0100_110010000_000001_110_000;//addiu
	LUT_op[6'h0a] = 29'b0000_0100_110111000_000001_110_000;//slti
	//6'h0b:_sltiu = 1'b1;
	LUT_op[6'h0c] = 29'b0000_0100_010000000_000001_110_000;//andi
	LUT_op[6'h0d] = 29'b0000_0100_010001000_000001_110_000;//ori
	LUT_op[6'h0e] = 29'b0000_0100_010011000_000001_110_000;//xori
	LUT_op[6'h0f] = 29'b0000_0000_000000010_000001_110_000;//lui
	//6'h20:_lb = 1'b1;
	//6'h21:_lh = 1'b1;
	LUT_op[6'h23] = 29'b0000_0100_110010000_010000_110_000;//lw
	//6'h24:_lbu = 1'b1;
	//6'h25:_lhu = 1'b1;
	//6'h28:_sb = 1'b1;
	//6'h29:_sh = 1'b1;
	LUT_op[6'h2b] = 29'b0000_0100_110010000_100000_000_000;//sw
	LUT_op[6'h2f] = 29'b0000_0000_000000000_000000_000_000;//cache
end
initial begin
	for (i = 0; i<64; i=i+1)
		LUT_1c[i] = 29'b0000_0000_000000000_000000_000_010;//unknown
	LUT_1c[6'h00] = 29'b0000_0110_000000000_000000_000_000;//madd
	LUT_1c[6'h01] = 29'b0000_0110_000000000_000000_000_000;//maddu
	LUT_1c[6'h02] = 29'b0000_0110_000000000_000011_111_000;//mul
	LUT_1c[6'h04] = 29'b0000_0110_000000000_000000_000_000;//msub
	LUT_1c[6'h05] = 29'b0000_0110_000000000_000000_000_000;//msubu
end

assign op_0      = LUT_fun[fun];
assign op_1c     = LUT_1c[fun];
assign op_other = LUT_op[op];
always @* begin
	op_10 = 29'b0000_0000_000000000_000000_000_010;//unknown
	case(rs)
		6'h00: op_10 = 29'b0000_0000_000000000_000010_110_000;//mfc0
		6'h04: op_10 = 29'b0000_0010_000000000_001000_000_000;//mtc0
		6'h10:case(fun)
					6'h18: op_10 = 29'b0000_0000_000000000_000000_000_001;//eret
				endcase
	endcase
end

wire en_00, en_1c, en_10, en_other;
assign en_00 = op == 6'h00;
assign en_10 = op == 6'h10;
assign en_1c = op == 6'h1c;
assign en_other = ~(en_00 | en_10 | en_1c);

assign bus = en_00 ? op_0 : 29'bz;
assign bus = en_10 ? op_10: 29'bz;
assign bus = en_1c ? op_1c: 29'bz;
assign bus = en_other ? op_other : 29'bz;

assign {id_beq, id_bne, id_j, id_jr,
	     id_rega_addr, id_regb_addr,
		  id_exe_sign, id_exe_imm, id_exe_aluop, id_exe_res_sign, id_exe_lui, id_exe_jal,
		  id_mem_we, id_mem_rd, id_mem_CP0_we, id_mem_mem_reg,
		  id_wb_we, id_wb_dreg,
		  id_syscall, id_unknown, id_eret} = bus;

endmodule
