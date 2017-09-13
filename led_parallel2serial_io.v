/**
 * LED Parallel-Serial Converter.
 * Author: Frank Shaw    <xiaoqingzhe@gmail.com>
 */

module led_parallel2serial (
	input wire clk,  // main clock should be 200MHz
	input wire rst,  // synchronous reset
	input wire [15:0] data,  // parallel input data
	input wire led_en,	// led enable signal
	output reg busy,  // busy flag
	output reg finish,  // finish acknowledgement
	output reg led_clk = 0,  // serial clock
	output wire led_pen,	// serial enable output
	output wire led_dat  // serial output data
	);
	
endmodule
