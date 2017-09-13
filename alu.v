`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:25 03/28/2017 
// Design Name: 
// Module Name:    alu 
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
module alu(input [31:0]A,
				input [31:0]B,
				input[2:0]ALU_Ctr,
				output reg [31:0]res,
				output zero,
				output reg overflow);
parameter one = 32'h00000001,zero_0=32'h00000000;
wire[31:0] res_and,res_or,res_add_sub,res_nor,res_slt,res_srl,res_xor;

wire overflow_;
adder32_Sklansky adder32(
    .A_in(A), 
    .B_in(B), 
    .add_sub(ALU_Ctr == 3'b110),//sub 
    .res(res_add_sub), 
    .overflow(overflow_)
    );
	assign res_and = A&B;
	assign res_or = A|B;
	assign res_slt = ($signed(A)<$signed(B))?one:zero_0;
	assign res_srl = A>>B[10:6];
	assign res_xor = A^B;
	always@*
		case(ALU_Ctr)
			3'b000:begin
					 res = res_and;
					 overflow = 0;
					 end
			3'b001:begin
					 res = res_or;
					 overflow = 0;
					 end
			3'b010:begin//add
					 res = res_add_sub;
					 overflow = overflow_;
					 end
			3'b110:begin//sub
					 res = res_add_sub;
					 overflow = overflow_;
					 end
			3'b100:begin
					 res = ~res_or;
					 overflow = 0;
					 end
			3'b111:begin
					 res = res_slt;
					 overflow = 0;
					 end
			3'b101:begin
					 res = res_srl;
					 overflow = 0;
					 end
			3'b011:begin
					 res = res_xor;
					 overflow = 0;
					 end
			default:res = 32'hx;
		endcase
	assign zero = (res==0)?1'b1:1'b0;
endmodule
