`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:56 09/05/2017 
// Design Name: 
// Module Name:    branch_judge 
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
module branch_judge(
	input [31:0]rega,
	input [31:0]regb,
	input [2:0]branch_cond,
	output reg b
    );
wire equl;
wire _zero;
wire great;
assign equl = rega == regb;
assign _zero = |rega;

always @* begin
	case (branch_cond)
	  3'd1: b = equl;
	  3'd2: b = ~equl;
	  3'd3: b = rega[31] | ~_zero;//blez
	  3'd4: b = ~rega[31] & _zero;//bgtz
	  3'd5: b = rega[31];//bltz
	  3'd6: b = ~rega[31];//bgez
	  default: b = 0;
	endcase
end
endmodule
