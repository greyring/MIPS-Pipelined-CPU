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
	input [4:0]exe_wb_dreg,
	input exe_mem_mem_reg,
	input exe_wb_we,
	output reg _stall_en,//stall时为0
	output reg bubble//stall时为1
    );
	 
always @* begin
	if (exe_wb_we == 1'b1 && exe_mem_mem_reg == 1'b0 &&
			(exe_wb_dreg != 0) &&//虽然不判断0也是可以的
			((exe_wb_dreg == id_rega) || (exe_wb_dreg == id_regb))) begin
			_stall_en = 0;
			bubble = 1;
	end
	else begin
		_stall_en = 1;
		bubble = 0;
	end
end


endmodule
