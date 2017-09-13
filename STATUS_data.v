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
	input forward_status,
	input [31:0]mtc0_status,
	output reg [31:0]STATUS_in,
	input [31:0]STATUS_out
    );
always @* begin//这种赋值方式可能会出问题
	if (id_eret)
		if (forward_status)
			STATUS_in = {mtc0_status[31:2], 1'b0, mtc0_status[0]};
		else
			STATUS_in = {STATUS_out[31:2], 1'b0, STATUS_out[0]};//eret 清除EXL
	else if (INT | id_syscall | id_unknown | exe_overflow)
		STATUS_in = {STATUS_out[31:2], 1'b1, STATUS_out[0]};
	else
		STATUS_in = STATUS_out;
end

endmodule
