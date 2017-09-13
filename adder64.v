`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:54 09/13/2017 
// Design Name: 
// Module Name:    adder64 
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
module adder64(//¼Ó·¨
	input [63:0]A,
	input [63:0]B,
	output [63:0]res,
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
wire p32_32, g32_32;
half_adder ha_32(
	.a(A[32]),
	.b(B[32]),
	.p(p32_32),
	.g(g32_32)
	);
wire p33_33, g33_33;
half_adder ha_33(
	.a(A[33]),
	.b(B[33]),
	.p(p33_33),
	.g(g33_33)
	);
wire p34_34, g34_34;
half_adder ha_34(
	.a(A[34]),
	.b(B[34]),
	.p(p34_34),
	.g(g34_34)
	);
wire p35_35, g35_35;
half_adder ha_35(
	.a(A[35]),
	.b(B[35]),
	.p(p35_35),
	.g(g35_35)
	);
wire p36_36, g36_36;
half_adder ha_36(
	.a(A[36]),
	.b(B[36]),
	.p(p36_36),
	.g(g36_36)
	);
wire p37_37, g37_37;
half_adder ha_37(
	.a(A[37]),
	.b(B[37]),
	.p(p37_37),
	.g(g37_37)
	);
wire p38_38, g38_38;
half_adder ha_38(
	.a(A[38]),
	.b(B[38]),
	.p(p38_38),
	.g(g38_38)
	);
wire p39_39, g39_39;
half_adder ha_39(
	.a(A[39]),
	.b(B[39]),
	.p(p39_39),
	.g(g39_39)
	);
wire p40_40, g40_40;
half_adder ha_40(
	.a(A[40]),
	.b(B[40]),
	.p(p40_40),
	.g(g40_40)
	);
wire p41_41, g41_41;
half_adder ha_41(
	.a(A[41]),
	.b(B[41]),
	.p(p41_41),
	.g(g41_41)
	);
wire p42_42, g42_42;
half_adder ha_42(
	.a(A[42]),
	.b(B[42]),
	.p(p42_42),
	.g(g42_42)
	);
wire p43_43, g43_43;
half_adder ha_43(
	.a(A[43]),
	.b(B[43]),
	.p(p43_43),
	.g(g43_43)
	);
wire p44_44, g44_44;
half_adder ha_44(
	.a(A[44]),
	.b(B[44]),
	.p(p44_44),
	.g(g44_44)
	);
wire p45_45, g45_45;
half_adder ha_45(
	.a(A[45]),
	.b(B[45]),
	.p(p45_45),
	.g(g45_45)
	);
wire p46_46, g46_46;
half_adder ha_46(
	.a(A[46]),
	.b(B[46]),
	.p(p46_46),
	.g(g46_46)
	);
wire p47_47, g47_47;
half_adder ha_47(
	.a(A[47]),
	.b(B[47]),
	.p(p47_47),
	.g(g47_47)
	);
wire p48_48, g48_48;
half_adder ha_48(
	.a(A[48]),
	.b(B[48]),
	.p(p48_48),
	.g(g48_48)
	);
wire p49_49, g49_49;
half_adder ha_49(
	.a(A[49]),
	.b(B[49]),
	.p(p49_49),
	.g(g49_49)
	);
wire p50_50, g50_50;
half_adder ha_50(
	.a(A[50]),
	.b(B[50]),
	.p(p50_50),
	.g(g50_50)
	);
wire p51_51, g51_51;
half_adder ha_51(
	.a(A[51]),
	.b(B[51]),
	.p(p51_51),
	.g(g51_51)
	);
wire p52_52, g52_52;
half_adder ha_52(
	.a(A[52]),
	.b(B[52]),
	.p(p52_52),
	.g(g52_52)
	);
wire p53_53, g53_53;
half_adder ha_53(
	.a(A[53]),
	.b(B[53]),
	.p(p53_53),
	.g(g53_53)
	);
wire p54_54, g54_54;
half_adder ha_54(
	.a(A[54]),
	.b(B[54]),
	.p(p54_54),
	.g(g54_54)
	);
wire p55_55, g55_55;
half_adder ha_55(
	.a(A[55]),
	.b(B[55]),
	.p(p55_55),
	.g(g55_55)
	);
wire p56_56, g56_56;
half_adder ha_56(
	.a(A[56]),
	.b(B[56]),
	.p(p56_56),
	.g(g56_56)
	);
wire p57_57, g57_57;
half_adder ha_57(
	.a(A[57]),
	.b(B[57]),
	.p(p57_57),
	.g(g57_57)
	);
wire p58_58, g58_58;
half_adder ha_58(
	.a(A[58]),
	.b(B[58]),
	.p(p58_58),
	.g(g58_58)
	);
wire p59_59, g59_59;
half_adder ha_59(
	.a(A[59]),
	.b(B[59]),
	.p(p59_59),
	.g(g59_59)
	);
wire p60_60, g60_60;
half_adder ha_60(
	.a(A[60]),
	.b(B[60]),
	.p(p60_60),
	.g(g60_60)
	);
wire p61_61, g61_61;
half_adder ha_61(
	.a(A[61]),
	.b(B[61]),
	.p(p61_61),
	.g(g61_61)
	);
wire p62_62, g62_62;
half_adder ha_62(
	.a(A[62]),
	.b(B[62]),
	.p(p62_62),
	.g(g62_62)
	);
wire p63_63, g63_63;
half_adder ha_63(
	.a(A[63]),
	.b(B[63]),
	.p(p63_63),
	.g(g63_63)
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
wire p33_32, g33_32;
inner_adder in33_32(
.gi_k(g33_33),
.pi_k(p33_33),
.gk_1_j(g32_32),
.pk_1_j(p32_32),
.gi_j(g33_32),
.pi_j(p33_32)
);
wire p35_34, g35_34;
inner_adder in35_34(
.gi_k(g35_35),
.pi_k(p35_35),
.gk_1_j(g34_34),
.pk_1_j(p34_34),
.gi_j(g35_34),
.pi_j(p35_34)
);
wire p37_36, g37_36;
inner_adder in37_36(
.gi_k(g37_37),
.pi_k(p37_37),
.gk_1_j(g36_36),
.pk_1_j(p36_36),
.gi_j(g37_36),
.pi_j(p37_36)
);
wire p39_38, g39_38;
inner_adder in39_38(
.gi_k(g39_39),
.pi_k(p39_39),
.gk_1_j(g38_38),
.pk_1_j(p38_38),
.gi_j(g39_38),
.pi_j(p39_38)
);
wire p41_40, g41_40;
inner_adder in41_40(
.gi_k(g41_41),
.pi_k(p41_41),
.gk_1_j(g40_40),
.pk_1_j(p40_40),
.gi_j(g41_40),
.pi_j(p41_40)
);
wire p43_42, g43_42;
inner_adder in43_42(
.gi_k(g43_43),
.pi_k(p43_43),
.gk_1_j(g42_42),
.pk_1_j(p42_42),
.gi_j(g43_42),
.pi_j(p43_42)
);
wire p45_44, g45_44;
inner_adder in45_44(
.gi_k(g45_45),
.pi_k(p45_45),
.gk_1_j(g44_44),
.pk_1_j(p44_44),
.gi_j(g45_44),
.pi_j(p45_44)
);
wire p47_46, g47_46;
inner_adder in47_46(
.gi_k(g47_47),
.pi_k(p47_47),
.gk_1_j(g46_46),
.pk_1_j(p46_46),
.gi_j(g47_46),
.pi_j(p47_46)
);
wire p49_48, g49_48;
inner_adder in49_48(
.gi_k(g49_49),
.pi_k(p49_49),
.gk_1_j(g48_48),
.pk_1_j(p48_48),
.gi_j(g49_48),
.pi_j(p49_48)
);
wire p51_50, g51_50;
inner_adder in51_50(
.gi_k(g51_51),
.pi_k(p51_51),
.gk_1_j(g50_50),
.pk_1_j(p50_50),
.gi_j(g51_50),
.pi_j(p51_50)
);
wire p53_52, g53_52;
inner_adder in53_52(
.gi_k(g53_53),
.pi_k(p53_53),
.gk_1_j(g52_52),
.pk_1_j(p52_52),
.gi_j(g53_52),
.pi_j(p53_52)
);
wire p55_54, g55_54;
inner_adder in55_54(
.gi_k(g55_55),
.pi_k(p55_55),
.gk_1_j(g54_54),
.pk_1_j(p54_54),
.gi_j(g55_54),
.pi_j(p55_54)
);
wire p57_56, g57_56;
inner_adder in57_56(
.gi_k(g57_57),
.pi_k(p57_57),
.gk_1_j(g56_56),
.pk_1_j(p56_56),
.gi_j(g57_56),
.pi_j(p57_56)
);
wire p59_58, g59_58;
inner_adder in59_58(
.gi_k(g59_59),
.pi_k(p59_59),
.gk_1_j(g58_58),
.pk_1_j(p58_58),
.gi_j(g59_58),
.pi_j(p59_58)
);
wire p61_60, g61_60;
inner_adder in61_60(
.gi_k(g61_61),
.pi_k(p61_61),
.gk_1_j(g60_60),
.pk_1_j(p60_60),
.gi_j(g61_60),
.pi_j(p61_60)
);
wire p63_62, g63_62;
inner_adder in63_62(
.gi_k(g63_63),
.pi_k(p63_63),
.gk_1_j(g62_62),
.pk_1_j(p62_62),
.gi_j(g63_62),
.pi_j(p63_62)
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
wire p34_32, g34_32;
inner_adder in34_32(
.gi_k(g34_34),
.pi_k(p34_34),
.gk_1_j(g33_32),
.pk_1_j(p33_32),
.gi_j(g34_32),
.pi_j(p34_32)
);
wire p35_32, g35_32;
inner_adder in35_32(
.gi_k(g35_34),
.pi_k(p35_34),
.gk_1_j(g33_32),
.pk_1_j(p33_32),
.gi_j(g35_32),
.pi_j(p35_32)
);
wire p38_36, g38_36;
inner_adder in38_36(
.gi_k(g38_38),
.pi_k(p38_38),
.gk_1_j(g37_36),
.pk_1_j(p37_36),
.gi_j(g38_36),
.pi_j(p38_36)
);
wire p39_36, g39_36;
inner_adder in39_36(
.gi_k(g39_38),
.pi_k(p39_38),
.gk_1_j(g37_36),
.pk_1_j(p37_36),
.gi_j(g39_36),
.pi_j(p39_36)
);
wire p42_40, g42_40;
inner_adder in42_40(
.gi_k(g42_42),
.pi_k(p42_42),
.gk_1_j(g41_40),
.pk_1_j(p41_40),
.gi_j(g42_40),
.pi_j(p42_40)
);
wire p43_40, g43_40;
inner_adder in43_40(
.gi_k(g43_42),
.pi_k(p43_42),
.gk_1_j(g41_40),
.pk_1_j(p41_40),
.gi_j(g43_40),
.pi_j(p43_40)
);
wire p46_44, g46_44;
inner_adder in46_44(
.gi_k(g46_46),
.pi_k(p46_46),
.gk_1_j(g45_44),
.pk_1_j(p45_44),
.gi_j(g46_44),
.pi_j(p46_44)
);
wire p47_44, g47_44;
inner_adder in47_44(
.gi_k(g47_46),
.pi_k(p47_46),
.gk_1_j(g45_44),
.pk_1_j(p45_44),
.gi_j(g47_44),
.pi_j(p47_44)
);
wire p50_48, g50_48;
inner_adder in50_48(
.gi_k(g50_50),
.pi_k(p50_50),
.gk_1_j(g49_48),
.pk_1_j(p49_48),
.gi_j(g50_48),
.pi_j(p50_48)
);
wire p51_48, g51_48;
inner_adder in51_48(
.gi_k(g51_50),
.pi_k(p51_50),
.gk_1_j(g49_48),
.pk_1_j(p49_48),
.gi_j(g51_48),
.pi_j(p51_48)
);
wire p54_52, g54_52;
inner_adder in54_52(
.gi_k(g54_54),
.pi_k(p54_54),
.gk_1_j(g53_52),
.pk_1_j(p53_52),
.gi_j(g54_52),
.pi_j(p54_52)
);
wire p55_52, g55_52;
inner_adder in55_52(
.gi_k(g55_54),
.pi_k(p55_54),
.gk_1_j(g53_52),
.pk_1_j(p53_52),
.gi_j(g55_52),
.pi_j(p55_52)
);
wire p58_56, g58_56;
inner_adder in58_56(
.gi_k(g58_58),
.pi_k(p58_58),
.gk_1_j(g57_56),
.pk_1_j(p57_56),
.gi_j(g58_56),
.pi_j(p58_56)
);
wire p59_56, g59_56;
inner_adder in59_56(
.gi_k(g59_58),
.pi_k(p59_58),
.gk_1_j(g57_56),
.pk_1_j(p57_56),
.gi_j(g59_56),
.pi_j(p59_56)
);
wire p62_60, g62_60;
inner_adder in62_60(
.gi_k(g62_62),
.pi_k(p62_62),
.gk_1_j(g61_60),
.pk_1_j(p61_60),
.gi_j(g62_60),
.pi_j(p62_60)
);
wire p63_60, g63_60;
inner_adder in63_60(
.gi_k(g63_62),
.pi_k(p63_62),
.gk_1_j(g61_60),
.pk_1_j(p61_60),
.gi_j(g63_60),
.pi_j(p63_60)
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
wire p36_32, g36_32;
inner_adder in36_32(
.gi_k(g36_36),
.pi_k(p36_36),
.gk_1_j(g35_32),
.pk_1_j(p35_32),
.gi_j(g36_32),
.pi_j(p36_32)
);
wire p37_32, g37_32;
inner_adder in37_32(
.gi_k(g37_36),
.pi_k(p37_36),
.gk_1_j(g35_32),
.pk_1_j(p35_32),
.gi_j(g37_32),
.pi_j(p37_32)
);
wire p38_32, g38_32;
inner_adder in38_32(
.gi_k(g38_36),
.pi_k(p38_36),
.gk_1_j(g35_32),
.pk_1_j(p35_32),
.gi_j(g38_32),
.pi_j(p38_32)
);
wire p39_32, g39_32;
inner_adder in39_32(
.gi_k(g39_36),
.pi_k(p39_36),
.gk_1_j(g35_32),
.pk_1_j(p35_32),
.gi_j(g39_32),
.pi_j(p39_32)
);
wire p44_40, g44_40;
inner_adder in44_40(
.gi_k(g44_44),
.pi_k(p44_44),
.gk_1_j(g43_40),
.pk_1_j(p43_40),
.gi_j(g44_40),
.pi_j(p44_40)
);
wire p45_40, g45_40;
inner_adder in45_40(
.gi_k(g45_44),
.pi_k(p45_44),
.gk_1_j(g43_40),
.pk_1_j(p43_40),
.gi_j(g45_40),
.pi_j(p45_40)
);
wire p46_40, g46_40;
inner_adder in46_40(
.gi_k(g46_44),
.pi_k(p46_44),
.gk_1_j(g43_40),
.pk_1_j(p43_40),
.gi_j(g46_40),
.pi_j(p46_40)
);
wire p47_40, g47_40;
inner_adder in47_40(
.gi_k(g47_44),
.pi_k(p47_44),
.gk_1_j(g43_40),
.pk_1_j(p43_40),
.gi_j(g47_40),
.pi_j(p47_40)
);
wire p52_48, g52_48;
inner_adder in52_48(
.gi_k(g52_52),
.pi_k(p52_52),
.gk_1_j(g51_48),
.pk_1_j(p51_48),
.gi_j(g52_48),
.pi_j(p52_48)
);
wire p53_48, g53_48;
inner_adder in53_48(
.gi_k(g53_52),
.pi_k(p53_52),
.gk_1_j(g51_48),
.pk_1_j(p51_48),
.gi_j(g53_48),
.pi_j(p53_48)
);
wire p54_48, g54_48;
inner_adder in54_48(
.gi_k(g54_52),
.pi_k(p54_52),
.gk_1_j(g51_48),
.pk_1_j(p51_48),
.gi_j(g54_48),
.pi_j(p54_48)
);
wire p55_48, g55_48;
inner_adder in55_48(
.gi_k(g55_52),
.pi_k(p55_52),
.gk_1_j(g51_48),
.pk_1_j(p51_48),
.gi_j(g55_48),
.pi_j(p55_48)
);
wire p60_56, g60_56;
inner_adder in60_56(
.gi_k(g60_60),
.pi_k(p60_60),
.gk_1_j(g59_56),
.pk_1_j(p59_56),
.gi_j(g60_56),
.pi_j(p60_56)
);
wire p61_56, g61_56;
inner_adder in61_56(
.gi_k(g61_60),
.pi_k(p61_60),
.gk_1_j(g59_56),
.pk_1_j(p59_56),
.gi_j(g61_56),
.pi_j(p61_56)
);
wire p62_56, g62_56;
inner_adder in62_56(
.gi_k(g62_60),
.pi_k(p62_60),
.gk_1_j(g59_56),
.pk_1_j(p59_56),
.gi_j(g62_56),
.pi_j(p62_56)
);
wire p63_56, g63_56;
inner_adder in63_56(
.gi_k(g63_60),
.pi_k(p63_60),
.gk_1_j(g59_56),
.pk_1_j(p59_56),
.gi_j(g63_56),
.pi_j(p63_56)
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
wire p40_32, g40_32;
inner_adder in40_32(
.gi_k(g40_40),
.pi_k(p40_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g40_32),
.pi_j(p40_32)
);
wire p41_32, g41_32;
inner_adder in41_32(
.gi_k(g41_40),
.pi_k(p41_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g41_32),
.pi_j(p41_32)
);
wire p42_32, g42_32;
inner_adder in42_32(
.gi_k(g42_40),
.pi_k(p42_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g42_32),
.pi_j(p42_32)
);
wire p43_32, g43_32;
inner_adder in43_32(
.gi_k(g43_40),
.pi_k(p43_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g43_32),
.pi_j(p43_32)
);
wire p44_32, g44_32;
inner_adder in44_32(
.gi_k(g44_40),
.pi_k(p44_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g44_32),
.pi_j(p44_32)
);
wire p45_32, g45_32;
inner_adder in45_32(
.gi_k(g45_40),
.pi_k(p45_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g45_32),
.pi_j(p45_32)
);
wire p46_32, g46_32;
inner_adder in46_32(
.gi_k(g46_40),
.pi_k(p46_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g46_32),
.pi_j(p46_32)
);
wire p47_32, g47_32;
inner_adder in47_32(
.gi_k(g47_40),
.pi_k(p47_40),
.gk_1_j(g39_32),
.pk_1_j(p39_32),
.gi_j(g47_32),
.pi_j(p47_32)
);
wire p56_48, g56_48;
inner_adder in56_48(
.gi_k(g56_56),
.pi_k(p56_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g56_48),
.pi_j(p56_48)
);
wire p57_48, g57_48;
inner_adder in57_48(
.gi_k(g57_56),
.pi_k(p57_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g57_48),
.pi_j(p57_48)
);
wire p58_48, g58_48;
inner_adder in58_48(
.gi_k(g58_56),
.pi_k(p58_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g58_48),
.pi_j(p58_48)
);
wire p59_48, g59_48;
inner_adder in59_48(
.gi_k(g59_56),
.pi_k(p59_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g59_48),
.pi_j(p59_48)
);
wire p60_48, g60_48;
inner_adder in60_48(
.gi_k(g60_56),
.pi_k(p60_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g60_48),
.pi_j(p60_48)
);
wire p61_48, g61_48;
inner_adder in61_48(
.gi_k(g61_56),
.pi_k(p61_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g61_48),
.pi_j(p61_48)
);
wire p62_48, g62_48;
inner_adder in62_48(
.gi_k(g62_56),
.pi_k(p62_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g62_48),
.pi_j(p62_48)
);
wire p63_48, g63_48;
inner_adder in63_48(
.gi_k(g63_56),
.pi_k(p63_56),
.gk_1_j(g55_48),
.pk_1_j(p55_48),
.gi_j(g63_48),
.pi_j(p63_48)
);
wire p16_0, g16_0;
inner_adder in16_0(
.gi_k(g16_16),
.pi_k(p16_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g16_0),
.pi_j(p16_0)
);
wire p17_0, g17_0;
inner_adder in17_0(
.gi_k(g17_16),
.pi_k(p17_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g17_0),
.pi_j(p17_0)
);
wire p18_0, g18_0;
inner_adder in18_0(
.gi_k(g18_16),
.pi_k(p18_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g18_0),
.pi_j(p18_0)
);
wire p19_0, g19_0;
inner_adder in19_0(
.gi_k(g19_16),
.pi_k(p19_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g19_0),
.pi_j(p19_0)
);
wire p20_0, g20_0;
inner_adder in20_0(
.gi_k(g20_16),
.pi_k(p20_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g20_0),
.pi_j(p20_0)
);
wire p21_0, g21_0;
inner_adder in21_0(
.gi_k(g21_16),
.pi_k(p21_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g21_0),
.pi_j(p21_0)
);
wire p22_0, g22_0;
inner_adder in22_0(
.gi_k(g22_16),
.pi_k(p22_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g22_0),
.pi_j(p22_0)
);
wire p23_0, g23_0;
inner_adder in23_0(
.gi_k(g23_16),
.pi_k(p23_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g23_0),
.pi_j(p23_0)
);
wire p24_0, g24_0;
inner_adder in24_0(
.gi_k(g24_16),
.pi_k(p24_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g24_0),
.pi_j(p24_0)
);
wire p25_0, g25_0;
inner_adder in25_0(
.gi_k(g25_16),
.pi_k(p25_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g25_0),
.pi_j(p25_0)
);
wire p26_0, g26_0;
inner_adder in26_0(
.gi_k(g26_16),
.pi_k(p26_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g26_0),
.pi_j(p26_0)
);
wire p27_0, g27_0;
inner_adder in27_0(
.gi_k(g27_16),
.pi_k(p27_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g27_0),
.pi_j(p27_0)
);
wire p28_0, g28_0;
inner_adder in28_0(
.gi_k(g28_16),
.pi_k(p28_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g28_0),
.pi_j(p28_0)
);
wire p29_0, g29_0;
inner_adder in29_0(
.gi_k(g29_16),
.pi_k(p29_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g29_0),
.pi_j(p29_0)
);
wire p30_0, g30_0;
inner_adder in30_0(
.gi_k(g30_16),
.pi_k(p30_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g30_0),
.pi_j(p30_0)
);
wire p31_0, g31_0;
inner_adder in31_0(
.gi_k(g31_16),
.pi_k(p31_16),
.gk_1_j(g15_0),
.pk_1_j(p15_0),
.gi_j(g31_0),
.pi_j(p31_0)
);
wire p48_32, g48_32;
inner_adder in48_32(
.gi_k(g48_48),
.pi_k(p48_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g48_32),
.pi_j(p48_32)
);
wire p49_32, g49_32;
inner_adder in49_32(
.gi_k(g49_48),
.pi_k(p49_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g49_32),
.pi_j(p49_32)
);
wire p50_32, g50_32;
inner_adder in50_32(
.gi_k(g50_48),
.pi_k(p50_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g50_32),
.pi_j(p50_32)
);
wire p51_32, g51_32;
inner_adder in51_32(
.gi_k(g51_48),
.pi_k(p51_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g51_32),
.pi_j(p51_32)
);
wire p52_32, g52_32;
inner_adder in52_32(
.gi_k(g52_48),
.pi_k(p52_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g52_32),
.pi_j(p52_32)
);
wire p53_32, g53_32;
inner_adder in53_32(
.gi_k(g53_48),
.pi_k(p53_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g53_32),
.pi_j(p53_32)
);
wire p54_32, g54_32;
inner_adder in54_32(
.gi_k(g54_48),
.pi_k(p54_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g54_32),
.pi_j(p54_32)
);
wire p55_32, g55_32;
inner_adder in55_32(
.gi_k(g55_48),
.pi_k(p55_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g55_32),
.pi_j(p55_32)
);
wire p56_32, g56_32;
inner_adder in56_32(
.gi_k(g56_48),
.pi_k(p56_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g56_32),
.pi_j(p56_32)
);
wire p57_32, g57_32;
inner_adder in57_32(
.gi_k(g57_48),
.pi_k(p57_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g57_32),
.pi_j(p57_32)
);
wire p58_32, g58_32;
inner_adder in58_32(
.gi_k(g58_48),
.pi_k(p58_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g58_32),
.pi_j(p58_32)
);
wire p59_32, g59_32;
inner_adder in59_32(
.gi_k(g59_48),
.pi_k(p59_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g59_32),
.pi_j(p59_32)
);
wire p60_32, g60_32;
inner_adder in60_32(
.gi_k(g60_48),
.pi_k(p60_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g60_32),
.pi_j(p60_32)
);
wire p61_32, g61_32;
inner_adder in61_32(
.gi_k(g61_48),
.pi_k(p61_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g61_32),
.pi_j(p61_32)
);
wire p62_32, g62_32;
inner_adder in62_32(
.gi_k(g62_48),
.pi_k(p62_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g62_32),
.pi_j(p62_32)
);
wire p63_32, g63_32;
inner_adder in63_32(
.gi_k(g63_48),
.pi_k(p63_48),
.gk_1_j(g47_32),
.pk_1_j(p47_32),
.gi_j(g63_32),
.pi_j(p63_32)
);
wire p32_0, g32_0;
inner_adder in32_0(
.gi_k(g32_32),
.pi_k(p32_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g32_0),
.pi_j(p32_0)
);
wire p33_0, g33_0;
inner_adder in33_0(
.gi_k(g33_32),
.pi_k(p33_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g33_0),
.pi_j(p33_0)
);
wire p34_0, g34_0;
inner_adder in34_0(
.gi_k(g34_32),
.pi_k(p34_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g34_0),
.pi_j(p34_0)
);
wire p35_0, g35_0;
inner_adder in35_0(
.gi_k(g35_32),
.pi_k(p35_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g35_0),
.pi_j(p35_0)
);
wire p36_0, g36_0;
inner_adder in36_0(
.gi_k(g36_32),
.pi_k(p36_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g36_0),
.pi_j(p36_0)
);
wire p37_0, g37_0;
inner_adder in37_0(
.gi_k(g37_32),
.pi_k(p37_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g37_0),
.pi_j(p37_0)
);
wire p38_0, g38_0;
inner_adder in38_0(
.gi_k(g38_32),
.pi_k(p38_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g38_0),
.pi_j(p38_0)
);
wire p39_0, g39_0;
inner_adder in39_0(
.gi_k(g39_32),
.pi_k(p39_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g39_0),
.pi_j(p39_0)
);
wire p40_0, g40_0;
inner_adder in40_0(
.gi_k(g40_32),
.pi_k(p40_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g40_0),
.pi_j(p40_0)
);
wire p41_0, g41_0;
inner_adder in41_0(
.gi_k(g41_32),
.pi_k(p41_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g41_0),
.pi_j(p41_0)
);
wire p42_0, g42_0;
inner_adder in42_0(
.gi_k(g42_32),
.pi_k(p42_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g42_0),
.pi_j(p42_0)
);
wire p43_0, g43_0;
inner_adder in43_0(
.gi_k(g43_32),
.pi_k(p43_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g43_0),
.pi_j(p43_0)
);
wire p44_0, g44_0;
inner_adder in44_0(
.gi_k(g44_32),
.pi_k(p44_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g44_0),
.pi_j(p44_0)
);
wire p45_0, g45_0;
inner_adder in45_0(
.gi_k(g45_32),
.pi_k(p45_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g45_0),
.pi_j(p45_0)
);
wire p46_0, g46_0;
inner_adder in46_0(
.gi_k(g46_32),
.pi_k(p46_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g46_0),
.pi_j(p46_0)
);
wire p47_0, g47_0;
inner_adder in47_0(
.gi_k(g47_32),
.pi_k(p47_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g47_0),
.pi_j(p47_0)
);
wire p48_0, g48_0;
inner_adder in48_0(
.gi_k(g48_32),
.pi_k(p48_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g48_0),
.pi_j(p48_0)
);
wire p49_0, g49_0;
inner_adder in49_0(
.gi_k(g49_32),
.pi_k(p49_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g49_0),
.pi_j(p49_0)
);
wire p50_0, g50_0;
inner_adder in50_0(
.gi_k(g50_32),
.pi_k(p50_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g50_0),
.pi_j(p50_0)
);
wire p51_0, g51_0;
inner_adder in51_0(
.gi_k(g51_32),
.pi_k(p51_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g51_0),
.pi_j(p51_0)
);
wire p52_0, g52_0;
inner_adder in52_0(
.gi_k(g52_32),
.pi_k(p52_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g52_0),
.pi_j(p52_0)
);
wire p53_0, g53_0;
inner_adder in53_0(
.gi_k(g53_32),
.pi_k(p53_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g53_0),
.pi_j(p53_0)
);
wire p54_0, g54_0;
inner_adder in54_0(
.gi_k(g54_32),
.pi_k(p54_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g54_0),
.pi_j(p54_0)
);
wire p55_0, g55_0;
inner_adder in55_0(
.gi_k(g55_32),
.pi_k(p55_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g55_0),
.pi_j(p55_0)
);
wire p56_0, g56_0;
inner_adder in56_0(
.gi_k(g56_32),
.pi_k(p56_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g56_0),
.pi_j(p56_0)
);
wire p57_0, g57_0;
inner_adder in57_0(
.gi_k(g57_32),
.pi_k(p57_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g57_0),
.pi_j(p57_0)
);
wire p58_0, g58_0;
inner_adder in58_0(
.gi_k(g58_32),
.pi_k(p58_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g58_0),
.pi_j(p58_0)
);
wire p59_0, g59_0;
inner_adder in59_0(
.gi_k(g59_32),
.pi_k(p59_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g59_0),
.pi_j(p59_0)
);
wire p60_0, g60_0;
inner_adder in60_0(
.gi_k(g60_32),
.pi_k(p60_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g60_0),
.pi_j(p60_0)
);
wire p61_0, g61_0;
inner_adder in61_0(
.gi_k(g61_32),
.pi_k(p61_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g61_0),
.pi_j(p61_0)
);
wire p62_0, g62_0;
inner_adder in62_0(
.gi_k(g62_32),
.pi_k(p62_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g62_0),
.pi_j(p62_0)
);
wire p63_0, g63_0;
inner_adder in63_0(
.gi_k(g63_32),
.pi_k(p63_32),
.gk_1_j(g31_0),
.pk_1_j(p31_0),
.gi_j(g63_0),
.pi_j(p63_0)
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
res_adder res_32(
	.pi_i(p32_32),
	.gi_1_0(g31_0),
	.si(res[32])
	);
res_adder res_33(
	.pi_i(p33_33),
	.gi_1_0(g32_0),
	.si(res[33])
	);
res_adder res_34(
	.pi_i(p34_34),
	.gi_1_0(g33_0),
	.si(res[34])
	);
res_adder res_35(
	.pi_i(p35_35),
	.gi_1_0(g34_0),
	.si(res[35])
	);
res_adder res_36(
	.pi_i(p36_36),
	.gi_1_0(g35_0),
	.si(res[36])
	);
res_adder res_37(
	.pi_i(p37_37),
	.gi_1_0(g36_0),
	.si(res[37])
	);
res_adder res_38(
	.pi_i(p38_38),
	.gi_1_0(g37_0),
	.si(res[38])
	);
res_adder res_39(
	.pi_i(p39_39),
	.gi_1_0(g38_0),
	.si(res[39])
	);
res_adder res_40(
	.pi_i(p40_40),
	.gi_1_0(g39_0),
	.si(res[40])
	);
res_adder res_41(
	.pi_i(p41_41),
	.gi_1_0(g40_0),
	.si(res[41])
	);
res_adder res_42(
	.pi_i(p42_42),
	.gi_1_0(g41_0),
	.si(res[42])
	);
res_adder res_43(
	.pi_i(p43_43),
	.gi_1_0(g42_0),
	.si(res[43])
	);
res_adder res_44(
	.pi_i(p44_44),
	.gi_1_0(g43_0),
	.si(res[44])
	);
res_adder res_45(
	.pi_i(p45_45),
	.gi_1_0(g44_0),
	.si(res[45])
	);
res_adder res_46(
	.pi_i(p46_46),
	.gi_1_0(g45_0),
	.si(res[46])
	);
res_adder res_47(
	.pi_i(p47_47),
	.gi_1_0(g46_0),
	.si(res[47])
	);
res_adder res_48(
	.pi_i(p48_48),
	.gi_1_0(g47_0),
	.si(res[48])
	);
res_adder res_49(
	.pi_i(p49_49),
	.gi_1_0(g48_0),
	.si(res[49])
	);
res_adder res_50(
	.pi_i(p50_50),
	.gi_1_0(g49_0),
	.si(res[50])
	);
res_adder res_51(
	.pi_i(p51_51),
	.gi_1_0(g50_0),
	.si(res[51])
	);
res_adder res_52(
	.pi_i(p52_52),
	.gi_1_0(g51_0),
	.si(res[52])
	);
res_adder res_53(
	.pi_i(p53_53),
	.gi_1_0(g52_0),
	.si(res[53])
	);
res_adder res_54(
	.pi_i(p54_54),
	.gi_1_0(g53_0),
	.si(res[54])
	);
res_adder res_55(
	.pi_i(p55_55),
	.gi_1_0(g54_0),
	.si(res[55])
	);
res_adder res_56(
	.pi_i(p56_56),
	.gi_1_0(g55_0),
	.si(res[56])
	);
res_adder res_57(
	.pi_i(p57_57),
	.gi_1_0(g56_0),
	.si(res[57])
	);
res_adder res_58(
	.pi_i(p58_58),
	.gi_1_0(g57_0),
	.si(res[58])
	);
res_adder res_59(
	.pi_i(p59_59),
	.gi_1_0(g58_0),
	.si(res[59])
	);
res_adder res_60(
	.pi_i(p60_60),
	.gi_1_0(g59_0),
	.si(res[60])
	);
res_adder res_61(
	.pi_i(p61_61),
	.gi_1_0(g60_0),
	.si(res[61])
	);
res_adder res_62(
	.pi_i(p62_62),
	.gi_1_0(g61_0),
	.si(res[62])
	);
res_adder res_63(
	.pi_i(p63_63),
	.gi_1_0(g62_0),
	.si(res[63])
	);
wire res_64_DUMMY;
wire a_64,b_64;
assign a_64 = A[63];
assign b_64 = B[63];
wire res_64;
assign res_64 = a_64 ^ b_64 ^ g63_0;
assign res_63_DUMMY = res[63];
assign overflow = res_64 ^ res_63_DUMMY;

endmodule
