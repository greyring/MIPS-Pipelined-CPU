`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:58 09/09/2017 
// Design Name: 
// Module Name:    CP0 
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
module CP0(//≤ª¥¶¿Ìharzard
	input clk,
	input rst,
	
	input we,
	input [4:0]r_reg,
	input [31:0]data_in,
	output reg [31:0]data_out,
	
	input STATUS_EXL,
	output [31:0]STATUS_out,
	
	input CAUSE_BD,
	input [4:0]int_,
	input [4:0]CAUSE_EXCCODE,
	output [31:0]CAUSE_out,
	
	input [31:0]EPC_in,
	output [31:0]EPC_out
    );

////////////////////////////////////////////////////////
//COUNT and COMPARE
	wire [31:0]COUNT_out;
	Count COUNT(
    .clk(clk), 
    .Q(COUNT_out)
    );
	 
	wire [31:0]COMPARE_out;
	wire timer_int;
	Compare COMPARE(
    .clk(clk), 
    .rst(rst), 
    .we(compare_we), 
    .mtcd(data_in), 
    .Q(COMPARE_out), 
	 
	 .count(COUNT_out), 
    .timer_int(timer_int)
    );
/////////////////////////////////////////////////////////////////
	wire [31:0]STATUS_in;
	wire status_we;
	Status STATUS(
    .clk(clk), 
    .rst(rst), 
    .we(status_we), 
    .mtcd(data_in), 
    .EXL_(STATUS_EXL),
    .Q(STATUS_out)
    );

	wire [31:0]CAUSE_in;
	wire cause_we;
	Cause CAUSE(
    .clk(clk), 
    .rst(rst), 
    .we(cause_we), 
    .mtcd(data_in), 
    .BD_(CAUSE_BD), 
    .int_(int_), 
    .ExcCode_(CAUSE_EXCCODE), 
    .Q(CAUSE_out)
    );
	
	wire epc_we;
	Epc  EPC( //14
			  .clk(clk),  
			  .we(epc_we),
			  .mtcd(data_in),
			  .D(EPC_in), 
			  .rst(rst), 
			  .Q(EPC_out));
////////////////////////////////////////////////////
always @* begin
	case (r_reg)
		5'd9 : data_out = COUNT_out;
		5'd11: data_out = COMPARE_out;
		5'd12: data_out = STATUS_out;
		5'd13: data_out = CAUSE_out;
		5'd14: data_out = EPC_out;
		default: data_out = 32'b0;
	endcase
end

assign compare_we = we & (r_reg == 5'd11);
assign status_we = we & (r_reg == 5'd12);
assign cause_we = we & (r_reg == 5'd13);
assign epc_we = we & (r_reg == 5'd14);

endmodule
