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
	//output reg id_ra,//register A的选择
	output reg id_beq,
	output reg id_bne,
	output reg id_j,
	output reg id_jr,
	
	output reg [1:0]id_rega_addr,//exe_a,未使用时会为0，exe默认运算为and，并且0不会被forward或stall
	output reg [1:0]id_regb_addr,//exe_b,未使用时会为0，exe默认运算为and，并且0不会被forward或stall
	
	output reg id_exe_sign,
	output reg id_exe_imm,//寄存器还是立即数
	output reg [3:0]id_exe_aluop,
	output reg id_exe_res_sign,//表示是无符号还是有符号，用来帮助判断overflow
	output reg id_exe_lui,
	output reg id_exe_jal,
	
	output reg id_mem_we,
	output reg id_mem_rd,
	output reg id_mem_CP0_we,
	output reg [2:0]id_mem_mem_reg,
	
	output reg id_wb_we,
	output reg [1:0]id_wb_dreg,//目标寄存器
	
	output reg id_syscall,
	output reg id_unknown,//未知指令
	output reg id_eret
    );
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

 
wire [5:0]op;
wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
wire [4:0]shift;
wire [5:0]fun;
assign {op, rs, rt, rd, shift, fun} = inst;

reg _sll, _srl, _jr, _jalr
	, _mfhi, _mthi, _mflo, _mtlo
	, _mult, _multu, _madd, _maddu, _mul, _msub, _msubu
	, _add, _addu, _sub, _subu
	, _and, _or, _xor, _nor, _slt, _sltu
	, _j, _jal, _beq, _bne
	, _addi, _addiu, _slti, _sltiu, _andi, _ori, _xori, _lui
	, _mfc0, _mtc0, _eret
	, _lw, _sw
	, _cache, _syscall;
always @* begin
	{_sll, _srl, _jr, _jalr
	, _mfhi, _mthi, _mflo, _mtlo
	, _mult, _multu, _madd, _maddu, _mul, _msub, _msubu
	, _add, _addu, _sub, _subu
	, _and, _or, _xor, _nor, _slt, _sltu
	, _j, _jal, _beq, _bne
	, _addi, _addiu, _slti, _sltiu, _andi, _ori, _xori, _lui
	, _mfc0, _mtc0, _eret
	, _lw, _sw
	, _cache, _syscall} = 0;
	case (op)
		6'h0:
			case (fun)
				6'h0: _sll  = 1'b1;
				6'h2: _srl  = 1'b1;
				//6'h3: _sra = 1'b1;
				6'h8: _jr   = 1'b1;
				6'h9: _jalr = 1'b1;
				6'h0c:_syscall = 1'b1;
				6'h10:_mfhi = 1'b1;
				6'h11:_mthi = 1'b1;
				6'h12:_mflo = 1'b1;
				6'h13:_mtlo = 1'b1;
				6'h18:_mult = 1'b1;
				6'h19:_multu = 1'b1;
				//6'h1a:_div = 1'b1;
				//6'h1b:_divu = 1'b1;
				6'h20:_add  = 1'b1;
				6'h21:_addu = 1'b1;
				6'h22:_sub  = 1'b1;
				6'h23:_subu = 1'b1;
				6'h24:_and  = 1'b1;
				6'h25:_or   = 1'b1;
				6'h26:_xor  = 1'b1;
				6'h27:_nor  = 1'b1;
				6'h2a:_slt  = 1'b1;
				6'h2b:_sltu = 1'b1;
			endcase
		6'h02:_j = 1'b1;
		6'h03:_jal = 1'b1;
		6'h04:_beq = 1'b1;
		6'h05:_bne = 1'b1;
		//6'h06:_blez = 1'b1;
		//6'h07:_bgtz = 1'b1;
		6'h08:_addi = 1'b1;
		6'h09:_addiu = 1'b1;
		6'h0a:_slti = 1'b1;
		6'h0b:_sltiu = 1'b1;
		6'h0c:_andi = 1'b1;
		6'h0d:_ori = 1'b1;
		6'h0e:_xori = 1'b1;
		6'h0f:_lui = 1'b1;
		6'h10:case (rs)
					6'h00:_mfc0 = 1'b1;
					6'h04:_mtc0 = 1'b1;
					6'h10:case(fun)
								6'h18:_eret = 1'b1;
							endcase
				endcase
		6'h1c:case (fun)
					6'h00: _madd = 1'b1;
					6'h01: _maddu= 1'b1;
					6'h02: _mul  = 1'b1;
					6'h04: _msub = 1'b1;
					6'h05: _msubu= 1'b1;
				endcase
		//6'h20:_lb = 1'b1;
		//6'h21:_lh = 1'b1;
		6'h23:_lw = 1'b1;
		//6'h24:_lbu = 1'b1;
		//6'h25:_lhu = 1'b1;
		//6'h28:_sb = 1'b1;
		//6'h29:_sh = 1'b1;
		6'h2b:_sw = 1'b1;
		6'h2f:_cache = 1'b1;
	endcase
