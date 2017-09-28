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
   output [31:0] mem_data,
	output [31:0] cause_data,//
	output [31:0] status_data,//
   output mem_we,
	output mem_rd
	);
	
   
	wire [31:0]mem_addr_DUMMY;
	wire [31:0]inst_addr_DUMMY;
   assign mem_addr[31:0] = mem_addr_DUMMY[31:0];
	assign inst_addr = inst_addr_DUMMY;

/////////////////////////////////////////////////////////////////////////////
wire CP0_we;
wire [4:0]CP0_dreg;
wire [31:0]CP0_data_in;
wire [31:0]CP0_data_out;
wire [31:0]STATUS_out;
wire [31:0]CAUSE_out;
wire [31:0]EPC_out;
wire INT;//output
wire id_syscall;
wire id_unknown;
wire exe_overflow;
wire id_bj;
wire mem_bj;
wire [31:0]id_pc;
wire [31:0]mem_pc;

wire id_eret;
wire exe_mem_CP0_we;
wire [4:0]exe_mem_CP0_dreg;
wire [31:0]exe_regb;
wire mem_CP0_we;
wire [4:0]mem_CP0_dreg;
wire forward_status;
wire forward_cause;
wire forward_epc;
wire [31:0]mtc0_data;

/*forward_CP0 Forward_CP0(//eret,以及中断和异常的发生要修改CP0，会与mtc0有冲突
    .exe_mem_CP0_we(exe_mem_CP0_we), 
    .exe_mem_CP0_dreg(exe_mem_CP0_dreg[4:0]), 
    .exe_data(exe_regb[31:0]), 
    .mem_CP0_we(mem_CP0_we), 
    .mem_CP0_dreg(mem_CP0_dreg[4:0]), 
    .mem_data(mem_data[31:0]), 
	 
    .forward_status(forward_status),
	 .forward_cause(forward_cause), 
	 .forward_epc(forward_epc), 	 
    .mtc0_data(mtc0_data[31:0])//eret在ID，forward的可能在EXE或者在MEM
    );
*/	 
	CP0 CP0_(
    .clk(clk), 
    .rst(rst), 
	 
    .we(mem_CP0_we), 
    .r_reg(mem_CP0_dreg), 
    .data_in(mem_data), //mtc0
    .data_out(CP0_data_out), //mfc0
	 
    .STATUS_out(STATUS_out), 
    .CAUSE_out(CAUSE_out), 
    .EPC_out(EPC_out), 
    .INT(INT), 
	 
	 .id_eret(id_eret),
    .id_syscall(id_syscall), 
    .id_unknown(id_unknown), 
    .exe_overflow(exe_overflow), 
    .id_bj(id_bj), 
    .mem_bj(mem_bj), 
    .if_pc(inst_addr_DUMMY), 
    .id_pc(id_pc), 
    .mem_pc(mem_pc), 
	 
    .int_(int_)//外部硬件中断，不包括内存等
	 
	 //.forward_status(forward_status),
	 //.forward_cause(forward_cause),
	 //.forward_epc(forward_epc),
	 //.mtc0_data(mtc0_data[31:0])
    );
	 assign cause_data = CAUSE_out;
	 assign status_data = STATUS_out;
