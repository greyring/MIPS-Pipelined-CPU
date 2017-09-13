`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:46 09/11/2017 
// Design Name: 
// Module Name:    CAUSE_data 
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
module CAUSE_data(
	input [5:0]int_,
	input EXL,
	input id_bj,
	input id_syscall,
	input id_unknown,
	input exe_overflow,
	input INT,
	input mem_bj,
	input [31:0]cause_out,
	output [31:0]cause_in
    );

reg [31:0]temp;
assign cause_in = temp;
always @* begin
	temp[15:10] = int_[5:0];
	temp[9:7] = cause_out[9:7];
	temp[30:16] = cause_out[30:16];
	temp[1:0] = 2'b0;
	if (INT) begin
		temp[6:2] = 5'h00;
		temp[31] = EXL? cause_out[31]:id_bj;
	end
	else if (id_syscall) begin
		temp[6:2] = 5'h08;
		temp[31] = EXL? cause_out[31]: 1'b0;
	end
	else if (id_unknown) begin
		temp[6:2] = 5'h0a;
		temp[31] = EXL? cause_out[31]: 1'b0;
	end
	else if (exe_overflow) begin
		temp[6:2] = 5'h0c;
		temp[31] = EXL? cause_out[31]: mem_bj;
	end
	else begin
		temp[6:2] = cause_out[6:2];
		temp[31] = cause_out[31];
	end

end

endmodule
