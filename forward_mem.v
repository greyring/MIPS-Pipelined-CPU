`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:50 12/09/2017 
// Design Name: 
// Module Name:    forward_mem 
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
module forward_mem(
	input [4:0]mem_wreg,
	input [4:0]wb_dreg,
	input wb_we,
	input [31:0]mem_data_,
	input [31:0]wb_data,
	output reg [31:0]mem_data
    );
always @* begin
	if ((|mem_wreg) & wb_we & wb_dreg == mem_wreg)
		mem_data = wb_data;
	else
		mem_data = mem_data_;
end
endmodule
