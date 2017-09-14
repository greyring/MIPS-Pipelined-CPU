`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:22 09/11/2017 
// Design Name: 
// Module Name:    STATUS_data 
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
module STATUS_data(
	input INT,
	input id_eret,
	input id_syscall,
	input id_unknown,
	input exe_overflow,
	output [31:0]STATUS_in,
	input [31:0]STATUS_out
    );

reg [31:0]temp;
assign STATUS_in = temp;

wire [31:0]dummy_1;
assign dummy_1 = {STATUS_out[31:2], 1'b0, STATUS_out[0]};
wire [31:0]dummy_2;
assign dummy_2 = {STATUS_out[31:2], 1'b1, STATUS_out[0]};

always @* begin
	if (id_eret)
		temp = dummy_1;//eret Çå³ýEXL
	else if (INT | id_syscall | id_unknown | exe_overflow)
		temp = dummy_2;
	else
		temp = STATUS_out;
end

endmodule
