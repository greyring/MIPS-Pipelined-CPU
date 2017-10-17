`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:56 10/17/2017 
// Design Name: 
// Module Name:    LUT_countdown 
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
module LUT_countdown(
	input [1:0]cur_count,
	output reg [1:0]nxt_count
    );

always @* begin
	case (cur_count)
		2'b11:nxt_count = 2'b10;
		2'b10:nxt_count = 2'b01;
		2'b01:nxt_count = 2'b00;
		2'b00:nxt_count = 2'b00;
	endcase
end


endmodule
