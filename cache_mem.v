`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:51 10/17/2017 
// Design Name: 
// Module Name:    cache_mem 
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
module cache_mem(
			input clk,
			input [ADDR_WIDTH-1:0]r_addr,
			input r_en,
			output reg [DATA_WIDTH-1: 0]r_data,
			input [ADDR_WIDTH-1:0]w_addr,
			input [DATA_WIDTH-1: 0]w_data,
			input w_en
    );
parameter DATA_WIDTH = 128;
parameter ADDR_WIDTH = 8;
reg [DATA_WIDTH-1:0]data[(1<<ADDR_WIDTH)-1: 0];

always @(posedge clk) begin
	if (w_en)
		data[w_addr]<=w_data;
	if (r_en)
		if (w_en & (w_addr == r_addr))
			r_data <= w_data;
		else
			r_data <= data[r_addr];
end

endmodule
