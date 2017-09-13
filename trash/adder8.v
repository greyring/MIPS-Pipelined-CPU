`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:56 09/13/2017 
// Design Name: 
// Module Name:    adder8 
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
module adder8(
	input [7:0]A,
	input [7:0]B,
	output [7:0]res,
	output overflow
    );

wire p0_0, g0_0;
half_adder ha_0(
	.a(A[0]),
	.b(B[0]),
	.p(p0_0),
	.g(g0_0)
	);
wire p1_1, g1_1;
half_adder ha_1(
	.a(A[1]),
	.b(B[1]),
	.p(p1_1),
	.g(g1_1)
	);
wire p2_2, g2_2;
half_adder ha_2(
	.a(A[2]),
	.b(B[2]),
	.p(p2_2),
	.g(g2_2)
	);
wire p3_3, g3_3;
half_adder ha_3(
	.a(A[3]),
	.b(B[3]),
	.p(p3_3),
	.g(g3_3)
	);
wire p4_4, g4_4;
half_adder ha_4(
	.a(A[4]),
	.b(B[4]),
	.p(p4_4),
	.g(g4_4)
	);
wire p5_5, g5_5;
half_adder ha_5(
	.a(A[5]),
	.b(B[5]),
	.p(p5_5),
	.g(g5_5)
	);
wire p6_6, g6_6;
half_adder ha_6(
	.a(A[6]),
	.b(B[6]),
	.p(p6_6),
	.g(g6_6)
	);
wire p7_7, g7_7;
half_adder ha_7(
	.a(A[7]),
	.b(B[7]),
	.p(p7_7),
	.g(g7_7)
	);
wire p1_0, g1_0;
inner_adder in1_0(
.gi_k(g1_1),
.pi_k(p1_1),
.gk_1_j(g0_0),
.pk_1_j(p0_0),
.gi_j(g1_0),
.pi_j(p1_0)
);
wire p3_2, g3_2;
inner_adder in3_2(
.gi_k(g3_3),
.pi_k(p3_3),
.gk_1_j(g2_2),
.pk_1_j(p2_2),
.gi_j(g3_2),
.pi_j(p3_2)
);
wire p5_4, g5_4;
inner_adder in5_4(
.gi_k(g5_5),
.pi_k(p5_5),
.gk_1_j(g4_4),
.pk_1_j(p4_4),
.gi_j(g5_4),
.pi_j(p5_4)
);
wire p7_6, g7_6;
inner_adder in7_6(
.gi_k(g7_7),
.pi_k(p7_7),
.gk_1_j(g6_6),
.pk_1_j(p6_6),
.gi_j(g7_6),
.pi_j(p7_6)
);
wire p2_0, g2_0;
inner_adder in2_0(
.gi_k(g2_2),
.pi_k(p2_2),
.gk_1_j(g1_0),
.pk_1_j(p1_0),
.gi_j(g2_0),
.pi_j(p2_0)
);
wire p3_0, g3_0;
inner_adder in3_0(
.gi_k(g3_2),
.pi_k(p3_2),
.gk_1_j(g1_0),
.pk_1_j(p1_0),
.gi_j(g3_0),
.pi_j(p3_0)
);
wire p6_4, g6_4;
inner_adder in6_4(
.gi_k(g6_6),
.pi_k(p6_6),
.gk_1_j(g5_4),
.pk_1_j(p5_4),
.gi_j(g6_4),
.pi_j(p6_4)
);
wire p7_4, g7_4;
inner_adder in7_4(
.gi_k(g7_6),
.pi_k(p7_6),
.gk_1_j(g5_4),
.pk_1_j(p5_4),
.gi_j(g7_4),
.pi_j(p7_4)
);
wire p4_0, g4_0;
inner_adder in4_0(
.gi_k(g4_4),
.pi_k(p4_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g4_0),
.pi_j(p4_0)
);
wire p5_0, g5_0;
inner_adder in5_0(
.gi_k(g5_4),
.pi_k(p5_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g5_0),
.pi_j(p5_0)
);
wire p6_0, g6_0;
inner_adder in6_0(
.gi_k(g6_4),
.pi_k(p6_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g6_0),
.pi_j(p6_0)
);
wire p7_0, g7_0;
inner_adder in7_0(
.gi_k(g7_4),
.pi_k(p7_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g7_0),
.pi_j(p7_0)
);
res_adder res_0(
	.pi_i(p0_0),
	.gi_1_0(1'b0),
	.si(res[0])
	);
res_adder res_1(
	.pi_i(p1_1),
	.gi_1_0(g0_0),
	.si(res[1])
	);
res_adder res_2(
	.pi_i(p2_2),
	.gi_1_0(g1_0),
	.si(res[2])
	);
res_adder res_3(
	.pi_i(p3_3),
	.gi_1_0(g2_0),
	.si(res[3])
	);
res_adder res_4(
	.pi_i(p4_4),
	.gi_1_0(g3_0),
	.si(res[4])
	);
res_adder res_5(
	.pi_i(p5_5),
	.gi_1_0(g4_0),
	.si(res[5])
	);
res_adder res_6(
	.pi_i(p6_6),
	.gi_1_0(g5_0),
	.si(res[6])
	);
res_adder res_7(
	.pi_i(p7_7),
	.gi_1_0(g6_0),
	.si(res[7])
	);
wire res_8_DUMMY;
wire a_8,b_8;
assign a_8 = A[7];
assign b_8 = B[7];
wire res_8;
assign res_8 = a_8 ^ b_8 ^ g7_0;
assign res_7_DUMMY = res[7];
assign overflow = res_8 ^ res_7_DUMMY;



endmodule
