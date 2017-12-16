`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:42 09/06/2017 
// Design Name: 
// Module Name:    anti_jitter 
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
module anti_jitter #(
	parameter WIDTH = 20,
	parameter INIT = 1'b0
)(
	input clk, input in, output reg out = INIT
);
	reg [WIDTH-1:0] cnt = {WIDTH{INIT}};

	always @ (posedge clk)
	begin
		if(in)
		begin
			if(&cnt)
				out <= 1'b1;
			else
				cnt <= cnt + 1'b1;
		end
		else
		begin
			if(|cnt)
				cnt <= cnt - 1'b1;
			else
				out <= 1'b0;
		end
	end

endmodule
