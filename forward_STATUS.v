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
module forward_CP0(//用于forward mtc0
	input exe_mem_CP0_we,
	input [4:0]exe_mem_CP0_dreg,
	input [31:0]exe_data,
	input mem_CP0_we,
	input [4:0]mem_CP0_dreg,
	input [31:0]mem_data,
	
	output forward_status,
	output forward_cause,
	output forward_epc,
	output reg [31:0]mtc0_data
    );
//forward成立的条件：当前需要而且
	assign forward_status = (exe_mem_CP0_we & exe_mem_CP0_dreg == 5'd12)
									|(mem_CP0_we & mem_CP0_dreg == 5'd12);
	assign forward_cause = (exe_mem_CP0_we & exe_mem_CP0_dreg == 5'd13)
									|(mem_CP0_we & mem_CP0_dreg == 5'd13);
	assign forward_epc = (exe_mem_CP0_we & exe_mem_CP0_dreg == 5'd14)
									|(mem_CP0_we & mem_CP0_dreg == 5'd14);
	always @* begin
		if (exe_mem_CP0_we)//先exe后mem
			mtc0_data = exe_data;
		else
			mtc0_data = mem_data;
	end
endmodule
