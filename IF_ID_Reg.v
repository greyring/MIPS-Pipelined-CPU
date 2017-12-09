`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:20 09/04/2017 
// Design Name: 
// Module Name:    IF_ID_Reg 
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
module IF_ID_Reg(
	input clk,
	input rst,
	input EN,
	input bubble,
	
	input [31:0]inst,
	input [31:0]npc,
	input [31:0]pc,
	input if_bd,
	output [31:0]inst_out,
	output [31:0]npc_out,
	output [31:0]id_pc,
	output id_bd
    );

reg [64:0]temp = 0;

always @(posedge clk or posedge rst) begin
	if (rst | bubble)
		temp <= 0;
	else if (EN)
		temp <= {inst, npc, if_bd};
	else
		temp <= temp;
end

reg [31:0]temp1 = 0;
always @(posedge clk) begin
	if (rst)
		temp1 <= 0;
	else if (EN)
		temp1 <= pc;
	else
	   temp1 <= temp1;
end

assign {inst_out, npc_out, id_bd} = temp;
assign id_pc = temp1;

endmodule