////////////////////////////////////////////////////////////////////////
	wire id_beq;
	wire id_ben;
	wire id_eql;
	wire id_j;
	wire id_jr;
	wire [1:0]jump_s;
	jump_control  Jump_control(.beq(id_beq), 
							 .bne(id_bne), 
							 .equal(id_eql), 
							 .j(id_j), 
							 .jr(id_jr), 
							 .s(jump_s[1:0]));
	
	wire [31:0]npc;
	wire [31:0]id_baddr;
	wire [31:0]id_npc;
	wire [31:0]id_inst;
	wire [31:0]id_exe_rega;
	wire [31:0]PC_data_in;
	wire [31:0]PC_jump;
	MUX4T1_32  XLXI_85 (.I0(npc), //npc
						 .I1(id_baddr[31:0]), //b
						 .I2({id_npc[31:28], id_inst[25:0], 2'b0}), //j
						 .I3(id_exe_rega[31:0]), //jr
						 .s(jump_s), 
						 .o(PC_jump));
	
//异常地址 = (STATUS[BEV]? 0x80000000:0xBFC00200) + CAUSE[IV]? 0x200:0x180;
	wire [31:0]Exp_addr;
	Exp_Addr EXP_Addr(
    .INT(INT), 
	 .id_syscall(id_syscall),
	 .id_unknown(id_unknown),
	 .exe_overflow(exe_overflow),
    .BEV(STATUS_out[22]), 
    .CAUSE_IV(CAUSE_out[23]), 
    .exp_addr(Exp_addr)
    );
	
	assign PC_data_in = id_eret? EPC_out : ((INT | id_syscall | id_unknown | exe_overflow)? Exp_addr : PC_jump);
	wire PC_exp;//指示发生了异常或者id_eret
	assign PC_exp = id_eret | INT | id_syscall | id_unknown | exe_overflow;
	
	
//异常时IF阶段bubble
	wire IF_ID_bubble;
	assign IF_ID_bubble = rst| id_eret | ((INT | id_syscall | id_unknown | exe_overflow)?1'b1:1'b0);//异常时，当前正在IF的指令不做，免去了判断branch和jump
	//eret后没有delayed slot ，强行清除
	
	wire IF_ID_stall_;
	REG32  PC(.CE(IF_ID_stall_ | PC_exp),//发生异常时强行写入,异常的优先级比stall高
				  .clk(clk), 
				  .D(PC_data_in), 
				  .rst(rst), 
				  .Q(inst_addr_DUMMY));
	
	adder4  Adder4 (.pc(inst_addr_DUMMY), 
					.nextPc(npc));
					
//////////////////////////////////////////////////////////
	IF_ID_Reg IF_ID(.clk(clk), 
						.EN(IF_ID_stall_), 
						.rst(rst | IF_ID_bubble), 
						.inst(inst_data[31:0]), 
						.npc(npc[31:0]), 
						.pc(inst_addr_DUMMY[31:0]),
						.inst_out(id_inst[31:0]), 
						.npc_out(id_npc[31:0]),
						.id_pc(id_pc[31:0]));
///////////////////////////////////////////////////////////	
	
	wire [3:0]id_exe_aluop;
	wire id_exe_jal;
	wire id_exe_lui;
	wire id_exe_sign;
	wire id_exe_srcb;
	wire [2:0]id_mem_mem_reg;
	wire id_mem_we;
	wire id_mem_rd;
	//wire id_ra;
	wire [4:0]id_wb_dreg;
	wire [4:0]id_rega_addr;
	wire [4:0]id_regb_addr;
	wire id_wb_we;
	wire id_exe_alu_sign;
	wire id_mem_CP0_we;
	wire [4:0]id_mem_CP0_dreg;
	control  Control(.inst(id_inst[31:0]), 
                    .id_beq(id_beq), 
                    .id_bne(id_bne), 
						  .id_j(id_j), 
                    .id_jr(id_jr), 
                    .id_exe_aluop(id_exe_aluop[3:0]), 
                    .id_exe_jal(id_exe_jal), 
                    .id_exe_lui(id_exe_lui), 
                    .id_exe_sign(id_exe_sign), 
                    .id_exe_srcb(id_exe_srcb), 
                    .id_mem_mem_reg(id_mem_mem_reg), 
                    .id_mem_we(id_mem_we), 
						  .id_mem_rd(id_mem_rd),
                    //.id_ra(id_ra), 
                    .id_wb_dreg(id_wb_dreg[4:0]), 
						  .id_rega_addr(id_rega_addr[4:0]),
						  .id_regb_addr(id_regb_addr[4:0]),
                    .id_wb_we(id_wb_we),
						  .id_syscall(id_syscall),
						  .id_unknown(id_unknown),
						  .id_exe_alu_sign(id_exe_alu_sign),
						  .id_eret(id_eret),
						  .id_mem_CP0_we(id_mem_CP0_we),
						  .id_mem_CP0_dreg(id_mem_CP0_dreg));
	assign id_bj = id_beq | id_bne | id_j | id_jr;
	
	
	/*
	wire [4:0]id_rega_addr;
	MUX2T1_5  XLXI_71 (.I0(id_inst[25:21]), 
						.I1(id_inst[20:16]), 
						.s(id_ra), 
						.o(id_rega_addr[4:0]));
	*/
	
	wire wb_we;
	wire [4:0]wb_dreg;
	wire [31:0]wb_data;
	wire [31:0]rdata_A;
	wire [31:0]rdata_B;
   Regs  Reg_file(.clk(~clk), 
                .L_S(wb_we), 
                .rst(rst), 
                .R_addr_A(id_rega_addr), 
                .R_addr_B(id_regb_addr), 
                .Wt_addr(wb_dreg[4:0]), 
                .Wt_data(wb_data[31:0]), 
                .rdata_A(rdata_A[31:0]), 
                .rdata_B(rdata_B[31:0]));
	
	wire [2:0]exe_mem_mem_reg;
	wire [31:0]exe_result;
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
	wire [31:0]id_sign_imm;
	Ext_32  XLXI_76 (.imm_16(id_inst[15:0]), 
					 .Imm_32(id_sign_imm[31:0]));
	adder32_Sklansky add_branch_addr(
    .A_in(id_npc[31:0]), 
    .B_in({id_sign_imm[29:0],2'b0}), 
    .add_sub(1'b0), 
    .res(id_baddr[31:0]), 
    .overflow()
    );
	branch_judge Branch_judge(.rega(id_exe_rega[31:0]), 
							 .regb(id_exe_regb[31:0]), 
							 .equl(id_eql));
						
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

wire id_bubble;
wire [31:0]MUL_EWB_data_out;
	MUL_ALU MUL_ALU_(
		.clk(clk), 
		.rst(rst), 
		.MUL_ID_EXE_rst(rst | id_bubble | exe_overflow), 
		.MUL_ID_sign(MUL_ID_sign), 
		.MUL_ID_we(MUL_ID_we), 
		.MUL_ID_en_c(MUL_ID_en_c), 
		.MUL_ID_add_sub(MUL_ID_add_sub), 
		.MUL_ID_A(id_exe_rega[31:0]), 
		.MUL_ID_B(id_exe_regb[31:0]), 
		.MUL_ID_HiLo(MUL_ID_HiLo[1:0]), 
		.MUL_ID_data(id_exe_rega[31:0]), //选择rs作为rega
		.MUL_ID_mul(MUL_ID_mul), 
		.MUL_EWB_data_out(MUL_EWB_data_out)
   );

//////////////////////////////////////////////////////////////////////
//wire ID_EXE_stall_;
wire [3:0]exe_aluop;
wire [15:0]exe_imme;
wire exe_jal;
wire exe_lui;
wire exe_mem_we;
wire exe_mem_rd;
wire [31:0]exe_npc;
wire [31:0]exe_rega;
wire [31:0]exe_pc;
wire exe_sign;
wire exe_srcb; 
wire exe_bj;
wire exe_alu_sign;
ID_EXE_REG  ID_EXE (.clk(clk), 
                       .EN(1'b1), 
							  .rst(rst | id_bubble | exe_overflow),//当overflow时id阶段bubble 
                       .id_exe_aluop(id_exe_aluop[3:0]), 
                       .id_exe_imme(id_inst[15:0]), 
							  .id_pc(id_pc),
                       .id_exe_jal(id_exe_jal), 
                       .id_exe_lui(id_exe_lui), 
							  .id_bj(id_bj),
                       .id_exe_npc(id_npc[31:0]), 
                       .id_exe_rega(id_exe_rega[31:0]), 
                       .id_exe_regb(id_exe_regb[31:0]), 
                       .id_exe_sign(id_exe_sign), 
                       .id_exe_srcb(id_exe_srcb), 
                       .id_mem_mem_reg(id_mem_mem_reg), 
                       .id_mem_we(id_mem_we), 
							  .id_mem_rd(id_mem_rd),
                       .id_wb_dreg(id_wb_dreg[4:0]), 
                       .id_wb_we(id_wb_we), 
							  .id_exe_alu_sign(id_exe_alu_sign),
							  .id_mem_CP0_we(id_mem_CP0_we),
							  .id_mem_CP0_dreg(id_mem_CP0_dreg),
                       .exe_aluop(exe_aluop[3:0]), 
                       .exe_imme(exe_imme[15:0]), 
							  .exe_pc(exe_pc),
                       .exe_jal(exe_jal), 
							  .exe_bj(exe_bj),
                       .exe_lui(exe_lui), 
                       .exe_mem_mem_reg(exe_mem_mem_reg), 
                       .exe_mem_we(exe_mem_we), 
							  .exe_mem_rd(exe_mem_rd),
                       .exe_npc(exe_npc[31:0]), 
                       .exe_rega(exe_rega[31:0]), 
                       .exe_regb(exe_regb[31:0]), 
                       .exe_sign(exe_sign), 
                       .exe_srcb(exe_srcb), 
                       .exe_wb_dreg(exe_wb_dreg[4:0]), 
                       .exe_wb_we(exe_wb_we),
							  .exe_alu_sign(exe_alu_sign),
							  .exe_mem_CP0_we(exe_mem_CP0_we),
							  .exe_mem_CP0_dreg(exe_mem_CP0_dreg));
//////////////////////////////////////////////////////////////////
	wire [31:0]exe_sign_imme;
	Ext_32  XLXI_43 (.imm_16(exe_imme[15:0]), 
					 .Imm_32(exe_sign_imme[31:0]));
	
	wire [31:0]exe_imme_in;
	MUX2T1_32  XLXI_42 (.I0({16'b0, exe_imme[15:0]}), 
						 .I1(exe_sign_imme[31:0]), 
						 .s(exe_sign), 
						 .o(exe_imme_in[31:0]));
	wire [31:0]exe_b;
	MUX2T1_32  XLXI_13 (.I0(exe_regb[31:0]), 
						 .I1(exe_imme_in[31:0]), 
						 .s(exe_srcb), 
						 .o(exe_b[31:0]));
						 
	wire [31:0]exe_alu_res;
   alu  ALU (.A(exe_rega[31:0]), 
               .ALU_Ctr(exe_aluop[3:0]), 
               .B(exe_b[31:0]), 
               .overflow(exe_overflow), 
					.alu_sign(exe_alu_sign),
               .res(exe_alu_res[31:0]), 
               .zero());//暂时不做overflow
	
	wire [31:0]exe_lui_out;
	MUX2T1_32  XLXI_74 (.I0(exe_alu_res[31:0]), 
						 .I1({exe_imme[15:0], 16'b0}), 
						 .s(exe_lui), 
						 .o(exe_lui_out[31:0]));
	
	wire [31:0]exe_pc_8;
	adder4  XLXI_89 (.pc(exe_npc[31:0]), 
					 .nextPc(exe_pc_8[31:0]));
	
	MUX2T1_32  XLXI_86 (.I0(exe_lui_out[31:0]), 
						 .I1(exe_pc_8[31:0]), 
						 .s(exe_jal), 
						 .o(exe_result[31:0]));
	 
/////////////////////////////////////////////////////////////
	//wire EXE_MEM_stall_;
	wire [2:0]mem_mem_reg;
	EXE_MEM_REG  EXE_MEM_REG (.clk(clk), 
                        .rst(rst),
                        .EN(1'b1), 
                        .exe_mem_addr(exe_result[31:0]), 
                        .exe_mem_data(exe_regb[31:0]),
								.exe_pc(exe_pc),
                        .exe_mem_mem_reg(exe_mem_mem_reg), 
                        .exe_mem_we(exe_mem_we), 
								.exe_mem_rd(exe_mem_rd),
                        .exe_wb_dreg(exe_wb_dreg[4:0]), 
                        .exe_wb_we(exe_wb_we),  
								.exe_bj(exe_bj),
								.exe_mem_CP0_we(exe_mem_CP0_we),
							   .exe_mem_CP0_dreg(exe_mem_CP0_dreg),
                        .mem_addr(mem_addr_DUMMY[31:0]), 
                        .mem_data(mem_data[31:0]), 
								.mem_pc(mem_pc),
                        .mem_mem_reg(mem_mem_reg), 
                        .mem_wb_dreg(mem_wb_dreg[4:0]), 
                        .mem_wb_we(mem_wb_we), 
                        .mem_we(mem_we),
								.mem_rd(mem_rd),
								.mem_bj(mem_bj),
								.mem_CP0_we(mem_CP0_we),
								.mem_CP0_dreg(mem_CP0_dreg));
								
///////////////////////////////////////////////////////////////
/*	wire [31:0]mem_wb_data_temp;
	MUX2T1_32  XLXI_20 (.I0(mem_data_in[31:0]), 
						 .I1(mem_addr_DUMMY[31:0]), //alu result
						 .s(mem_mem_reg), 
						 .o(mem_wb_data_temp[31:0]));		
	
	assign mem_wb_data = mem_mfc? CP0_data_out[31:0] : mem_wb_data_temp[31:0];
*/

reg [31:0]mem_wb_data_temp;
always @* begin
	case(mem_mem_reg)
		3'b000: mem_wb_data_temp = mem_data_in[31:0];//memory
		3'b001: mem_wb_data_temp = mem_addr_DUMMY[31:0];//alu result
		3'b010: mem_wb_data_temp = CP0_data_out[31:0];//CP0 mfc0
		3'b011: mem_wb_data_temp = MUL_EWB_data_out[31:0];//hi/lo/result  mul/mfhi/mflo
		default: mem_wb_data_temp = 32'b0;
	endcase
end
assign mem_wb_data = mem_wb_data_temp;
								
   //wire MEM_WB_stall_;
	MEM_WB_REG  XLXI_18 (.clk(clk), 
                       .rst(rst), 
                       .EN(1'b1), 
                       .mem_wb_data(mem_wb_data[31:0]), 
                       .mem_wb_dreg(mem_wb_dreg[4:0]), 
                       .mem_wb_we(mem_wb_we), 
                       .wb_data(wb_data[31:0]), 
                       .wb_dreg(wb_dreg[4:0]), 
                       .wb_we(wb_we));

//////////////////////////////////////////////////////////////
	stall_control  Stall_control(.exe_mem_mem_reg(exe_mem_mem_reg), 
								.exe_wb_dreg(exe_wb_dreg[4:0]), 
								.exe_wb_we(exe_wb_we), 
								.id_rega(id_rega_addr[4:0]), 
								.id_regb(id_regb_addr[4:0]), 
								.bubble(id_bubble), 
								._stall_en(IF_ID_stall_));
/////////////////////////////////////////////////////////////

	
endmodule
