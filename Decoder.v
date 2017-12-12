`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:01 12/12/2017 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(
	input [15:0]onehot,
	output reg [3:0]addr
    );
always @* begin
	casex(onehot)
		16'b1xxx_xxxx_xxxx_xxxx: addr = 4'd15;
		16'b01xx_xxxx_xxxx_xxxx: addr = 4'd14;
		16'b001x_xxxx_xxxx_xxxx: addr = 4'd13;
		16'b0001_xxxx_xxxx_xxxx: addr = 4'd12;
		16'b0000_1xxx_xxxx_xxxx: addr = 4'd11;
		16'b0000_01xx_xxxx_xxxx: addr = 4'd10;
		16'b0000_001x_xxxx_xxxx: addr = 4'd9;
		16'b0000_0001_xxxx_xxxx: addr = 4'd8;
		16'b0000_0000_1xxx_xxxx: addr = 4'd7;
		16'b0000_0000_01xx_xxxx: addr = 4'd6;
		16'b0000_0000_001x_xxxx: addr = 4'd5;
		16'b0000_0000_0001_xxxx: addr = 4'd4;
		16'b0000_0000_0000_1xxx: addr = 4'd3;
		16'b0000_0000_0000_01xx: addr = 4'd2;
		16'b0000_0000_0000_001x: addr = 4'd1;
		16'b0000_0000_0000_0001: addr = 4'd0;
		default: addr = 4'd0;
	endcase
end
endmodule
