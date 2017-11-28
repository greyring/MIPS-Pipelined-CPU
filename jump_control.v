`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:29 09/05/2017 
// Design Name: 
// Module Name:    jump_control 
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
module jump_control(
	input b,
	input j,
	input jr,
	output reg [1:0]s
    );

always @* begin
	if (b)
		s = 2'b01;
	else if (j)
		s = 2'b10;
	else if (jr)
		s = 2'b11;
	else
		s = 2'b00;
end

endmodule
