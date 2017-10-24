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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/vga_cursor.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {40, 0};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {15U, 0U};



static void Always_37_0(char *t0)
{
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

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 5848);
    *((int *)t2) = 1;
    t3 = (t0 + 4320);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB11;

}

static void Cont_45_1(char *t0)
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
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1688U);
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

LAB9:    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    t21 = *((unsigned int *)t12);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t23, 8);

LAB16:    t24 = (t0 + 6008);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8);
    xsi_driver_vfirst_trans(t24, 0, 31);
    t29 = (t0 + 5864);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 3208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    goto LAB9;

LAB10:    t23 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t18, 32, t23, 32);
    goto LAB16;

LAB14:    memcpy(t3, t18, 8);
    goto LAB16;

}

static void Cont_48_2(char *t0)
{
    char t3[8];
    char t13[8];
    char t14[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 4);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 4);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_multiply(t13, 32, t3, 32, t12, 32);
    t15 = (t0 + 2008U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 4);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 4);
    *((unsigned int *)t15) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 63U);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 63U);
    memset(t24, 0, 8);
    xsi_vlog_unsigned_add(t24, 32, t13, 32, t14, 32);
    t25 = (t0 + 6072);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memset(t29, 0, 8);
    t30 = 2047U;
    t31 = t30;
    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t30 = (t30 & t33);
    t34 = *((unsigned int *)t32);
    t31 = (t31 & t34);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 | t30);
    t37 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t37 | t31);
    xsi_driver_vfirst_trans(t25, 0, 10);
    t38 = (t0 + 5880);
    *((int *)t38) = 1;

LAB1:    return;
}

static void Always_50_3(char *t0)
{
    char t6[8];
    char t17[8];
    char t39[8];
    char t52[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
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
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;

LAB0:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5896);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t0 + 3208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 2);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 2047U);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 2047U);
    memset(t17, 0, 8);
    t18 = (t5 + 4);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t6);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB9;

LAB6:    if (t29 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t17) = 1;

LAB9:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB12:    goto LAB2;

LAB8:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);

LAB13:    xsi_set_current_line(52, ng0);
    t40 = (t0 + 3208);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memset(t39, 0, 8);
    t43 = (t39 + 4);
    t44 = (t42 + 4);
    t45 = *((unsigned int *)t42);
    t46 = (t45 >> 0);
    *((unsigned int *)t39) = t46;
    t47 = *((unsigned int *)t44);
    t48 = (t47 >> 0);
    *((unsigned int *)t43) = t48;
    t49 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t49 & 3U);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t50 & 3U);
    t51 = ((char*)((ng4)));
    memset(t52, 0, 8);
    t53 = (t39 + 4);
    t54 = (t51 + 4);
    t55 = *((unsigned int *)t39);
    t56 = *((unsigned int *)t51);
    t57 = (t55 ^ t56);
    t58 = *((unsigned int *)t53);
    t59 = *((unsigned int *)t54);
    t60 = (t58 ^ t59);
    t61 = (t57 | t60);
    t62 = *((unsigned int *)t53);
    t63 = *((unsigned int *)t54);
    t64 = (t62 | t63);
    t65 = (~(t64));
    t66 = (t61 & t65);
    if (t66 != 0)
        goto LAB17;

LAB14:    if (t64 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t52) = 1;

LAB17:    t68 = (t52 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t52);
    t72 = (t71 & t70);
    t73 = (t72 != 0);
    if (t73 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 3U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 3U);
    t8 = ((char*)((ng6)));
    memset(t17, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t8);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t10);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t10);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB24;

LAB21:    if (t29 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t17) = 1;

LAB24:    t19 = (t17 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 3U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 3U);
    t8 = ((char*)((ng5)));
    memset(t17, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t8);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t10);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t10);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB35;

LAB32:    if (t29 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t17) = 1;

