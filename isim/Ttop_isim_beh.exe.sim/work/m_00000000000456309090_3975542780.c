/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/vga_port.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {799U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {524U, 0U};
static unsigned int ng5[] = {95U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {35U, 0U};
static unsigned int ng8[] = {144U, 0U};
static unsigned int ng9[] = {143U, 0U};
static unsigned int ng10[] = {783U, 0U};
static unsigned int ng11[] = {34U, 0U};
static unsigned int ng12[] = {514U, 0U};
static unsigned int ng13[] = {0U, 0U};



static void Always_37_0(char *t0)
{
    char t13[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 5936);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(42, ng0);

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB12;

LAB11:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB12;

LAB15:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB13;

LAB14:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(45, ng0);

LAB19:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB21;

LAB20:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB21;

LAB24:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB22;

LAB23:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);

LAB27:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);

LAB18:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 10, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB8;

LAB12:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB14;

LAB13:    *((unsigned int *)t13) = 1;
    goto LAB14;

LAB16:    xsi_set_current_line(44, ng0);
    t16 = (t0 + 3208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng3)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t18, 10, t19, 32);
    t21 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t21, t20, 0, 0, 10, 0LL);
    goto LAB18;

LAB21:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB23;

LAB22:    *((unsigned int *)t13) = 1;
    goto LAB23;

LAB25:    xsi_set_current_line(47, ng0);
    t16 = (t0 + 3048);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng3)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t18, 10, t19, 32);
    t21 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t21, t20, 0, 0, 10, 0LL);
    goto LAB27;

}

static void Cont_55_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB6;

LAB7:    t10 = (t0 + 6112);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t6 + 4);
    t18 = *((unsigned int *)t6);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t23 = (t0 + 5952);
    *((int *)t23) = 1;

LAB1:    return;
LAB5:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB7;

}

static void Cont_56_2(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB6;

LAB7:    t10 = (t0 + 6176);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t6 + 4);
    t18 = *((unsigned int *)t6);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t23 = (t0 + 5968);
    *((int *)t23) = 1;

LAB1:    return;
LAB5:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB7;

}

static void Cont_57_3(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 10, t4, 10, t5, 10);
    t7 = (t0 + 6240);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 511U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 8);
    t20 = (t0 + 5984);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_58_4(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 10, t4, 10, t5, 10);
    t7 = (t0 + 6304);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 1023U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 9);
    t20 = (t0 + 6000);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_59_5(char *t0)
{
    char t6[8];
    char t14[8];
    char t18[8];
    char t54[8];
    char t58[8];
    char t94[8];
    char t98[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    int t122;
    int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;

LAB0:    t1 = (t0 + 5368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB6;

LAB7:    t10 = (t0 + 3208);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng10)));
    memset(t14, 0, 8);
    t15 = (t12 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t16 = (t13 + 4);
    if (*((unsigned int *)t16) != 0)
        goto LAB10;

LAB13:    if (*((unsigned int *)t12) > *((unsigned int *)t13))
        goto LAB12;

LAB11:    *((unsigned int *)t14) = 1;

LAB12:    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t14);
    t21 = (t19 & t20);
    *((unsigned int *)t18) = t21;
    t22 = (t6 + 4);
    t23 = (t14 + 4);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t22);
    t26 = *((unsigned int *)t23);
    t27 = (t25 | t26);
    *((unsigned int *)t24) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 != 0);
    if (t29 == 1)
        goto LAB14;

LAB15:
LAB16:    t50 = (t0 + 3048);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = ((char*)((ng11)));
    memset(t54, 0, 8);
    t55 = (t52 + 4);
    if (*((unsigned int *)t55) != 0)
        goto LAB18;

LAB17:    t56 = (t53 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB18;

LAB21:    if (*((unsigned int *)t52) > *((unsigned int *)t53))
        goto LAB19;

LAB20:    t59 = *((unsigned int *)t18);
    t60 = *((unsigned int *)t54);
    t61 = (t59 & t60);
    *((unsigned int *)t58) = t61;
    t62 = (t18 + 4);
    t63 = (t54 + 4);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB22;

LAB23:
LAB24:    t90 = (t0 + 3048);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    t93 = ((char*)((ng12)));
    memset(t94, 0, 8);
    t95 = (t92 + 4);
    if (*((unsigned int *)t95) != 0)
        goto LAB26;

LAB25:    t96 = (t93 + 4);
    if (*((unsigned int *)t96) != 0)
        goto LAB26;

LAB29:    if (*((unsigned int *)t92) > *((unsigned int *)t93))
        goto LAB28;

LAB27:    *((unsigned int *)t94) = 1;

LAB28:    t99 = *((unsigned int *)t58);
    t100 = *((unsigned int *)t94);
    t101 = (t99 & t100);
    *((unsigned int *)t98) = t101;
    t102 = (t58 + 4);
    t103 = (t94 + 4);
    t104 = (t98 + 4);
    t105 = *((unsigned int *)t102);
    t106 = *((unsigned int *)t103);
    t107 = (t105 | t106);
    *((unsigned int *)t104) = t107;
    t108 = *((unsigned int *)t104);
    t109 = (t108 != 0);
    if (t109 == 1)
        goto LAB30;

LAB31:
LAB32:    t130 = (t0 + 6368);
    t131 = (t130 + 56U);
    t132 = *((char **)t131);
    t133 = (t132 + 56U);
    t134 = *((char **)t133);
    memset(t134, 0, 8);
    t135 = 1U;
    t136 = t135;
    t137 = (t98 + 4);
    t138 = *((unsigned int *)t98);
    t135 = (t135 & t138);
    t139 = *((unsigned int *)t137);
    t136 = (t136 & t139);
    t140 = (t134 + 4);
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t141 | t135);
    t142 = *((unsigned int *)t140);
    *((unsigned int *)t140) = (t142 | t136);
    xsi_driver_vfirst_trans(t130, 0, 0);
    t143 = (t0 + 6016);
    *((int *)t143) = 1;

