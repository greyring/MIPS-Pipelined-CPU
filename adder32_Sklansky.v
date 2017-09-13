`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:47 09/11/2017 
// Design Name: 
// Module Name:    adder32_Sklansky 
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
module adder32_Sklansky(//32位前缀加法器
	input [31:0]A_in,
	input [31:0]B_in,
	input add_sub,//0 add 1 sub
	output [31:0]res,
	output overflow
    );
//基本原理：
//gi = ai & bi;   pi = ai ^ bi;
//gi:j = (ai:j + bi:j)产生的进位    pi:j = &{pi ~ pj}pi,pi+1,...,pj取and起来,表示进位是否能从j传播到i
//gi:k = gi:j or (gj-1:k & pi:j)   a和b的i到j位相加产生进位，或者a和b的j-1到k位相加产生进位，且这个进位一直传播到i+1
//si = pi ^ gi:0

wire [31:0]A;
wire [31:0]B;
assign A = A_in;
assign B = B_in ^ {32{add_sub}};

wire p0_0, g0_0;
half_adder_sub ha_0(
    .a(A[0]), 
    .b(B[0]), 
    .add_sub(add_sub), 
    .g(g0_0), 
    .p(p0_0)
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
wire p16_16, g16_16;
half_adder ha_16(
	.a(A[16]),
	.b(B[16]),
	.p(p16_16),
	.g(g16_16)
	);
wire p17_17, g17_17;
half_adder ha_17(
	.a(A[17]),
	.b(B[17]),
	.p(p17_17),
	.g(g17_17)
	);
wire p18_18, g18_18;
half_adder ha_18(
	.a(A[18]),
	.b(B[18]),
	.p(p18_18),
	.g(g18_18)
	);
wire p19_19, g19_19;
half_adder ha_19(
	.a(A[19]),
	.b(B[19]),
	.p(p19_19),
	.g(g19_19)
	);
wire p20_20, g20_20;
half_adder ha_20(
	.a(A[20]),
	.b(B[20]),
	.p(p20_20),
	.g(g20_20)
	);
wire p21_21, g21_21;
half_adder ha_21(
	.a(A[21]),
	.b(B[21]),
	.p(p21_21),
	.g(g21_21)
	);
wire p22_22, g22_22;
half_adder ha_22(
	.a(A[22]),
	.b(B[22]),
	.p(p22_22),
	.g(g22_22)
	);
wire p23_23, g23_23;
half_adder ha_23(
	.a(A[23]),
	.b(B[23]),
	.p(p23_23),
	.g(g23_23)
	);
wire p24_24, g24_24;
half_adder ha_24(
	.a(A[24]),
	.b(B[24]),
	.p(p24_24),
	.g(g24_24)
	);
wire p25_25, g25_25;
half_adder ha_25(
	.a(A[25]),
	.b(B[25]),
	.p(p25_25),
	.g(g25_25)
	);
wire p26_26, g26_26;
half_adder ha_26(
	.a(A[26]),
	.b(B[26]),
	.p(p26_26),
	.g(g26_26)
	);
wire p27_27, g27_27;
half_adder ha_27(
	.a(A[27]),
	.b(B[27]),
	.p(p27_27),
	.g(g27_27)
	);
wire p28_28, g28_28;
half_adder ha_28(
	.a(A[28]),
	.b(B[28]),
	.p(p28_28),
	.g(g28_28)
	);
wire p29_29, g29_29;
half_adder ha_29(
	.a(A[29]),
	.b(B[29]),
	.p(p29_29),
	.g(g29_29)
	);
wire p30_30, g30_30;
half_adder ha_30(
	.a(A[30]),
	.b(B[30]),
	.p(p30_30),
	.g(g30_30)
	);
wire p31_31, g31_31;
half_adder ha_31(
	.a(A[31]),
	.b(B[31]),
	.p(p31_31),
	.g(g31_31)
	);
//////////////////////////////////////////
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
wire p17_16, g17_16;
inner_adder in17_16(
.gi_k(g17_17),
.pi_k(p17_17),
.gk_1_j(g16_16),
.pk_1_j(p16_16),
.gi_j(g17_16),
.pi_j(p17_16)
);
wire p19_18, g19_18;
inner_adder in19_18(
.gi_k(g19_19),
.pi_k(p19_19),
.gk_1_j(g18_18),
.pk_1_j(p18_18),
.gi_j(g19_18),
.pi_j(p19_18)
);
wire p21_20, g21_20;
inner_adder in21_20(
.gi_k(g21_21),
.pi_k(p21_21),
.gk_1_j(g20_20),
.pk_1_j(p20_20),
.gi_j(g21_20),
.pi_j(p21_20)
);
wire p23_22, g23_22;
inner_adder in23_22(
.gi_k(g23_23),
.pi_k(p23_23),
.gk_1_j(g22_22),
.pk_1_j(p22_22),
.gi_j(g23_22),
.pi_j(p23_22)
);
wire p25_24, g25_24;
inner_adder in25_24(
.gi_k(g25_25),
.pi_k(p25_25),
.gk_1_j(g24_24),
.pk_1_j(p24_24),
.gi_j(g25_24),
.pi_j(p25_24)
);
wire p27_26, g27_26;
inner_adder in27_26(
.gi_k(g27_27),
.pi_k(p27_27),
.gk_1_j(g26_26),
.pk_1_j(p26_26),
.gi_j(g27_26),
.pi_j(p27_26)
);
wire p29_28, g29_28;
inner_adder in29_28(
.gi_k(g29_29),
.pi_k(p29_29),
.gk_1_j(g28_28),
.pk_1_j(p28_28),
.gi_j(g29_28),
.pi_j(p29_28)
);
wire p31_30, g31_30;
inner_adder in31_30(
.gi_k(g31_31),
.pi_k(p31_31),
.gk_1_j(g30_30),
.pk_1_j(p30_30),
.gi_j(g31_30),
.pi_j(p31_30)
);
wire  g2_0;
inner_adder in2_0(
.gi_k(g2_2),
.pi_k(p2_2),
.gk_1_j(g1_0),
.pk_1_j(p1_0),
.gi_j(g2_0),
.pi_j()
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
wire p18_16, g18_16;
inner_adder in18_16(
.gi_k(g18_18),
.pi_k(p18_18),
.gk_1_j(g17_16),
.pk_1_j(p17_16),
.gi_j(g18_16),
.pi_j(p18_16)
);
wire p19_16, g19_16;
inner_adder in19_16(
.gi_k(g19_18),
.pi_k(p19_18),
.gk_1_j(g17_16),
.pk_1_j(p17_16),
.gi_j(g19_16),
.pi_j(p19_16)
);
wire p22_20, g22_20;
inner_adder in22_20(
.gi_k(g22_22),
.pi_k(p22_22),
.gk_1_j(g21_20),
.pk_1_j(p21_20),
.gi_j(g22_20),
.pi_j(p22_20)
);
wire p23_20, g23_20;
inner_adder in23_20(
.gi_k(g23_22),
.pi_k(p23_22),
.gk_1_j(g21_20),
.pk_1_j(p21_20),
.gi_j(g23_20),
.pi_j(p23_20)
);
wire p26_24, g26_24;
inner_adder in26_24(
.gi_k(g26_26),
.pi_k(p26_26),
.gk_1_j(g25_24),
.pk_1_j(p25_24),
.gi_j(g26_24),
.pi_j(p26_24)
);
wire p27_24, g27_24;
inner_adder in27_24(
.gi_k(g27_26),
.pi_k(p27_26),
.gk_1_j(g25_24),
.pk_1_j(p25_24),
.gi_j(g27_24),
.pi_j(p27_24)
);
wire p30_28, g30_28;
inner_adder in30_28(
.gi_k(g30_30),
.pi_k(p30_30),
.gk_1_j(g29_28),
.pk_1_j(p29_28),
.gi_j(g30_28),
.pi_j(p30_28)
);
wire p31_28, g31_28;
inner_adder in31_28(
.gi_k(g31_30),
.pi_k(p31_30),
.gk_1_j(g29_28),
.pk_1_j(p29_28),
.gi_j(g31_28),
.pi_j(p31_28)
);
wire  g4_0;
inner_adder in4_0(
.gi_k(g4_4),
.pi_k(p4_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g4_0),
.pi_j()
);
wire g5_0;
inner_adder in5_0(
.gi_k(g5_4),
.pi_k(p5_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g5_0),
.pi_j()
);
wire g6_0;
inner_adder in6_0(
.gi_k(g6_4),
.pi_k(p6_4),
.gk_1_j(g3_0),
.pk_1_j(p3_0),
.gi_j(g6_0),
.pi_j()
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
wire p20_16, g20_16;
inner_adder in20_16(
.gi_k(g20_20),
.pi_k(p20_20),
.gk_1_j(g19_16),
.pk_1_j(p19_16),
.gi_j(g20_16),
.pi_j(p20_16)
);
wire p21_16, g21_16;
inner_adder in21_16(
.gi_k(g21_20),
.pi_k(p21_20),
.gk_1_j(g19_16),
.pk_1_j(p19_16),
.gi_j(g21_16),
.pi_j(p21_16)
);
wire p22_16, g22_16;
inner_adder in22_16(
.gi_k(g22_20),
.pi_k(p22_20),
.gk_1_j(g19_16),
.pk_1_j(p19_16),
.gi_j(g22_16),
.pi_j(p22_16)
);
wire p23_16, g23_16;
inner_adder in23_16(
.gi_k(g23_20),
.pi_k(p23_20),
.gk_1_j(g19_16),
.pk_1_j(p19_16),
.gi_j(g23_16),
.pi_j(p23_16)
);
wire p28_24, g28_24;
inner_adder in28_24(
.gi_k(g28_28),
.pi_k(p28_28),
.gk_1_j(g27_24),
.pk_1_j(p27_24),
.gi_j(g28_24),
.pi_j(p28_24)
);
wire p29_24, g29_24;
inner_adder in29_24(
.gi_k(g29_28),
.pi_k(p29_28),
.gk_1_j(g27_24),
.pk_1_j(p27_24),
.gi_j(g29_24),
.pi_j(p29_24)
);
wire p30_24, g30_24;
inner_adder in30_24(
.gi_k(g30_28),
.pi_k(p30_28),
.gk_1_j(g27_24),
.pk_1_j(p27_24),
.gi_j(g30_24),
.pi_j(p30_24)
);
wire p31_24, g31_24;
inner_adder in31_24(
.gi_k(g31_28),
.pi_k(p31_28),
.gk_1_j(g27_24),
.pk_1_j(p27_24),
.gi_j(g31_24),
.pi_j(p31_24)
);
wire g8_0;
inner_adder in8_0(
.gi_k(g8_8),
.pi_k(p8_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g8_0),
.pi_j()
);
wire g9_0;
inner_adder in9_0(
.gi_k(g9_8),
.pi_k(p9_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g9_0),
.pi_j()
);
wire g10_0;
inner_adder in10_0(
.gi_k(g10_8),
.pi_k(p10_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g10_0),
.pi_j()
);
wire g11_0;
inner_adder in11_0(
.gi_k(g11_8),
.pi_k(p11_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g11_0),
.pi_j()
);
wire g12_0;
inner_adder in12_0(
.gi_k(g12_8),
.pi_k(p12_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g12_0),
.pi_j()
);
wire g13_0;
inner_adder in13_0(
.gi_k(g13_8),
.pi_k(p13_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g13_0),
.pi_j()
);
wire g14_0;
inner_adder in14_0(
.gi_k(g14_8),
.pi_k(p14_8),
.gk_1_j(g7_0),
.pk_1_j(p7_0),
.gi_j(g14_0),
.pi_j()
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
wire p24_16, g24_16;
inner_adder in24_16(
.gi_k(g24_24),
.pi_k(p24_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g24_16),
.pi_j(p24_16)
);
wire p25_16, g25_16;
inner_adder in25_16(
.gi_k(g25_24),
.pi_k(p25_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g25_16),
.pi_j(p25_16)
);
wire p26_16, g26_16;
inner_adder in26_16(
.gi_k(g26_24),
.pi_k(p26_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g26_16),
.pi_j(p26_16)
);
wire p27_16, g27_16;
inner_adder in27_16(
.gi_k(g27_24),
.pi_k(p27_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g27_16),
.pi_j(p27_16)
);
wire p28_16, g28_16;
inner_adder in28_16(
.gi_k(g28_24),
.pi_k(p28_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g28_16),
.pi_j(p28_16)
);
wire p29_16, g29_16;
inner_adder in29_16(
.gi_k(g29_24),
.pi_k(p29_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g29_16),
.pi_j(p29_16)
);
wire p30_16, g30_16;
inner_adder in30_16(
.gi_k(g30_24),
.pi_k(p30_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g30_16),
.pi_j(p30_16)
);
wire p31_16, g31_16;
inner_adder in31_16(
.gi_k(g31_24),
.pi_k(p31_24),
.gk_1_j(g23_16),
.pk_1_j(p23_16),
.gi_j(g31_16),
.pi_j(p31_16)
);
wire g16_0;
inner_adder in16_0(
.gi_k(g16_16),
.pi_k(p16_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g16_0),
.pi_j()
);
wire g17_0;
inner_adder in17_0(
.gi_k(g17_16),
.pi_k(p17_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g17_0),
.pi_j()
);
wire g18_0;
inner_adder in18_0(
.gi_k(g18_16),
.pi_k(p18_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g18_0),
.pi_j()
);
wire g19_0;
inner_adder in19_0(
.gi_k(g19_16),
.pi_k(p19_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g19_0),
.pi_j()
);
wire g20_0;
inner_adder in20_0(
.gi_k(g20_16),
.pi_k(p20_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g20_0),
.pi_j()
);
wire g21_0;
inner_adder in21_0(
.gi_k(g21_16),
.pi_k(p21_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g21_0),
.pi_j()
);
wire g22_0;
inner_adder in22_0(
.gi_k(g22_16),
.pi_k(p22_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g22_0),
.pi_j()
);
wire g23_0;
inner_adder in23_0(
.gi_k(g23_16),
.pi_k(p23_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g23_0),
.pi_j()
);
wire g24_0;
inner_adder in24_0(
.gi_k(g24_16),
.pi_k(p24_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g24_0),
.pi_j()
);
wire g25_0;
inner_adder in25_0(
.gi_k(g25_16),
.pi_k(p25_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g25_0),
.pi_j()
);
wire g26_0;
inner_adder in26_0(
.gi_k(g26_16),
.pi_k(p26_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g26_0),
.pi_j()
);
wire g27_0;
inner_adder in27_0(
.gi_k(g27_16),
.pi_k(p27_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g27_0),
.pi_j()
);
wire g28_0;
inner_adder in28_0(
.gi_k(g28_16),
.pi_k(p28_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g28_0),
.pi_j()
);
wire g29_0;
inner_adder in29_0(
.gi_k(g29_16),
.pi_k(p29_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g29_0),
.pi_j()
);
wire g30_0;
inner_adder in30_0(
.gi_k(g30_16),
.pi_k(p30_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g30_0),
.pi_j()
);
wire g31_0;
inner_adder in31_0(
.gi_k(g31_16),
.pi_k(p31_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g31_0),
.pi_j()
);

//////////////////////////////////////////
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
res_adder res_16(
	.pi_i(p16_16),
	.gi_1_0(g15_0),
	.si(res[16])
	);
res_adder res_17(
	.pi_i(p17_17),
	.gi_1_0(g16_0),
	.si(res[17])
	);
res_adder res_18(
	.pi_i(p18_18),
	.gi_1_0(g17_0),
	.si(res[18])
	);
res_adder res_19(
	.pi_i(p19_19),
	.gi_1_0(g18_0),
	.si(res[19])
	);
res_adder res_20(
	.pi_i(p20_20),
	.gi_1_0(g19_0),
	.si(res[20])
	);
res_adder res_21(
	.pi_i(p21_21),
	.gi_1_0(g20_0),
	.si(res[21])
	);
res_adder res_22(
	.pi_i(p22_22),
	.gi_1_0(g21_0),
	.si(res[22])
	);
res_adder res_23(
	.pi_i(p23_23),
	.gi_1_0(g22_0),
	.si(res[23])
	);
res_adder res_24(
	.pi_i(p24_24),
	.gi_1_0(g23_0),
	.si(res[24])
	);
res_adder res_25(
	.pi_i(p25_25),
	.gi_1_0(g24_0),
	.si(res[25])
	);
res_adder res_26(
	.pi_i(p26_26),
	.gi_1_0(g25_0),
	.si(res[26])
	);
res_adder res_27(
	.pi_i(p27_27),
	.gi_1_0(g26_0),
	.si(res[27])
	);
res_adder res_28(
	.pi_i(p28_28),
	.gi_1_0(g27_0),
	.si(res[28])
	);
res_adder res_29(
	.pi_i(p29_29),
	.gi_1_0(g28_0),
	.si(res[29])
	);
res_adder res_30(
	.pi_i(p30_30),
	.gi_1_0(g29_0),
	.si(res[30])
	);
res_adder res_31(
	.pi_i(p31_31),
	.gi_1_0(g30_0),
	.si(res[31])
	);

wire res_31_DUMMY;
wire a_32,b_32;
wire res_32;
assign a_32 = A[31];//符号位拓展
assign b_32 = B[31];//符号位拓展
assign res_32 = a_32 ^ b_32 ^ g31_0;
assign res_31_DUMMY = res[31];
assign overflow = res_32 ^ res_31_DUMMY;

endmodule
