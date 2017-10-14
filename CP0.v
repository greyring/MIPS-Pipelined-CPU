`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:58 09/09/2017 
// Design Name: 
// Module Name:    CP0 
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
module CP0(//不处理harzard
	input clk,
	input rst,
	
	input we,
	input [4:0]r_reg,
	input [31:0]data_in,
	output reg [31:0]data_out,
	
	output [31:0]STATUS_out,
	output [31:0]CAUSE_out,
	output [31:0]EPC_out,
	output INT,
	
	input id_eret,
	input id_syscall,
	input id_unknown,
	input exe_overflow,
	input id_bj,
	input mem_bj,
	input [31:0]if_pc,
	input [31:0]id_pc,
	input [31:0]mem_pc,
	
	input [4:0]int_
	
	//input forward_status,
	//将在EXE的写入status的mtc0指令forward，为1时表示forward条件成立
	//只有eret与中断和异常的时候会使用forward的值？因为mtc0不会有harzards
	//input forward_cause,
	//input forward_epc,
	//input [31:0]mtc0_data
    );

////////////////////////////////////////////////////////
//COUNT与COMPARE
	//wire count_we;
	wire [31:0]COUNT_out;
	Count COUNT(
    .clk(clk), 
    .rst(rst), 
    .we(compare_we), 
    //.D(data_in), 
    .Q(COUNT_out)
    );
	 
	wire [31:0]COMPARE_out;
	wire timer_int;
	Compare COMPARE(
    .clk(clk), 
    .rst(rst), 
    .count(COUNT_out), 
    .we(compare_we), 
    .D(data_in), 
    .Q(COMPARE_out), 
    .timer_int(timer_int)
    );
/////////////////////////////////////////////////////////////////
//interrupt status cause epc	 
	wire [31:0]STATUS_out_DUMMY;
	wire [31:0]STATUS_in;
	wire status_we;
	Status  STATUS(//[22]BEV 0:normal 1:boot 12 [0]IE  [1]EXL [2]ERL [15:8]IM
				.clk(clk), 
				.we(status_we),
				.mtcd(data_in),
				.D(STATUS_in), 
				.rst(rst), 
				.Q(STATUS_out_DUMMY));
				
	wire [31:0]CAUSE_out_DUMMY;
	wire [31:0]CAUSE_in;
	wire cause_we;
	Cause  CAUSE(//13 [31]BD [23]IV offset 0:0x180 1:0x200 [15:8]IP [6:2]exe [1:0]0
				.clk(clk), 
				.we(cause_we),
				.mtcd(data_in),
				.D(CAUSE_in), 
				.rst(rst), 
				.Q(CAUSE_out_DUMMY));
	
	wire [31:0]EPC_in;
	wire [31:0]EPC_out_DUMMY;
	wire epc_we;
	Epc  EPC( //14
			  .clk(clk),  
			  .we(epc_we),
			  .mtcd(data_in),
			  .D(EPC_in), 
			  .rst(rst), 
			  .Q(EPC_out_DUMMY));
	
	assign STATUS_out = STATUS_out_DUMMY;
	assign CAUSE_out = CAUSE_out_DUMMY;
	assign EPC_out = EPC_out_DUMMY;
		 
	assign INT = (|(CAUSE_out_DUMMY[15:8] & STATUS_out_DUMMY[15:8])) 
					& ~STATUS_out_DUMMY[1] & ~STATUS_out_DUMMY[2] & STATUS_out_DUMMY[0];
	 
	EPC_data EPC_Data(//生成正常情况下(非mtc0)EPC的输入数据
	 .EXL(STATUS_out_DUMMY[1]),
	 .mem_bj(mem_bj),
    .id_bj(id_bj), 
    .INT(INT), 
	 .id_syscall(id_syscall),
	 .id_unknown(id_unknown),
	 .exe_overflow(exe_overflow),
    .id_pc(id_pc), 
    .if_pc(if_pc),
	 .mem_pc(mem_pc),
    .EPC_out(EPC_out_DUMMY), 
    .EPC_in(EPC_in)
    );
    
	 
	//[22]BEV 0:normal 1:boot 12 [0]IE  [1]EXL [2]ERL [15:8]IM
	STATUS_data STATUS_Data(
	 .id_eret(id_eret),
	 .id_syscall(id_syscall),
	 .id_unknown(id_unknown),
	 .exe_overflow(exe_overflow),
    .INT(INT),  
    .STATUS_out(STATUS_out),
	 .STATUS_in(STATUS_in)
    );
		
	//if id阶段的是跳转 bd = 1, if INT, exe = 0, if syscall exe = 08, if unknown exe = 0a, if overflow exe = 0c
	CAUSE_data CAUSE_Data(
	 .int_({timer_int, int_}),//IP7 is counter interrupt
	 .EXL(STATUS_out[1]),
	 .INT(INT), 
    .id_syscall(id_syscall), 
    .id_unknown(id_unknown), 
    .exe_overflow(exe_overflow), 
    .id_bj(id_bj), 
	 .mem_bj(mem_bj),
    .cause_out(CAUSE_out), 
    .cause_in(CAUSE_in)
    );
////////////////////////////////////////////////////
	 
always @* begin
	case (r_reg)
		5'd9 : data_out = COUNT_out;
		5'd11: data_out = COMPARE_out;
		5'd12: data_out = STATUS_out_DUMMY;
		5'd13: data_out = CAUSE_out_DUMMY;
		5'd14: data_out = EPC_out_DUMMY;
		default: data_out = 32'b0;
	endcase
end

//assign count_we = we & (r_reg == 5'd9);
assign compare_we = we & (r_reg == 5'd11);
assign status_we = we & (r_reg == 5'd12);
assign cause_we = we & (r_reg == 5'd13);
assign epc_we = we & (r_reg == 5'd14);

endmodule
