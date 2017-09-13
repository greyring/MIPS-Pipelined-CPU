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

//IPÎ»Ëø´æ
always @* begin
	if (rst)
		cause[15:8] = 8'b0;
	else
		cause[15:8] = D[15:8];
end

/*always @(negedge clk) begin
	if (we) begin
		cause[31:16]<=mtcd[31:16];
		cause[7:0] <= mtcd[7:0];
	end
	else begin
		cause[31:16] <= cause[31:16];
		cause[7:0] <= cause[7:0];
	end
end
*/

always @(posedge clk) begin
	if (rst) begin
		cause[31:16]<=16'h0000;
		cause[7:0] <= 8'b0;
	end
	else if (we) begin
		cause[31:16]<=mtcd[31:16];
		cause[7:0] <= mtcd[7:0];
	end
	else begin
		cause[31:16]<=D[31:16];
		cause[7:0]<=D[7:0];
	end
end

assign Q = cause;

endmodule