LAB1:    return;
LAB5:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB7;

LAB10:    t17 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB12;

LAB14:    t30 = *((unsigned int *)t18);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t18) = (t30 | t31);
    t32 = (t6 + 4);
    t33 = (t14 + 4);
    t34 = *((unsigned int *)t6);
    t35 = (~(t34));
    t36 = *((unsigned int *)t32);
    t37 = (~(t36));
    t38 = *((unsigned int *)t14);
    t39 = (~(t38));
    t40 = *((unsigned int *)t33);
    t41 = (~(t40));
    t42 = (t35 & t37);
    t43 = (t39 & t41);
    t44 = (~(t42));
    t45 = (~(t43));
    t46 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t46 & t44);
    t47 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t47 & t45);
    t48 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t48 & t44);
    t49 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t49 & t45);
    goto LAB16;

LAB18:    t57 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB20;

LAB19:    *((unsigned int *)t54) = 1;
    goto LAB20;

LAB22:    t70 = *((unsigned int *)t58);
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t58) = (t70 | t71);
    t72 = (t18 + 4);
    t73 = (t54 + 4);
    t74 = *((unsigned int *)t18);
    t75 = (~(t74));
    t76 = *((unsigned int *)t72);
    t77 = (~(t76));
    t78 = *((unsigned int *)t54);
    t79 = (~(t78));
    t80 = *((unsigned int *)t73);
    t81 = (~(t80));
    t82 = (t75 & t77);
    t83 = (t79 & t81);
    t84 = (~(t82));
    t85 = (~(t83));
    t86 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t86 & t84);
    t87 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t87 & t85);
    t88 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t88 & t84);
    t89 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t89 & t85);
    goto LAB24;

LAB26:    t97 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB28;

LAB30:    t110 = *((unsigned int *)t98);
    t111 = *((unsigned int *)t104);
    *((unsigned int *)t98) = (t110 | t111);
    t112 = (t58 + 4);
    t113 = (t94 + 4);
    t114 = *((unsigned int *)t58);
    t115 = (~(t114));
    t116 = *((unsigned int *)t112);
    t117 = (~(t116));
    t118 = *((unsigned int *)t94);
    t119 = (~(t118));
    t120 = *((unsigned int *)t113);
    t121 = (~(t120));
    t122 = (t115 & t117);
    t123 = (t119 & t121);
    t124 = (~(t122));
    t125 = (~(t123));
    t126 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t126 & t124);
    t127 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t127 & t125);
    t128 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t128 & t124);
    t129 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t129 & t125);
    goto LAB32;

}

static void Cont_61_6(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;

LAB0:    t1 = (t0 + 5616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2648U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    t20 = *((unsigned int *)t12);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t16, 8);

LAB16:    t22 = (t0 + 6560);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 15U;
    t28 = t27;
    t29 = (t3 + 4);
    t30 = *((unsigned int *)t3);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 3);
    t35 = (t0 + 6496);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memset(t39, 0, 8);
    t40 = 240U;
    t41 = t40;
    t42 = (t3 + 4);
    t43 = *((unsigned int *)t3);
    t40 = (t40 & t43);
    t44 = *((unsigned int *)t42);
    t41 = (t41 & t44);
    t40 = (t40 >> 4);
    t41 = (t41 >> 4);
    t45 = (t39 + 4);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t46 | t40);
    t47 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t47 | t41);
    xsi_driver_vfirst_trans(t35, 0, 3);
    t48 = (t0 + 6432);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memset(t52, 0, 8);
    t53 = 3840U;
    t54 = t53;
    t55 = (t3 + 4);
    t56 = *((unsigned int *)t3);
    t53 = (t53 & t56);
    t57 = *((unsigned int *)t55);
    t54 = (t54 & t57);
    t53 = (t53 >> 8);
    t54 = (t54 >> 8);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t59 | t53);
    t60 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t60 | t54);
    xsi_driver_vfirst_trans(t48, 0, 3);
    t61 = (t0 + 6032);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1368U);
    t17 = *((char **)t16);
    goto LAB9;

LAB10:    t16 = ((char*)((ng13)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 12, t17, 12, t16, 12);
    goto LAB16;

LAB14:    memcpy(t3, t17, 8);
    goto LAB16;

}


extern void work_m_00000000000456309090_3975542780_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Cont_55_1,(void *)Cont_56_2,(void *)Cont_57_3,(void *)Cont_58_4,(void *)Cont_59_5,(void *)Cont_61_6};
	xsi_register_didat("work_m_00000000000456309090_3975542780", "isim/Ttop_isim_beh.exe.sim/work/m_00000000000456309090_3975542780.didat");
	xsi_register_executes(pe);
}
