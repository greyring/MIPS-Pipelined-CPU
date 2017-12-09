`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:21 09/04/2017 
// Design Name: 
// Module Name:    EXE_MEM_REG 
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
module EXE_MEM_REG(
	input clk,
	input rst,
	input EN,
	input bubble,
	
	input [31:0]exe_mem_addr,
	input [31:0]exe_mem_data,
	input [1:0]exe_mem_ctrl,
	input [1:0]exe_mem_op,
	input [4:0]exe_mem_wreg,
	input [2:0]exe_mem_mem_reg,
	input [4:0]exe_wb_dreg,
	input exe_wb_we,
	input exe_bd,
	input exe_mem_CP0_we,
	input [4:0]exe_mem_CP0_dreg,
	
	output [31:0]mem_addr,
	output [31:0]mem_data,
	output [1:0]mem_ctrl,
	output [1:0]mem_op,
	output [4:0]mem_wreg,
	output [2:0]mem_mem_reg,
	output [4:0]mem_wb_dreg,
	output mem_wb_we,
	output mem_bd,
	output mem_CP0_we,
	output [4:0]mem_CP0_dreg,
   
	input [31:0]exe_pc,
	output [31:0]mem_pc,
	input [2:0]exe_excvec,
	output [2:0]mem_excvec);
reg [88:0]temp = 0;
always @(posedge clk or posedge rst) begin
	if (rst|bubble)
		temp <= 0;
	else if (EN)
		temp <= {exe_mem_addr, exe_mem_data, exe_mem_ctrl, exe_mem_op, exe_mem_wreg, 
					exe_mem_mem_reg, exe_wb_dreg, exe_wb_we, exe_bd
					,exe_mem_CP0_we, exe_mem_CP0_dreg};
	else
		temp <= temp;
end

reg [34:0]temp1;
always @(posedge clk or posedge rst) begin
	if (rst)
		temp1 <= 0;
	else if (EN)
		temp1 <= {exe_pc, exe_excvec};
	else
		temp1 <= temp1;
end

assign {mem_addr, mem_data, mem_ctrl, mem_op, mem_wreg, mem_mem_reg, mem_wb_dreg, mem_wb_we, mem_bd
			,mem_CP0_we, mem_CP0_dreg} = temp;
assign {mem_pc, mem_excvec} = temp1;
endmodule