end
wire _unknown;
assign _unknown = ~(|{_sll, _srl, _jr, _jalr
	, _mfhi, _mthi, _mflo, _mtlo
	, _mult, _multu, _madd, _maddu, _mul, _msub, _msubu
	, _add, _addu, _sub, _subu
	, _and, _or, _xor, _nor, _slt, _sltu
	, _j, _jal, _beq, _bne
	, _addi, _addiu, _slti, _sltiu, _andi, _ori, _xori, _lui
	, _mfc0, _mtc0, _eret
	, _lw, _sw
	, _cache, _syscall});
wire arith_, bitwise_, itype_, mulw_, mula_;
assign arith_ = |{_add, _addu, _sub, _subu};
assign bitwise_ = |{_slt, _and, _or, _xor, _nor};
assign itype_ = |{_addi, _addiu, _andi, _ori, _slti, _xori};
assign mulw_ = |{_mul, _mfhi, _mflo};
assign mula_ = |{_mult, _multu, _mul, _madd, _maddu, _msub, _msubu};

always @* begin
	{id_beq, id_bne, id_j, id_jr,
	id_rega_addr, id_regb_addr,
	id_exe_sign, id_exe_imm, id_exe_aluop,
	id_exe_res_sign, id_exe_lui, id_exe_jal,
	id_mem_we, id_mem_rd, id_mem_CP0_we, id_mem_mem_reg, 
	id_wb_we, id_wb_dreg, 
	id_syscall, id_unknown, id_eret} = 0;
	
	id_beq = _beq;
	id_bne = _bne;
	id_j = _j | _jal;
	id_jr = _jr | _jalr;
	if (|{arith_ , bitwise_, itype_, mula_, _jr, _jalr, _mthi, _mtlo, _lw, _sw, _beq, _bne})
		id_rega_addr = RS;
	else if(_srl | _sll)
		id_rega_addr = RT;
	else
		id_rega_addr = NO;
	
	if (|{arith_, bitwise_, mula_, _sw, _beq, _bne})
		id_regb_addr = RT;
	else
		id_regb_addr = NO;
		
	id_exe_sign = |{_lw, _sw, _addi, _addiu, _slti};
	id_exe_imm = |{itype_, _srl, _sll, _lw, _sw};
	
	if (|{_add, _addu, _lw, _sw, _addi, _addiu})
		id_exe_aluop = ADD;
	else if (_sub | _subu)
		id_exe_aluop = SUB;
	else if (_slt | _slti)
		id_exe_aluop = SLT;
	else if (_and | _andi)
		id_exe_aluop = AND;
	else if (_or | _ori)
		id_exe_aluop = OR;
	else if (_xor | _xori)
		id_exe_aluop = XOR;
	else if (_nor)
		id_exe_aluop = NOR;
	else if (_srl)
		id_exe_aluop = SRL;
	else if (_sll)
		id_exe_aluop = SLL;
	
	id_exe_res_sign = |{_add, _sub, _addi};
	id_exe_lui = _lui;
	id_exe_jal = _jalr | _jal;
	id_mem_we = _sw;
	id_mem_rd = _lw;
	id_mem_CP0_we = _mtc0;
	if (_lw)
		id_mem_mem_reg = MEM;
	else if (_mfc0)
		id_mem_mem_reg = CP0;
	else if (|{_mfhi, _mflo, _mul})
		id_mem_mem_reg = MUL;
	else
		id_mem_mem_reg = ALU;
		
	id_wb_we = |{arith_ , bitwise_, itype_, mulw_, _srl, _sll, _jalr, _lw, _lui, _mfc0, _jal};
	if (|{_lw, itype_, _lui, _mfc0})
		id_wb_dreg = RT;
	else if (_jal)
		id_wb_dreg = RA;
   else if(|{arith_, bitwise_, mulw_, _srl, _sll, _jalr})
		id_wb_dreg = RD;
	else
	   id_wb_dreg = NO;
	
	id_syscall =  _syscall;
	id_unknown =  _unknown;
	id_eret = _eret;
end

endmodule
