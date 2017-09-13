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
	input exe_mem_mem_reg
    );
always @* begin
	id_exe_reg = id_out;
	if (mem_wb_we & (mem_wb_dreg != 0) & (id_reg == mem_wb_dreg))//要判断目标寄存器是否为0， 一般都不会出现
		id_exe_reg = mem_out;
	if (exe_wb_we & (exe_wb_dreg != 0) & (id_reg == exe_wb_dreg) & (exe_mem_mem_reg == 1'b1))
	//因为有stall的存在所以lw和运算指令如果要forward， 不会在exe内， 但还是加上以防万一
		id_exe_reg = exe_out;
end

endmodule
