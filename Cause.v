`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:33 09/12/2017 
// Design Name: 
// Module Name:    Cause 
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
module Cause(input clk,
			 input rst,
			 input we,
			 input [31:0]mtcd,
			 input [31:0]D,
			 output [31:0]Q
    );
reg [31:0] cause = 32'h00000000;

/*//IP位锁存
always @* begin
	if (rst)
		cause[15:8] = 8'b0;
	else
		cause[15:8] = D[15:8];
end
*/

always @(posedge clk) begin//同步取样（减小时序问题）
	if (rst) 
		cause <= 32'h0000;
	else if (we)
		cause <= mtcd;
	else cause <= D;
end

assign Q = cause;

endmodule
