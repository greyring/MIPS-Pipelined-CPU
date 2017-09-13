`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:09 09/13/2017 
// Design Name: 
// Module Name:    adder16 
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
module adder16(
	input [15:0]A,
	input [15:0]B,
	output [15:0]res,
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
wire p8_8, g8_8;
half_adder ha_8(
	.a(A[8]),
	.b(B[8]),
	.p(p8_8),
	.g(g8_8)
	);
wire p9_9, g9_9;
half_adder ha_9(
	.a(A[9]),
	.b(B[9]),
	.p(p9_9),
	.g(g9_9)
	);
wire p10_10, g10_10;
half_adder ha_10(
	.a(A[10]),
	.b(B[10]),
	.p(p10_10),
	.g(g10_10)
	);
wire p11_11, g11_11;
half_adder ha_11(
	.a(A[11]),
	.b(B[11]),
	.p(p11_11),
	.g(g11_11)
	);
wire p12_12, g12_12;
half_adder ha_12(
	.a(A[12]),
	.b(B[12]),
	.p(p12_12),
	.g(g12_12)
	);
wire p13_13, g13_13;
half_adder ha_13(
	.a(A[13]),
	.b(B[13]),
	.p(p13_13),
	.g(g13_13)
	);
wire p14_14, g14_14;
half_adder ha_14(
	.a(A[14]),
	.b(B[14]),
	.p(p14_14),
	.g(g14_14)
	);
wire p15_15, g15_15;
half_adder ha_15(
	.a(A[15]),
	.b(B[15]),
	.p(p15_15),
	.g(g15_15)
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
wire p9_8, g9_8;
inner_adder in9_8(
.gi_k(g9_9),
.pi_k(p9_9),
.gk_1_j(g8_8),
.pk_1_j(p8_8),
.gi_j(g9_8),
.pi_j(p9_8)
);
wire p11_10, g11_10;
inner_adder in11_10(
.gi_k(g11_11),
.pi_k(p11_11),
.gk_1_j(g10_10),
.pk_1_j(p10_10),
.gi_j(g11_10),
.pi_j(p11_10)
);
wire p13_12, g13_12;
inner_adder in13_12(
.gi_k(g13_13),
.pi_k(p13_13),
.gk_1_j(g12_12),
.pk_1_j(p12_12),
.gi_j(g13_12),
.pi_j(p13_12)
);
wire p15_14, g15_14;
inner_adder in15_14(
.gi_k(g15_15),
.pi_k(p15_15),
.gk_1_j(g14_14),
.pk_1_j(p14_14),
.gi_j(g15_14),
.pi_j(p15_14)
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
wire p10_8, g10_8;
inner_adder in10_8(
.gi_k(g10_10),
.pi_k(p10_10),
.gk_1_j(g9_8),
.pk_1_j(p9_8),
.gi_j(g10_8),
.pi_j(p10_8)
);
wire p11_8, g11_8;
inner_adder in11_8(
.gi_k(g11_10),
.pi_k(p11_10),
.gk_1_j(g9_8),
.pk_1_j(p9_8),
.gi_j(g11_8),
.pi_j(p11_8)
);
wire p14_12, g14_12;
inner_adder in14_12(
.gi_k(g14_14),
.pi_k(p14_14),
.gk_1_j(g13_12),
.pk_1_j(p13_12),
.gi_j(g14_12),
.pi_j(p14_12)
);
wire p15_12, g15_12;
inner_adder in15_12(
.gi_k(g15_14),
.pi_k(p15_14),
.gk_1_j(g13_12),
.pk_1_j(p13_12),
.gi_j(g15_12),
.pi_j(p15_12)
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
wire p12_8, g12_8;
inner_adder in12_8(
.gi_k(g12_12),
.pi_k(p12_12),
.gk_1_j(g11_8),
.pk_1_j(p11_8),
.gi_j(g12_8),
.pi_j(p12_8)
);
wire p13_8, g13_8;
inner_adder in13_8(
.gi_k(g13_12),
.pi_k(p13_12),
.gk_1_j(g11_8),
.pk_1_j(p11_8),
.gi_j(g13_8),
.pi_j(p13_8)
);
wire p14_8, g14_8;
inner_adder in14_8(
.gi_k(g14_12),
.pi_k(p14_12),
.gk_1_j(g11_8),
.pk_1_j(p11_8),
.gi_j(g14_8),
.pi_j(p14_8)
);
wire p15_8, g15_8;
inner_adder in15_8(
.gi_k(g15_12),
.pi_k(p15_12),
.gk_1_j(g11_8),
.pk_1_j(p11_8),
.gi_j(g15_8),
.pi_j(p15_8)
);
wire p8_0, g8_0;
inner_adder in8_0(
.gi_k(g8_8),
.pi_k(p8_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g8_0),
.pi_j(p8_0)
);
wire p9_0, g9_0;
inner_adder in9_0(
.gi_k(g9_8),
.pi_k(p9_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g9_0),
.pi_j(p9_0)
);
wire p10_0, g10_0;
inner_adder in10_0(
.gi_k(g10_8),
.pi_k(p10_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g10_0),
.pi_j(p10_0)
);
wire p11_0, g11_0;
inner_adder in11_0(
.gi_k(g11_8),
.pi_k(p11_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g11_0),
.pi_j(p11_0)
);
wire p12_0, g12_0;
inner_adder in12_0(
.gi_k(g12_8),
.pi_k(p12_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g12_0),
.pi_j(p12_0)
);
wire p13_0, g13_0;
inner_adder in13_0(
.gi_k(g13_8),
.pi_k(p13_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g13_0),
.pi_j(p13_0)
);
wire p14_0, g14_0;
inner_adder in14_0(
.gi_k(g14_8),
.pi_k(p14_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g14_0),
.pi_j(p14_0)
);
wire p15_0, g15_0;
inner_adder in15_0(
.gi_k(g15_8),
.pi_k(p15_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g15_0),
.pi_j(p15_0)
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
res_adder res_8(
	.pi_i(p8_8),
	.gi_1_0(g7_0),
	.si(res[8])
	);
res_adder res_9(
	.pi_i(p9_9),
	.gi_1_0(g8_0),
	.si(res[9])
	);
res_adder res_10(
	.pi_i(p10_10),
	.gi_1_0(g9_0),
	.si(res[10])
	);
res_adder res_11(
	.pi_i(p11_11),
	.gi_1_0(g10_0),
	.si(res[11])
	);
res_adder res_12(
	.pi_i(p12_12),
	.gi_1_0(g11_0),
	.si(res[12])
	);
res_adder res_13(
	.pi_i(p13_13),
	.gi_1_0(g12_0),
	.si(res[13])
	);
res_adder res_14(
	.pi_i(p14_14),
	.gi_1_0(g13_0),
	.si(res[14])
	);
res_adder res_15(
	.pi_i(p15_15),
	.gi_1_0(g14_0),
	.si(res[15])
	);
wire res_16_DUMMY;
wire a_16,b_16;
assign a_16 = A[15];
assign b_16 = B[15];
wire res_16;
assign res_16 = a_16 ^ b_16 ^ g15_0;
assign res_15_DUMMY = res[15];
assign overflow = res_16 ^ res_15_DUMMY;


endmodule
