`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:50 09/10/2017 
// Design Name: 
// Module Name:    PCPU_v 
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
module PCPU_v(	//人肉保证CP0写入后一段时间不读取CP0，避免CP0遇险
    input clk,
    input [31:0] inst_data,
    input [31:0] mem_data_in,
    input rst,
	 input [4:0]int_,//IP7 is counter interrupt
   output [31:0] inst_addr,
   output [31:0] mem_addr,
   output reg [31:0] mem_data,
	output [31:0] cause_data,//
	output [31:0] status_data,//
   output reg [3:0]mem_we,
	output mem_rd
	);
	
	wire [31:0]mem_addr_DUMMY;
	wire [31:0]mem_data_DUMMY;
	wire [31:0]inst_addr_DUMMY;
	assign inst_addr = inst_addr_DUMMY;
	
	wire id_exc, exe_exc, mem_exc, wb_exc;
/////////////////////////////////////////////////////////////////////////////
//CP0
wire mem_CP0_we;
wire [4:0]mem_CP0_dreg;
wire [31:0]CP0_data_in;
wire [31:0]CP0_data_out;
wire [31:0]STATUS_out;
wire [31:0]CAUSE_out;
wire [31:0]EPC_out;
wire STATUS_EXL_in;
wire CAUSE_BD_in;
wire [4:0]CAUSE_EXCCODE_in;
wire [5:0]CAUSE_HIP_in;
wire [31:0]EPC_in;
wire timer_int;

CP0 CP0_(
    .clk(clk), 
    .rst(rst), 
    .we(mem_CP0_we & ~mem_exc & ~wb_exc), 
    .r_reg(mem_CP0_dreg), 
    .data_in(mem_data_DUMMY), 
    .data_out(CP0_data_out), 
    .STATUS_EXL(STATUS_EXL_in), 
    .STATUS_out(STATUS_out), 
    .CAUSE_BD(CAUSE_BD_in), 
    .CAUSE_HIP(CAUSE_HIP_in), 
    .CAUSE_EXCCODE(CAUSE_EXCCODE_in), 
    .CAUSE_out(CAUSE_out), 
    .EPC_in(EPC_in), 
    .EPC_out(EPC_out),
	 .timer_int(timer_int)
   );
	//debug
	assign cause_data = CAUSE_out;
	assign status_data = STATUS_out;
////////////////////////////////////////////////////////////////////////
   wire id_b;
	wire id_j;
	wire id_jr;
	wire [1:0]jump_s;
	jump_control  Jump_control(
							 .b(id_b), 
							 .j(id_j), 
							 .jr(id_jr), 
							 .s(jump_s[1:0]));
	
	wire [31:0]npc;
	wire [31:0]id_baddr;
	wire [31:0]id_npc;
	wire [31:0]id_inst;
	wire [31:0]id_exe_rega;
	wire [31:0]PC_data_in;
	reg [31:0]PC_jump;
	always @* begin
		case(jump_s)
			2'b00: PC_jump = npc;//npc
			2'b01: PC_jump = id_baddr[31:0];//b
			2'b10: PC_jump = {id_npc[31:28], id_inst[25:0], 2'b0};//j
			2'b11: PC_jump = id_exe_rega[31:0];//jr
		endcase
	end
	
	wire [31:0]exc_addr;//assigned by Exception_Handler
	assign PC_data_in = id_eret? EPC_out : (wb_exc? exc_addr : PC_jump);	
	
	wire IF_ID_stall_;
	REG32  PC(.CE(IF_ID_stall_ | id_eret | wb_exc),//exception is prior than stall
				  .clk(clk), 
				  .D(PC_data_in), 
				  .rst(rst), 
				  .Q(inst_addr_DUMMY));
				  
	assign npc = inst_addr_DUMMY + 4;
//////////////////////////////////////////////////////////
wire id_bj;
wire [31:0]id_pc;
	IF_ID_Reg IF_ID(.clk(clk), 
						.EN(IF_ID_stall_), 
						.rst(rst), 
						.bubble(id_eret | id_exc | exe_exc | mem_exc | wb_exc),//there is no delayed slot after eret
						.inst(inst_data[31:0]), 
						.npc(npc[31:0]), 
						.pc(inst_addr_DUMMY[31:0]),
						.if_bd(id_bj),
						.inst_out(id_inst[31:0]), 
						.npc_out(id_npc[31:0]),
						.id_pc(id_pc[31:0]),
						.id_bd(id_bd));
///////////////////////////////////////////////////////////	
	wire [2:0]id_bcond;
	wire [3:0]id_exe_aluop;
	wire id_exe_jal;
	wire id_exe_lui;
	wire id_exe_sign;
	wire id_exe_imm;
	wire id_exe_res_sign;
	wire [2:0]id_mem_mem_reg;
	wire [1:0]id_mem_ctrl;
	wire [1:0]id_mem_op;
	wire [1:0]id_wb_dreg_s;
	wire [1:0]id_rega_addr_s;
	wire [1:0]id_regb_addr_s;
	wire id_wb_we;
	wire id_mem_CP0_we;
	wire id_syscall;
	wire id_unknown;
	control  Control(.inst(id_inst[31:0]), 
                    .id_bcond(id_bcond[2:0]), 
						  .id_j(id_j), 
                    .id_jr(id_jr), 
                    .id_exe_aluop(id_exe_aluop[3:0]), 
                    .id_exe_jal(id_exe_jal), 
                    .id_exe_lui(id_exe_lui), 
                    .id_exe_sign(id_exe_sign), 
                    .id_exe_imm(id_exe_imm), 
						  .id_exe_res_sign(id_exe_res_sign),
                    .id_mem_mem_reg(id_mem_mem_reg), 
                    .id_mem_ctrl(id_mem_ctrl), 
						  .id_mem_op(id_mem_op),
                    .id_wb_dreg(id_wb_dreg_s[1:0]), 
						  .id_rega_addr(id_rega_addr_s[1:0]),
						  .id_regb_addr(id_regb_addr_s[1:0]),
                    .id_wb_we(id_wb_we),
						  .id_syscall(id_syscall),
						  .id_unknown(id_unknown),
						  .id_eret(id_eret),
						  .id_mem_CP0_we(id_mem_CP0_we));
						  
	assign id_bj = (|id_bcond) | id_j | id_jr;
	wire id_mem;
	assign id_mem = id_mem_CP0_we | (id_mem_op == 2'b01);//todo: modify and include MUL
	
	wire [4:0]id_mem_CP0_dreg;
	assign id_mem_CP0_dreg = id_inst[15:11];
	
	reg [4:0]id_rega_addr;
	always @* begin
		case (id_rega_addr_s)
			2'b00: id_rega_addr = 0; 
			2'b01: id_rega_addr = id_inst[25:21];
			2'b10: id_rega_addr = id_inst[20:16];
			2'b11: id_rega_addr = id_inst[15:11];
		endcase
	end
	reg [4:0]id_regb_addr;
	always @* begin
		case (id_regb_addr_s)
			2'b00: id_regb_addr = 0; 
			2'b01: id_regb_addr = id_inst[25:21];
			2'b10: id_regb_addr = id_inst[20:16];
			2'b11: id_regb_addr = id_inst[15:11];
		endcase
	end
	
	reg [4:0]id_wb_dreg;
	always @* begin
		case (id_wb_dreg_s)
			2'b00: id_wb_dreg = 0;
			2'b01: id_wb_dreg = 5'b11111;
			2'b10: id_wb_dreg = id_inst[20:16];
			2'b11: id_wb_dreg = id_inst[15:11];
		endcase
	end

	wire wb_we;
	wire [4:0]wb_dreg;
	wire [31:0]wb_data;
	wire [31:0]rdata_A;
	wire [31:0]rdata_B;
   Regs  Reg_file(.clk(~clk), 
                .L_S(wb_we & ~wb_exc),//if exception not write 
                .rst(rst), 
                .R_addr_A(id_rega_addr), 
                .R_addr_B(id_regb_addr), 
                .Wt_addr(wb_dreg[4:0]), 
                .Wt_data(wb_data[31:0]), 
                .rdata_A(rdata_A[31:0]), 
                .rdata_B(rdata_B[31:0]));
	
	wire [2:0]exe_mem_mem_reg;
	reg [31:0]exe_result;
	wire [4:0]exe_wb_dreg;
	wire exe_wb_we;
	wire [31:0]mem_wb_data;
	wire [4:0]mem_wb_dreg;
	wire mem_wb_we;
	forward_reg  forward_a(.exe_mem_mem_reg(exe_mem_mem_reg), 
                         .exe_out(exe_result[31:0]), 
                         .exe_wb_dreg(exe_wb_dreg[4:0]), 
                         .exe_wb_we(exe_wb_we), 
                         .id_out(rdata_A[31:0]), 
                         .id_reg(id_rega_addr[4:0]), 
                         .mem_out(mem_wb_data[31:0]), 
                         .mem_wb_dreg(mem_wb_dreg[4:0]), 
                         .mem_wb_we(mem_wb_we), 
                         .id_exe_reg(id_exe_rega[31:0]));
	
	wire [31:0]id_exe_regb;
   forward_reg  forward_b (.exe_mem_mem_reg(exe_mem_mem_reg), 
                         .exe_out(exe_result[31:0]), 
                         .exe_wb_dreg(exe_wb_dreg[4:0]), 
                         .exe_wb_we(exe_wb_we), 
                         .id_out(rdata_B[31:0]), 
                         .id_reg(id_regb_addr[4:0]), 
                         .mem_out(mem_wb_data[31:0]), 
                         .mem_wb_dreg(mem_wb_dreg[4:0]), 
                         .mem_wb_we(mem_wb_we), 
                         .id_exe_reg(id_exe_regb[31:0]));
								 
	adder32_Sklansky add_branch_addr(
    .A_in(id_npc[31:0]), 
    .B_in({{14{id_inst[15]}}, id_inst[15:0],2'b0}), 
    .add_sub(1'b0), 
    .res(id_baddr[31:0]), 
    .overflow()
    );
	branch_judge Branch_judge(
	                   .rega(id_exe_rega[31:0]), 
							 .regb(id_exe_regb[31:0]), 
							 .branch_cond(id_bcond[2:0]),
							 .b(id_b));
	
	assign id_exc = id_syscall | id_unknown;
/////////////////////////////////////////////////////////////////////////
wire MUL_ID_sign;
wire MUL_ID_we;
wire MUL_ID_en_c;
wire MUL_ID_add_sub;
wire [1:0]MUL_ID_HiLo;
wire MUL_ID_mul;
MUL_control MUL_Control(
    .id_inst(id_inst[31:0]), 
    .MUL_ID_sign(MUL_ID_sign), 
    .MUL_ID_we(MUL_ID_we), 
    .MUL_ID_en_c(MUL_ID_en_c), 
    .MUL_ID_add_sub(MUL_ID_add_sub), 
    .MUL_ID_HiLo(MUL_ID_HiLo), 
    .MUL_ID_mul(MUL_ID_mul)
    );

wire [31:0]MUL_EXE_A, MUL_EXE_B;//, MUL_EXE_data;
wire MUL_EXE_add_sub, MUL_EXE_en_c, MUL_EXE_mul, MUL_EXE_sign, MUL_EXE_we;
wire [1:0]MUL_EXE_HiLo;
MUL_ID_EXE  _MUL_ID_EXE (
	.clk(clk), 
	.rst(rst | ~IF_ID_stall_ | exe_exc | mem_exc | wb_exc), 
	.EN(1'b1), 
	.MUL_ID_A(id_exe_rega[31:0]), 
	.MUL_ID_add_sub(MUL_ID_add_sub), 
	.MUL_ID_B(id_exe_regb[31:0]), 
	//.MUL_ID_data(id_exe_regb[31:0]), 
	.MUL_ID_en_c(MUL_ID_en_c), 
	.MUL_ID_HiLo(MUL_ID_HiLo[1:0]), 
	.MUL_ID_mul(MUL_ID_mul), 
	.MUL_ID_sign(MUL_ID_sign), 
	.MUL_ID_we(MUL_ID_we), 
	
	.MUL_EXE_A(MUL_EXE_A[31:0]), 
	.MUL_EXE_add_sub(MUL_EXE_add_sub), 
	.MUL_EXE_B(MUL_EXE_B[31:0]), 
	//.MUL_EXE_data(MUL_EXE_data[31:0]), 
	.MUL_EXE_en_c(MUL_EXE_en_c), 
	.MUL_EXE_HiLo(MUL_EXE_HiLo[1:0]), 
	.MUL_EXE_mul(MUL_EXE_mul), 
	.MUL_EXE_sign(MUL_EXE_sign), 
	.MUL_EXE_we(MUL_EXE_we)
	);
//////////////////////////////////////////////////////////////////////
wire [3:0]exe_aluop;
wire [15:0]exe_imme;
wire exe_jal;
wire exe_lui;
wire [1:0]exe_mem_ctrl;
wire [1:0]exe_mem_op;
wire [4:0]exe_mem_wreg;
wire [31:0]exe_npc;
wire [31:0]exe_rega;
wire [31:0]exe_regb;
wire [31:0]exe_pc;
wire exe_sign;
wire exe_imm; 
wire exe_bd;
wire exe_alu_sign;
wire exe_mem_CP0_we;
wire [4:0]exe_mem_CP0_dreg;
wire [1:0]exe_excvec;
ID_EXE_REG  ID_EXE (.clk(clk), 
                       .EN(1'b1), 
							  .rst(rst),
							  .bubble(~IF_ID_stall_ | exe_exc | mem_exc | wb_exc),//当overflow时id阶段bubble 
                       .id_exe_aluop(id_exe_aluop[3:0]), 
                       .id_exe_imme(id_inst[15:0]), 
                       .id_exe_jal(id_exe_jal), 
                       .id_exe_lui(id_exe_lui), 
							  .id_bd(id_bd),
                       .id_exe_npc(id_npc[31:0]), 
                       .id_exe_rega(id_exe_rega[31:0]), 
                       .id_exe_regb(id_exe_regb[31:0]), 
                       .id_exe_sign(id_exe_sign), 
                       .id_exe_imm(id_exe_imm), 
                       .id_mem_mem_reg(id_mem_mem_reg), 
                       .id_mem_ctrl(id_mem_ctrl), 
							  .id_mem_op(id_mem_op),
							  .id_mem_wreg(id_regb_addr[4:0]),
                       .id_wb_dreg(id_wb_dreg[4:0]), 
                       .id_wb_we(id_wb_we), 
							  .id_exe_alu_sign(id_exe_res_sign),
							  .id_mem_CP0_we(id_mem_CP0_we),
							  .id_mem_CP0_dreg(id_mem_CP0_dreg),
                       .exe_aluop(exe_aluop[3:0]), 
                       .exe_imme(exe_imme[15:0]), 
                       .exe_jal(exe_jal), 
							  .exe_bd(exe_bd),
                       .exe_lui(exe_lui), 
                       .exe_mem_mem_reg(exe_mem_mem_reg), 
                       .exe_mem_ctrl(exe_mem_ctrl), 
							  .exe_mem_op(exe_mem_op),
							  .exe_mem_wreg(exe_mem_wreg),
                       .exe_npc(exe_npc[31:0]), 
                       .exe_rega(exe_rega[31:0]), 
                       .exe_regb(exe_regb[31:0]), 
                       .exe_sign(exe_sign), 
                       .exe_imm(exe_imm), 
                       .exe_wb_dreg(exe_wb_dreg[4:0]), 
                       .exe_wb_we(exe_wb_we),
							  .exe_alu_sign(exe_alu_sign),
							  .exe_mem_CP0_we(exe_mem_CP0_we),
							  .exe_mem_CP0_dreg(exe_mem_CP0_dreg),
							  
							  .id_pc(id_pc),
							  .exe_pc(exe_pc),
							  .id_excvec({id_syscall, id_unknown}),
							  .exe_excvec(exe_excvec));
//////////////////////////////////////////////////////////////////
	reg [31:0]exe_b;
	always @* begin
		if (~exe_imm)
			exe_b = exe_regb;
		else begin
			if (exe_sign)
				exe_b = {{16{exe_imme[15]}}, exe_imme[15:0]};
			else
				exe_b = {16'b0, exe_imme[15:0]};
		end
	end
	
	wire [31:0]exe_alu_res;
   alu  ALU (.A(exe_rega[31:0]), 
               .ALU_Ctr(exe_aluop[3:0]), 
               .B(exe_b[31:0]), 
               .overflow(exe_overflow), 
					.alu_sign(exe_alu_sign),
               .res(exe_alu_res[31:0]), 
               .zero());//暂时不做overflow
	
	always @* begin
		if (exe_jal)
			exe_result = exe_npc + 4;
		else if (exe_lui)
			exe_result = {exe_imme[15:0], 16'b0};
		else
			exe_result = exe_alu_res[31:0];
	end
   
	assign exe_exc = (|exe_excvec) | exe_overflow;
//////////////////////////////////////////////////////////////
	wire [63:0]MUL_EXE_At, MUL_EXE_Bt;
	mul32_s  _Mul32_s (
		.A_i(MUL_EXE_A[31:0]), 
		.B_i(MUL_EXE_B[31:0]), 
		.sign(MUL_EXE_sign), 
		.A_t(MUL_EXE_At[63:0]), 
		.B_t(MUL_EXE_Bt[63:0])
		);
	wire MUL_EWB_add_sub, MUL_EWB_en_c, MUL_EWB_mul, MUL_EWB_we;
	wire [63:0]MUL_EWB_At, MUL_EWB_Bt;
	//wire [31:0]MUL_EWB_data;
	wire [1:0]MUL_EWB_HiLo;
	MUL_EXE_EWB  _Mul_EXE_EWB (
	  .clk(clk), 
	  .EN(1'b1), 
	  .rst(rst | mem_exc | wb_exc), 
	  .MUL_EXE_add_sub(MUL_EXE_add_sub), 
	  .MUL_EXE_A_t(MUL_EXE_At[63:0]), 
	  .MUL_EXE_B_t(MUL_EXE_Bt[63:0]), 
	  //.MUL_EXE_data(MUL_EXE_data[31:0]), 
	  .MUL_EXE_en_c(MUL_EXE_en_c), 
	  .MUL_EXE_HiLo(MUL_EXE_HiLo[1:0]), 
	  .MUL_EXE_mul(MUL_EXE_mul), 
	  .MUL_EXE_we(MUL_EXE_we),
	  
	  .MUL_EWB_add_sub(MUL_EWB_add_sub), 
	  .MUL_EWB_A_t(MUL_EWB_At[63:0]), 
	  .MUL_EWB_B_t(MUL_EWB_Bt[63:0]), 
	  //.MUL_EWB_data(MUL_EWB_data[31:0]), 
	  .MUL_EWB_en_c(MUL_EWB_en_c), 
	  .MUL_EWB_HiLo(MUL_EWB_HiLo[1:0]), 
	  .MUL_EWB_mul(MUL_EWB_mul), 
	  .MUL_EWB_we(MUL_EWB_we)
	  );
/////////////////////////////////////////////////////////////
   wire [1:0]mem_ctrl;
	wire [1:0]mem_op;
	wire [31:0]mem_data_;
	wire [4:0]mem_wreg;
	wire [2:0]mem_mem_reg;
	wire [31:0]mem_pc;
	wire mem_bd;
	wire [2:0]mem_excvec;
	EXE_MEM_REG  EXE_MEM_REG (.clk(clk), 
                        .rst(rst),
                        .EN(1'b1), 
								.bubble(mem_exc | wb_exc),
								
                        .exe_mem_addr(exe_result[31:0]), 
                        .exe_mem_data(exe_regb[31:0]),
                        .exe_mem_mem_reg(exe_mem_mem_reg), 
                        .exe_mem_ctrl(exe_mem_ctrl), 
								.exe_mem_op(exe_mem_op),
								.exe_mem_wreg(exe_mem_wreg),
                        .exe_wb_dreg(exe_wb_dreg[4:0]), 
                        .exe_wb_we(exe_wb_we),  
								.exe_bd(exe_bd),
								.exe_mem_CP0_we(exe_mem_CP0_we),
							   .exe_mem_CP0_dreg(exe_mem_CP0_dreg),
                        .mem_addr(mem_addr_DUMMY[31:0]), 
                        .mem_data(mem_data_[31:0]), 
                        .mem_mem_reg(mem_mem_reg), 
                        .mem_wb_dreg(mem_wb_dreg[4:0]), 
                        .mem_wb_we(mem_wb_we), 
                        .mem_ctrl(mem_ctrl),
								.mem_op(mem_op),
								.mem_wreg(mem_wreg),
								.mem_bd(mem_bd),
								.mem_CP0_we(mem_CP0_we),
								.mem_CP0_dreg(mem_CP0_dreg),
								
								.exe_pc(exe_pc),
								.exe_excvec({~(|exe_excvec) & exe_overflow, exe_excvec}),//notice &
								.mem_pc(mem_pc),
								.mem_excvec(mem_excvec));
								
	forward_mem Forward_Mem(
    .mem_wreg(mem_wreg), 
    .wb_dreg(wb_dreg), 
    .wb_we(wb_we), 
    .mem_data_(mem_data_), 
    .wb_data(wb_data), 
    .mem_data(mem_data_DUMMY)
    );
	assign exc_memAddr = mem_ctrl[1] & (mem_addr_DUMMY[0] | (mem_ctrl[0] & mem_addr_DUMMY[1]));
	//todo handle excption
	assign mem_rd = mem_op[1];
	assign mem_addr = {mem_addr_DUMMY[31:2],2'b0};
	always @* begin
		case (mem_addr_DUMMY[1:0])
			2'b00: mem_data = mem_data_DUMMY;
			2'b01: mem_data = {16'b0, mem_data_DUMMY[7:0], 8'b0};
			2'b10: mem_data = {mem_data_DUMMY[15:0], 16'b0};
			2'b11: mem_data = {mem_data_DUMMY[7:0], 24'b0};
		endcase
   end
	always @* begin
		if (~mem_exc & ~wb_exc & mem_op == 2'b01) begin//we
		  case ({mem_ctrl, mem_addr_DUMMY[1:0]})
				4'b1100:mem_we = 4'b1111;
				4'b1000:mem_we = 4'b0011;
				4'b1010:mem_we = 4'b1100;
				4'b0100:mem_we = 4'b0001;
				4'b0101:mem_we = 4'b0010;
				4'b0110:mem_we = 4'b0100;
				4'b0111:mem_we = 4'b1000;
				default:mem_we = 4'b0000;
		  endcase
		end
		else
			mem_we = 0;
	end
	assign mem_exc = (|mem_excvec); 
///////////////////////////////////////////////////////////////
wire [63:0]MUL_EWB_Hi_Lo, MUL_EWB_res;
   mul_adder  _Mul_adder (
	  .A(MUL_EWB_At[63:0]), 
	  .B(MUL_EWB_Bt[63:0]), 
	  .a_s(MUL_EWB_add_sub), 
	  .C_(MUL_EWB_Hi_Lo[63:0]), 
	  .en_c(MUL_EWB_en_c), 
	  .res(MUL_EWB_res[63:0]));
	Reg_HiLo  _REG_HiLo (
	  .clk(clk),
	  .rst(rst),
	  .we(MUL_EWB_we & ~mem_exc & ~wb_exc), 
	  .cal_res(MUL_EWB_res[63:0]), 
	  .data_in(mem_data_DUMMY[31:0]), 
	  .HiLo(MUL_EWB_HiLo[1:0]), 
	  .Hi_Lo(MUL_EWB_Hi_Lo[63:0])
	  );
wire [31:0]MUL_EWB_data_out;
assign MUL_EWB_data_out = MUL_EWB_mul ? MUL_EWB_res[31:0] 
												  : (MUL_EWB_HiLo[0] ? MUL_EWB_Hi_Lo[31:0] : MUL_EWB_Hi_Lo[63:32]);

reg [7:0]mem_dataB;
reg [15:0]mem_dataH;
reg  [31:0]mem_data_in_DUMMY;
always @* begin
  case(mem_addr_DUMMY[1:0])
    2'b00:begin mem_dataB = mem_data_in[7:0];   mem_dataH = mem_data_in[15:0]; end
	 2'b01:begin mem_dataB = mem_data_in[15:8];  mem_dataH = 0; end
	 2'b10:begin mem_dataB = mem_data_in[23:16]; mem_dataH = mem_data_in[31:16]; end
	 2'b11:begin mem_dataB = mem_data_in[31:24]; mem_dataH = 0; end
  endcase
end
always @* begin
  case({mem_op, mem_ctrl})
    4'b1001: mem_data_in_DUMMY = {24'b0, mem_dataB};
	 4'b1010: mem_data_in_DUMMY = {16'b0, mem_dataH};
    4'b1011: mem_data_in_DUMMY = mem_data_in;
	 4'b1101: mem_data_in_DUMMY = {{24{mem_dataB[7]}}, mem_dataB};
	 4'b1110: mem_data_in_DUMMY = {{16{mem_dataH[15]}}, mem_dataH};
	 default: mem_data_in_DUMMY = 0;
  endcase
end

reg [31:0]mem_wb_data_temp;
always @* begin
	case(mem_mem_reg)
		3'b000: mem_wb_data_temp = mem_data_in_DUMMY[31:0];//memory
		3'b001: mem_wb_data_temp = mem_addr_DUMMY[31:0];//alu result
		3'b010: mem_wb_data_temp = CP0_data_out[31:0];//CP0 mfc0
		3'b011: mem_wb_data_temp = MUL_EWB_data_out[31:0];//hi/lo/result  mul/mfhi/mflo
		default: mem_wb_data_temp = 32'b0;
	endcase
end
assign mem_wb_data = mem_wb_data_temp;
//////////////////////////////////////////////////////////////
wire [31:0]wb_pc;		
wire [2:0]wb_excvec;	
wire wb_bd;
	MEM_WB_REG  Mem_wb_reg(.clk(clk), 
                       .rst(rst), 
                       .EN(1'b1), 
							  .bubble(wb_exc),
                       .mem_wb_data(mem_wb_data[31:0]), 
                       .mem_wb_dreg(mem_wb_dreg[4:0]), 
                       .mem_wb_we(mem_wb_we), 
							  .mem_bd(mem_bd),
                       .wb_data(wb_data[31:0]), 
                       .wb_dreg(wb_dreg[4:0]), 
                       .wb_we(wb_we),
							  .wb_bd(wb_bd),
							  
							  .mem_pc(mem_pc),
							  .wb_pc(wb_pc),
							  .mem_excvec(mem_excvec),
							  .wb_excvec(wb_excvec));
//////////////////////////////////////////////////////////////
	stall_control  Stall_control(.exe_mem_mem_reg(exe_mem_mem_reg), 
								.exe_wb_dreg(exe_wb_dreg[4:0]), 
								.exe_wb_we(exe_wb_we), 
								.id_rega(id_rega_addr[4:0]), 
								.id_regb(id_regb_addr[4:0]), 
								.id_mem(id_mem),
								._stall_en(IF_ID_stall_));
/////////////////////////////////////////////////////////////
//Exception
reg [5:0]int_reg;
always @(posedge clk)
	int_reg <= {timer_int, int_};
Exception_handler Exc_Handler(
	 .int_reg(int_reg),
    .wb_excvec(wb_excvec), 
    .PC(wb_pc), 
    .bd(wb_bd), 
    .id_eret(id_eret), //influence EXl
    .STATUS_in(STATUS_out), 
    .CAUSE_in(CAUSE_out), 
    .EPC_in(EPC_out), 
    .STATUS_EXL(STATUS_EXL_in), 
    .CAUSE_EXCCODE(CAUSE_EXCCODE_in), 
    .CAUSE_BD(CAUSE_BD_in), 
	 .CAUSE_HIP(CAUSE_HIP_in),
    .EPC_out(EPC_in), 
    .exc_addr(exc_addr), 
    .exc(wb_exc)//include interrupt
    );
	 
endmodule
