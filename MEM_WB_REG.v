`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:03 09/04/2017 
// Design Name: 
// Module Name:    MEM_WB_REG 
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
module MEM_WB_REG(
	input clk,
	input rst,
	input EN,
	input bubble,
	
	input [4:0]mem_wb_dreg,
	input [31:0]mem_wb_data,
	input mem_wb_we,
	output [4:0]wb_dreg,
	output [31:0]wb_data,
	output wb_we
    );
reg [37:0]temp = 0;
always @(posedge clk) begin
	if (rst | bubble)
		temp <= 0;
	else if (EN)
		temp <= {mem_wb_dreg, mem_wb_data, mem_wb_we};
	else
		temp <= temp;
end

assign {wb_dreg, wb_data, wb_we} = temp;
endmodule
