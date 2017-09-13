`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:22 09/12/2017 
// Design Name: 
// Module Name:    forward_STATUS 
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
module forward_STATUS(
	input exe_mem_CP0_we,
	input [4:0]exe_mem_CP0_dreg,
	input [31:0]exe_data,
	input mem_CP0_we,
	input [4:0]mem_CP0_dreg,
	input [31:0]mem_data,
	output forward_status,
	output reg [31:0]mtc0_status
    );
	 assign forward_status = (exe_mem_CP0_we & exe_mem_CP0_dreg == 5'd12)
									|(mem_CP0_we & mem_CP0_dreg == 5'd12);
	always @* begin
		if (exe_mem_CP0_we & exe_mem_CP0_dreg == 5'd12)//œ»exe∫Ûmem
			mtc0_status = exe_data;
		else
			mtc0_status = mem_data;
	end


endmodule
