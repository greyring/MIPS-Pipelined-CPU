`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:45 09/12/2017 
// Design Name: 
// Module Name:    Epc 
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
module Epc(input clk,
			 input rst,
			 input we,
			 input [31:0]mtcd,
			 input [31:0]D,
			 output [31:0]Q
    );
reg [31:0] epc = 0;

always @(posedge clk ) begin
	if (rst) epc<=0;
	else if (we) epc<=mtcd;
	else epc<=D;
end

assign Q = epc;

endmodule
