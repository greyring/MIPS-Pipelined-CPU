`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:07 09/05/2017 
// Design Name: 
// Module Name:    stall_control 
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
module stall_control(
	input [4:0]id_rega,
	input [4:0]id_regb,
	input id_mem,
	input [4:0]exe_wb_dreg,
	input [2:0]exe_mem_mem_reg,
	input exe_wb_we,
	output reg _stall_en//0:stall 1:no stall
    );
//对那些类lw指令，在MEM时数据才稳定的指令进行stall且后一条不是sw mtc0
always @* begin
	if (exe_wb_we == 1'b1 && (exe_mem_mem_reg == 3'b000 | exe_mem_mem_reg == 3'b010 | exe_mem_mem_reg == 3'b011) &&
			(exe_wb_dreg != 0) && 
			((exe_wb_dreg == id_rega) || ((~id_mem)&&(exe_wb_dreg == id_regb)))) begin
			_stall_en = 0;
	end
	else begin
		_stall_en = 1;
	end
end


endmodule
