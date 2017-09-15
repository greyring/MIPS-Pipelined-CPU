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
	input [31:0]exe_mem_addr,
	input [31:0]exe_mem_data,
	input [31:0]exe_pc,
	input exe_mem_we,
	input exe_mem_rd,
	input [2:0]exe_mem_mem_reg,
	input [4:0]exe_wb_dreg,
	input exe_wb_we,
	input exe_bj,
	input exe_mem_CP0_we,
	input [4:0]exe_mem_CP0_dreg,
	
	output [31:0]mem_addr,
	output [31:0]mem_data,
	output [31:0]mem_pc,
	output mem_we,
	output mem_rd,
	output [2:0]mem_mem_reg,
	output [4:0]mem_wb_dreg,
	output mem_wb_we,
	output mem_bj,
	output mem_CP0_we,
	output [4:0]mem_CP0_dreg
    );
reg [113:0]temp = 114'b0;
always @(posedge clk) begin
	if (rst)
		temp <= 114'b0;
	else if (EN)
		temp <= {exe_mem_addr, exe_mem_data, exe_pc, exe_mem_we, exe_mem_rd, 
					exe_mem_mem_reg, exe_wb_dreg, exe_wb_we, exe_bj
					,exe_mem_CP0_we, exe_mem_CP0_dreg};
	else
		temp <= temp;
end

assign {mem_addr, mem_data, mem_pc, mem_we, mem_rd, mem_mem_reg, mem_wb_dreg, mem_wb_we, mem_bj
			,mem_CP0_we, mem_CP0_dreg} = temp;

endmodule