LAB35:    t19 = (t17 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB38:
LAB27:
LAB20:    goto LAB12;

LAB16:    t67 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(53, ng0);
    t74 = ((char*)((ng5)));
    t75 = (t0 + 3368);
    xsi_vlogvar_assign_value(t75, t74, 0, 0, 1);
    goto LAB20;

LAB23:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(55, ng0);
    t32 = (t0 + 2008U);
    t33 = *((char **)t32);
    memset(t39, 0, 8);
    t32 = (t39 + 4);
    t40 = (t33 + 4);
    t45 = *((unsigned int *)t33);
    t46 = (t45 >> 0);
    *((unsigned int *)t39) = t46;
    t47 = *((unsigned int *)t40);
    t48 = (t47 >> 0);
    *((unsigned int *)t32) = t48;
    t49 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t49 & 15U);
    t50 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t50 & 15U);
    t41 = ((char*)((ng7)));
    memset(t52, 0, 8);
    t42 = (t39 + 4);
    t43 = (t41 + 4);
    t55 = *((unsigned int *)t39);
    t56 = *((unsigned int *)t41);
    t57 = (t55 ^ t56);
    t58 = *((unsigned int *)t42);
    t59 = *((unsigned int *)t43);
    t60 = (t58 ^ t59);
    t61 = (t57 | t60);
    t62 = *((unsigned int *)t42);
    t63 = *((unsigned int *)t43);
    t64 = (t62 | t63);
    t65 = (~(t64));
    t66 = (t61 & t65);
    if (t66 != 0)
        goto LAB31;

LAB28:    if (t64 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t52) = 1;

LAB31:    t51 = (t0 + 3368);
    xsi_vlogvar_assign_value(t51, t52, 0, 0, 1);
    goto LAB27;

LAB30:    t44 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB31;

LAB34:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(57, ng0);
    t32 = (t0 + 2168U);
    t33 = *((char **)t32);
    memset(t39, 0, 8);
    t32 = (t39 + 4);
    t40 = (t33 + 4);
    t45 = *((unsigned int *)t33);
    t46 = (t45 >> 0);
    *((unsigned int *)t39) = t46;
    t47 = *((unsigned int *)t40);
    t48 = (t47 >> 0);
    *((unsigned int *)t32) = t48;
    t49 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t49 & 15U);
    t50 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t50 & 15U);
    t41 = ((char*)((ng7)));
    memset(t52, 0, 8);
    t42 = (t39 + 4);
    t43 = (t41 + 4);
    t55 = *((unsigned int *)t39);
    t56 = *((unsigned int *)t41);
    t57 = (t55 ^ t56);
    t58 = *((unsigned int *)t42);
    t59 = *((unsigned int *)t43);
    t60 = (t58 ^ t59);
    t61 = (t57 | t60);
    t62 = *((unsigned int *)t42);
    t63 = *((unsigned int *)t43);
    t64 = (t62 | t63);
    t65 = (~(t64));
    t66 = (t61 & t65);
    if (t66 != 0)
        goto LAB42;

LAB39:    if (t64 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t52) = 1;

LAB42:    t51 = (t0 + 3368);
    xsi_vlogvar_assign_value(t51, t52, 0, 0, 1);
    goto LAB38;

LAB41:    t44 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB42;

}

static void Cont_64_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char t51[8];
    char t53[8];
    char t66[8];
    char t79[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;

LAB0:    t1 = (t0 + 5280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = (t0 + 3368);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t12 = (t5 + 4);
    t13 = (t7 + 4);
    t14 = (t8 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t4, 0, 8);
    t40 = (t8 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (~(t41));
    t43 = *((unsigned int *)t8);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t40) != 0)
        goto LAB9;

LAB10:    t47 = (t4 + 4);
    t48 = *((unsigned int *)t4);
    t49 = *((unsigned int *)t47);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB11;

LAB12:    t91 = *((unsigned int *)t4);
    t92 = (~(t91));
    t93 = *((unsigned int *)t47);
    t94 = (t92 || t93);
    if (t94 > 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t47) > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) > 0)
        goto LAB17;

