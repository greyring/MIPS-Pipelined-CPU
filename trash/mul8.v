`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:45 09/13/2017 
// Design Name: 
// Module Name:    mul8 
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
module mul8(
	input [7:0]A,
	input [7:0]B,
	output [15:0]C
    );

wire c1_1_1, s1_1_1;
half_adder ha1_1_1 (
.a(A[0] & B[1]),.b(A[1] & B[0]),.p(s1_1_1),.g(c1_1_1)
);
wire c1_2_1, s1_2_1;
full_adder fa1_2_1 (
.a(A[0] & B[2]),.b(A[1] & B[1]),.c(A[2] & B[0]),.s(s1_2_1),.co(c1_2_1)
);
wire c1_3_1, s1_3_1;
full_adder fa1_3_1 (
.a(A[0] & B[3]),.b(A[1] & B[2]),.c(A[2] & B[1]),.s(s1_3_1),.co(c1_3_1)
);
wire c1_4_1, s1_4_1;
full_adder fa1_4_1 (
.a(A[0] & B[4]),.b(A[1] & B[3]),.c(A[2] & B[2]),.s(s1_4_1),.co(c1_4_1)
);
wire c1_4_2, s1_4_2;
half_adder ha1_4_2 (
.a(A[3] & B[1]),.b(A[4] & B[0]),.p(s1_4_2),.g(c1_4_2)
);
wire c1_5_1, s1_5_1;
full_adder fa1_5_1 (
.a(A[0] & B[5]),.b(A[1] & B[4]),.c(A[2] & B[3]),.s(s1_5_1),.co(c1_5_1)
);
wire c1_5_2, s1_5_2;
full_adder fa1_5_2 (
.a(A[3] & B[2]),.b(A[4] & B[1]),.c(A[5] & B[0]),.s(s1_5_2),.co(c1_5_2)
);
wire c1_6_1, s1_6_1;
full_adder fa1_6_1 (
.a(A[0] & B[6]),.b(A[1] & B[5]),.c(A[2] & B[4]),.s(s1_6_1),.co(c1_6_1)
);
wire c1_6_2, s1_6_2;
full_adder fa1_6_2 (
.a(A[3] & B[3]),.b(A[4] & B[2]),.c(A[5] & B[1]),.s(s1_6_2),.co(c1_6_2)
);
wire c1_7_1, s1_7_1;
full_adder fa1_7_1 (
.a(A[0] & B[7]),.b(A[1] & B[6]),.c(A[2] & B[5]),.s(s1_7_1),.co(c1_7_1)
);
wire c1_7_2, s1_7_2;
full_adder fa1_7_2 (
.a(A[3] & B[4]),.b(A[4] & B[3]),.c(A[5] & B[2]),.s(s1_7_2),.co(c1_7_2)
);
wire c1_7_3, s1_7_3;
half_adder ha1_7_3 (
.a(A[6] & B[1]),.b(A[7] & B[0]),.p(s1_7_3),.g(c1_7_3)
);
wire c1_8_1, s1_8_1;
full_adder fa1_8_1 (
.a(A[1] & B[7]),.b(A[2] & B[6]),.c(A[3] & B[5]),.s(s1_8_1),.co(c1_8_1)
);
wire c1_8_2, s1_8_2;
full_adder fa1_8_2 (
.a(A[4] & B[4]),.b(A[5] & B[3]),.c(A[6] & B[2]),.s(s1_8_2),.co(c1_8_2)
);
wire c1_9_1, s1_9_1;
full_adder fa1_9_1 (
.a(A[2] & B[7]),.b(A[3] & B[6]),.c(A[4] & B[5]),.s(s1_9_1),.co(c1_9_1)
);
wire c1_9_2, s1_9_2;
full_adder fa1_9_2 (
.a(A[5] & B[4]),.b(A[6] & B[3]),.c(A[7] & B[2]),.s(s1_9_2),.co(c1_9_2)
);
wire c1_10_1, s1_10_1;
full_adder fa1_10_1 (
.a(A[3] & B[7]),.b(A[4] & B[6]),.c(A[5] & B[5]),.s(s1_10_1),.co(c1_10_1)
);
wire c1_10_2, s1_10_2;
half_adder ha1_10_2 (
.a(A[6] & B[4]),.b(A[7] & B[3]),.p(s1_10_2),.g(c1_10_2)
);
wire c1_11_1, s1_11_1;
full_adder fa1_11_1 (
.a(A[4] & B[7]),.b(A[5] & B[6]),.c(A[6] & B[5]),.s(s1_11_1),.co(c1_11_1)
);
wire c1_12_1, s1_12_1;
full_adder fa1_12_1 (
.a(A[5] & B[7]),.b(A[6] & B[6]),.c(A[7] & B[5]),.s(s1_12_1),.co(c1_12_1)
);
wire c1_13_1, s1_13_1;
half_adder ha1_13_1 (
.a(A[6] & B[7]),.b(A[7] & B[6]),.p(s1_13_1),.g(c1_13_1)
);
wire c2_2_1, s2_2_1;
half_adder ha2_2_1 (
.a(s1_2_1),.b(c1_1_1),.p(s2_2_1),.g(c2_2_1)
);
wire c2_3_1, s2_3_1;
full_adder fa2_3_1 (
.a(A[3] & B[0]),.b(s1_3_1),.c(c1_2_1),.s(s2_3_1),.co(c2_3_1)
);
wire c2_4_1, s2_4_1;
full_adder fa2_4_1 (
.a(s1_4_2),.b(s1_4_1),.c(c1_3_1),.s(s2_4_1),.co(c2_4_1)
);
wire c2_5_1, s2_5_1;
full_adder fa2_5_1 (
.a(s1_5_2),.b(s1_5_1),.c(c1_4_2),.s(s2_5_1),.co(c2_5_1)
);
wire c2_6_1, s2_6_1;
full_adder fa2_6_1 (
.a(A[6] & B[0]),.b(s1_6_2),.c(s1_6_1),.s(s2_6_1),.co(c2_6_1)
);
wire c2_6_2, s2_6_2;
half_adder ha2_6_2 (
.a(c1_5_2),.b(c1_5_1),.p(s2_6_2),.g(c2_6_2)
);
wire c2_7_1, s2_7_1;
full_adder fa2_7_1 (
.a(s1_7_3),.b(s1_7_2),.c(s1_7_1),.s(s2_7_1),.co(c2_7_1)
);
wire c2_7_2, s2_7_2;
half_adder ha2_7_2 (
.a(c1_6_2),.b(c1_6_1),.p(s2_7_2),.g(c2_7_2)
);
wire c2_8_1, s2_8_1;
full_adder fa2_8_1 (
.a(A[7] & B[1]),.b(s1_8_2),.c(s1_8_1),.s(s2_8_1),.co(c2_8_1)
);
wire c2_8_2, s2_8_2;
full_adder fa2_8_2 (
.a(c1_7_3),.b(c1_7_2),.c(c1_7_1),.s(s2_8_2),.co(c2_8_2)
);
wire c2_9_1, s2_9_1;
full_adder fa2_9_1 (
.a(s1_9_2),.b(s1_9_1),.c(c1_8_2),.s(s2_9_1),.co(c2_9_1)
);
wire c2_10_1, s2_10_1;
full_adder fa2_10_1 (
.a(s1_10_2),.b(s1_10_1),.c(c1_9_2),.s(s2_10_1),.co(c2_10_1)
);
wire c2_11_1, s2_11_1;
full_adder fa2_11_1 (
.a(A[7] & B[4]),.b(s1_11_1),.c(c1_10_2),.s(s2_11_1),.co(c2_11_1)
);
wire c2_12_1, s2_12_1;
half_adder ha2_12_1 (
.a(s1_12_1),.b(c1_11_1),.p(s2_12_1),.g(c2_12_1)
);
wire c2_13_1, s2_13_1;
half_adder ha2_13_1 (
.a(s1_13_1),.b(c1_12_1),.p(s2_13_1),.g(c2_13_1)
);
wire c2_14_1, s2_14_1;
half_adder ha2_14_1 (
.a(A[7] & B[7]),.b(c1_13_1),.p(s2_14_1),.g(c2_14_1)
);
wire c3_3_1, s3_3_1;
half_adder ha3_3_1 (
.a(s2_3_1),.b(c2_2_1),.p(s3_3_1),.g(c3_3_1)
);
wire c3_4_1, s3_4_1;
half_adder ha3_4_1 (
.a(s2_4_1),.b(c2_3_1),.p(s3_4_1),.g(c3_4_1)
);
wire c3_5_1, s3_5_1;
full_adder fa3_5_1 (
.a(c1_4_1),.b(s2_5_1),.c(c2_4_1),.s(s3_5_1),.co(c3_5_1)
);
wire c3_6_1, s3_6_1;
full_adder fa3_6_1 (
.a(s2_6_2),.b(s2_6_1),.c(c2_5_1),.s(s3_6_1),.co(c3_6_1)
);
wire c3_7_1, s3_7_1;
full_adder fa3_7_1 (
.a(s2_7_2),.b(s2_7_1),.c(c2_6_2),.s(s3_7_1),.co(c3_7_1)
);
wire c3_8_1, s3_8_1;
full_adder fa3_8_1 (
.a(s2_8_2),.b(s2_8_1),.c(c2_7_2),.s(s3_8_1),.co(c3_8_1)
);
wire c3_9_1, s3_9_1;
full_adder fa3_9_1 (
.a(c1_8_1),.b(s2_9_1),.c(c2_8_2),.s(s3_9_1),.co(c3_9_1)
);
wire c3_10_1, s3_10_1;
full_adder fa3_10_1 (
.a(c1_9_1),.b(s2_10_1),.c(c2_9_1),.s(s3_10_1),.co(c3_10_1)
);
wire c3_11_1, s3_11_1;
full_adder fa3_11_1 (
.a(c1_10_1),.b(s2_11_1),.c(c2_10_1),.s(s3_11_1),.co(c3_11_1)
);
wire c3_12_1, s3_12_1;
half_adder ha3_12_1 (
.a(s2_12_1),.b(c2_11_1),.p(s3_12_1),.g(c3_12_1)
);
wire c3_13_1, s3_13_1;
half_adder ha3_13_1 (
.a(s2_13_1),.b(c2_12_1),.p(s3_13_1),.g(c3_13_1)
);
wire c3_14_1, s3_14_1;
half_adder ha3_14_1 (
.a(s2_14_1),.b(c2_13_1),.p(s3_14_1),.g(c3_14_1)
);
wire c4_4_1, s4_4_1;
half_adder ha4_4_1 (
.a(s3_4_1),.b(c3_3_1),.p(s4_4_1),.g(c4_4_1)
);
wire c4_5_1, s4_5_1;
half_adder ha4_5_1 (
.a(s3_5_1),.b(c3_4_1),.p(s4_5_1),.g(c4_5_1)
);
wire c4_6_1, s4_6_1;
half_adder ha4_6_1 (
.a(s3_6_1),.b(c3_5_1),.p(s4_6_1),.g(c4_6_1)
);
wire c4_7_1, s4_7_1;
full_adder fa4_7_1 (
.a(c2_6_1),.b(s3_7_1),.c(c3_6_1),.s(s4_7_1),.co(c4_7_1)
);
wire c4_8_1, s4_8_1;
full_adder fa4_8_1 (
.a(c2_7_1),.b(s3_8_1),.c(c3_7_1),.s(s4_8_1),.co(c4_8_1)
);
wire c4_9_1, s4_9_1;
full_adder fa4_9_1 (
.a(c2_8_1),.b(s3_9_1),.c(c3_8_1),.s(s4_9_1),.co(c4_9_1)
);
wire c4_10_1, s4_10_1;
half_adder ha4_10_1 (
.a(s3_10_1),.b(c3_9_1),.p(s4_10_1),.g(c4_10_1)
);
wire c4_11_1, s4_11_1;
half_adder ha4_11_1 (
.a(s3_11_1),.b(c3_10_1),.p(s4_11_1),.g(c4_11_1)
);
wire c4_12_1, s4_12_1;
half_adder ha4_12_1 (
.a(s3_12_1),.b(c3_11_1),.p(s4_12_1),.g(c4_12_1)
);
wire c4_13_1, s4_13_1;
half_adder ha4_13_1 (
.a(s3_13_1),.b(c3_12_1),.p(s4_13_1),.g(c4_13_1)
);
wire c4_14_1, s4_14_1;
half_adder ha4_14_1 (
.a(s3_14_1),.b(c3_13_1),.p(s4_14_1),.g(c4_14_1)
);
wire c4_15_1, s4_15_1;
half_adder ha4_15_1 (
.a(c2_14_1),.b(c3_14_1),.p(s4_15_1),.g(c4_15_1)
);
wire [15:0]A_t;
wire [15:0]B_t;
assign A_t[0] = 1'b0;
assign B_t[0] = A[0] & B[0];
assign A_t[1] = 1'b0;
assign B_t[1] = s1_1_1;
assign A_t[2] = 1'b0;
assign B_t[2] = s2_2_1;
assign A_t[3] = 1'b0;
assign B_t[3] = s3_3_1;
assign A_t[4] = 1'b0;
assign B_t[4] = s4_4_1;
assign A_t[5] = s4_5_1;
assign B_t[5] = c4_4_1;
assign A_t[6] = s4_6_1;
assign B_t[6] = c4_5_1;
assign A_t[7] = s4_7_1;
assign B_t[7] = c4_6_1;
assign A_t[8] = s4_8_1;
assign B_t[8] = c4_7_1;
assign A_t[9] = s4_9_1;
assign B_t[9] = c4_8_1;
assign A_t[10] = s4_10_1;
assign B_t[10] = c4_9_1;
assign A_t[11] = s4_11_1;
assign B_t[11] = c4_10_1;
assign A_t[12] = s4_12_1;
assign B_t[12] = c4_11_1;
assign A_t[13] = s4_13_1;
assign B_t[13] = c4_12_1;
assign A_t[14] = s4_14_1;
assign B_t[14] = c4_13_1;
assign A_t[15] = s4_15_1;
assign B_t[15] = c4_14_1;

adder16 Adder(
	.A(A_t),
	.B(B_t),
	.res(C),
	.overflow()
	);

endmodule
