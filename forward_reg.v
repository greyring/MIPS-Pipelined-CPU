`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:36 09/05/2017 
// Design Name: 
// Module Name:    forwar_rega 
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
module forward_reg(
	input [4:0]id_reg,
	input [31:0]id_out,
	input exe_wb_we,
	input [4:0]exe_wb_dreg,
	input [31:0]exe_out,
	input mem_wb_we,
	input [4:0]mem_wb_dreg,
	input [31:0]mem_out,
	output reg [31:0]id_exe_reg,
	input [2:0]exe_mem_mem_reg
    );
//mem阶段的forward条件：有一条指令要向当前用到的寄存器写入,且写入的不是0寄存器
//exe阶段的forward条件：有一条指令要向当前用到的寄存器写入,且写入的不是0寄存器，写入数据的来源在EXE的后阶段生成，并一直稳定到写入

//forward的数据：优先选择EXE即将进入MEM的结果， 之后选用MEM阶段最终会WB的结果（由触发条件保证）
always @* begin
	id_exe_reg = id_out;
	//当id_reg为0时是不会发生forward的
	if (mem_wb_we & (mem_wb_dreg != 0) & (id_reg == mem_wb_dreg))//要判断目标寄存器是否为0， 一般都不会出现
		id_exe_reg = mem_out;
	if (exe_wb_we & (exe_wb_dreg != 0) & (id_reg == exe_wb_dreg) & (exe_mem_mem_reg == 3'b001))//注意jalr和jal
		id_exe_reg = exe_out;
end

endmodule