LAB18:    memcpy(t3, t95, 8);

LAB19:    t96 = (t0 + 6136);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    memset(t100, 0, 8);
    t101 = 4095U;
    t102 = t101;
    t103 = (t3 + 4);
    t104 = *((unsigned int *)t3);
    t101 = (t101 & t104);
    t105 = *((unsigned int *)t103);
    t102 = (t102 & t105);
    t106 = (t100 + 4);
    t107 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t107 | t101);
    t108 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t108 | t102);
    xsi_driver_vfirst_trans(t96, 0, 11);
    t109 = (t0 + 5912);
    *((int *)t109) = 1;

LAB1:    return;
LAB4:    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t8) = (t20 | t21);
    t22 = (t5 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = (t25 & t27);
    t33 = (t29 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t35);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    t39 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t39 & t35);
    goto LAB6;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB9:    t46 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB10;

LAB11:    t52 = ((char*)((ng2)));
    t54 = (t0 + 3208);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memset(t53, 0, 8);
    t57 = (t53 + 4);
    t58 = (t56 + 4);
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 16);
    *((unsigned int *)t53) = t60;
    t61 = *((unsigned int *)t58);
    t62 = (t61 >> 16);
    *((unsigned int *)t57) = t62;
    t63 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t63 & 3U);
    t64 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t64 & 3U);
    t65 = ((char*)((ng2)));
    t67 = (t0 + 3208);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    memset(t66, 0, 8);
    t70 = (t66 + 4);
    t71 = (t69 + 4);
    t72 = *((unsigned int *)t69);
    t73 = (t72 >> 18);
    *((unsigned int *)t66) = t73;
    t74 = *((unsigned int *)t71);
    t75 = (t74 >> 18);
    *((unsigned int *)t70) = t75;
    t76 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t76 & 3U);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t77 & 3U);
    t78 = ((char*)((ng2)));
    t80 = (t0 + 3208);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    memset(t79, 0, 8);
    t83 = (t79 + 4);
    t84 = (t82 + 4);
    t85 = *((unsigned int *)t82);
    t86 = (t85 >> 20);
    *((unsigned int *)t79) = t86;
    t87 = *((unsigned int *)t84);
    t88 = (t87 >> 20);
    *((unsigned int *)t83) = t88;
    t89 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t89 & 3U);
    t90 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t90 & 3U);
    xsi_vlogtype_concat(t51, 32, 12, 6U, t79, 2, t78, 2, t66, 2, t65, 2, t53, 2, t52, 2);
    goto LAB12;

LAB13:    t95 = ((char*)((ng2)));
    goto LAB14;

LAB15:    xsi_vlog_unsigned_bit_combine(t3, 32, t51, 32, t95, 32);
    goto LAB19;

LAB17:    memcpy(t3, t51, 8);
    goto LAB19;

}

static void Cont_67_5(char *t0)
{
    char t4[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;

LAB0:    t1 = (t0 + 5528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t4 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 2);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 2);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 2047U);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 2047U);
    memset(t15, 0, 8);
    t16 = (t3 + 4);
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t4);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    t31 = (t0 + 6200);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memset(t35, 0, 8);
    t36 = 1U;
    t37 = t36;
    t38 = (t15 + 4);
    t39 = *((unsigned int *)t15);
    t36 = (t36 & t39);
    t40 = *((unsigned int *)t38);
    t37 = (t37 & t40);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t42 | t36);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t43 | t37);
    xsi_driver_vfirst_trans(t31, 0, 0);
    t44 = (t0 + 5928);
    *((int *)t44) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

}


extern void work_m_00000000001403787172_1763081005_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Cont_45_1,(void *)Cont_48_2,(void *)Always_50_3,(void *)Cont_64_4,(void *)Cont_67_5};
	xsi_register_didat("work_m_00000000001403787172_1763081005", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001403787172_1763081005.didat");
	xsi_register_executes(pe);
}
