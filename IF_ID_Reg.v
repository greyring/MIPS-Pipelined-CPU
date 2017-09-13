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
	input [31:0]inst,
	input [31:0]npc,
	input [31:0]pc,
	output [31:0]inst_out,
	output [31:0]npc_out,
	output [31:0]id_pc
    );

reg [95:0]temp = 96'b0;

always @(posedge clk) begin
	if (rst)
		temp <= 96'b0;
	else if (EN)
		temp <= {inst, npc, pc};
	else
		temp <= temp;
end

assign {inst_out, npc_out, id_pc} = temp;

endmodule
