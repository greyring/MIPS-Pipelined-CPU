`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:28 01/01/2018 
// Design Name: 
// Module Name:    led_controller 
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
module led_controller(
	input clk,
	input rst,
	input [3:0]we,
	input [31:0]wdata,
	output [31:0]rdata,
	output led_clk,
	output led_do,
	output led_pen
    );

reg [15:0]leds = 0;
always @(posedge clk) begin
	if (rst)
		leds <= 0;
	else begin
		leds <= leds;
		if (we[1])
			leds[15:8] <= wdata[15:8];
		if (we[0])
			leds[7:0] <= wdata[7:0];
	end
end

assign rdata = {16'b0, leds};

led_parallel2serial P2S(
    .clk(clk), 
    .rst(rst), 
    .data(leds), 
    .led_en(1'b1), 
    .busy(), 
    .finish(), 
    .led_clk(led_clk), 
    .led_pen(led_pen), 
    .led_dat(led_do)
    );
endmodule
