`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:14 09/04/2017 
// Design Name: 
// Module Name:    output_led 
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
module output_led(
	input clk,
	input rst,
	input we,
	input [15:0]led_in,
	output led_clk,
	output led_pen,
	output led_do,
	output [15:0]led_out
    );

reg [15:0]leds = 16'b0;
always @(posedge clk) begin
	if (rst)
		leds <= 16'b0;
	else if (we)
		leds <= led_in;
	else
		leds <= leds;
end

led_parallel2serial p2s(
    .clk(clk), 
    .rst(rst), 
    .data(leds), //
    .led_en(1'b1), 
    .busy(), 
    .finish(), 
    .led_clk(led_clk), 
    .led_pen(led_pen), 
    .led_dat(led_do)
    );

endmodule
