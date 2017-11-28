`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:21 09/04/2017 
// Design Name: 
// Module Name:    ID_EXE_REG 
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
module ID_EXE_REG(
	input clk,
	input rst,
	input EN,
	
	input [3:0]id_exe_aluop,
	input [31:0]id_exe_rega,
	input [31:0]id_exe_regb,
	input [15:0]id_exe_imme,
	input [31:0]id_exe_npc,
	input [31:0]id_pc,
	input id_exe_sign,
	input id_exe_imm,
	input id_exe_lui,
	input id_exe_jal,
	input id_bj,
	
	input [1:0]id_mem_ctrl,
	input [1:0]id_mem_op,
	input [4:0]id_mem_wreg,
	input [2:0]id_mem_mem_reg,
	input [4:0]id_wb_dreg,
	input id_wb_we,
	input id_exe_alu_sign,
	input id_mem_CP0_we,
	input [4:0]id_mem_CP0_dreg,
	
	output [3:0]exe_aluop,
	output [31:0]exe_rega,
	output [31:0]exe_regb,
	output [15:0]exe_imme,
	output [31:0]exe_npc,
	output [31:0]exe_pc,
	output exe_sign,
	output exe_imm,
	output exe_lui,
	output exe_jal,
	output exe_bj,
	
	output [1:0]exe_mem_ctrl,
	output [1:0]exe_mem_op,
	output [4:0]exe_mem_wreg,
	output [2:0]exe_mem_mem_reg,
	output [4:0]exe_wb_dreg,
	output exe_wb_we,
	output exe_alu_sign,
	output exe_mem_CP0_we,
	output [4:0]exe_mem_CP0_dreg
    );

reg [177:0]temp = 178'b0;
always @(posedge clk) begin
	if (rst)
		temp <= 178'b0;
	else if (EN) 
		temp <= {id_exe_aluop, id_exe_rega, id_exe_regb, id_exe_imme, id_pc, id_exe_npc, 
					id_exe_sign, id_exe_imm, id_exe_lui,
					id_exe_jal, id_bj, id_mem_ctrl, id_mem_op, id_mem_wreg, id_mem_mem_reg, 
					id_wb_dreg, id_wb_we, id_exe_alu_sign,
					id_mem_CP0_we, id_mem_CP0_dreg};
	else
		temp <= temp;
end

assign {exe_aluop, exe_rega, exe_regb, exe_imme, exe_pc, exe_npc, 
         exe_sign, exe_imm, exe_lui, exe_jal, exe_bj,
			exe_mem_ctrl, exe_mem_op, exe_mem_wreg, exe_mem_mem_reg,	
			exe_wb_dreg, exe_wb_we, exe_alu_sign,
			exe_mem_CP0_we, exe_mem_CP0_dreg} = temp;
			
endmodule
