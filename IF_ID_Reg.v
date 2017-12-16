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
	output [31:0]inst_out,
	output [31:0]npc_out,
	
	input [31:0]pc,
	output [31:0]id_pc,
	input if_bd,
	output id_bd,
	input [5:0]if_int,
	output [5:0]id_int
    );

reg [63:0]temp = 0;

always @(posedge clk) begin
	if (rst | bubble)
		temp <= 0;
	else if (EN)
		temp <= {inst, npc};
	else
		temp <= temp;
end

reg [38:0]temp1 = 0;
always @(posedge clk) begin
	if (rst)
		temp1 <= 0;
	else if (EN)
		temp1 <= {pc, if_bd, if_int};
	else
	   temp1 <= temp1;
end

assign {inst_out, npc_out} = temp;
assign {id_pc, id_bd, id_int} = temp1;

endmodule
