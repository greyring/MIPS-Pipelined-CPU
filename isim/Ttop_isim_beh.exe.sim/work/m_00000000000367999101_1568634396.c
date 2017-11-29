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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/vga_controller.v";
static int ng1[] = {0, 0};
static int ng2[] = {31, 0};
static int ng3[] = {24, 0};
static int ng4[] = {23, 0};
static int ng5[] = {16, 0};
static int ng6[] = {15, 0};
static int ng7[] = {8, 0};
static int ng8[] = {7, 0};
static unsigned int ng9[] = {1U, 0U};
static unsigned int ng10[] = {0U, 0U};
static unsigned int ng11[] = {3U, 0U};



static void Always_67_0(char *t0)
{
    char t13[8];
    char t20[8];
    char t29[8];
    char t30[8];
    char t31[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    int t39;
    char *t40;
    unsigned int t41;
    int t42;
    int t43;
    char *t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    int t53;

LAB0:    t1 = (t0 + 8536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 9600);
    *((int *)t2) = 1;
    t3 = (t0 + 8568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1616U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(70, ng0);

LAB9:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7456);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB15;

LAB16:
LAB17:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB25;

LAB26:
LAB27:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(69, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 7456);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(73, ng0);
    t11 = (t0 + 4656U);
    t12 = *((char **)t11);
    memset(t20, 0, 8);
    t11 = (t20 + 4);
    t21 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 24);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 24);
    *((unsigned int *)t11) = t25;
    t26 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t26 & 255U);
    t27 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t27 & 255U);
    t28 = (t0 + 7456);
    t32 = (t0 + 7456);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng2)));
    t36 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t29, t30, t31, ((int*)(t34)), 2, t35, 32, 1, t36, 32, 1);
    t37 = (t29 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t30 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    t44 = (t31 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t43 && t46);
    if (t47 == 1)
        goto LAB13;

LAB14:    goto LAB12;

LAB13:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(75, ng0);
    t11 = (t0 + 4656U);
    t12 = *((char **)t11);
    memset(t20, 0, 8);
    t11 = (t20 + 4);
    t21 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 16);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 16);
    *((unsigned int *)t11) = t25;
    t26 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t26 & 255U);
    t27 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t27 & 255U);
    t28 = (t0 + 7456);
    t32 = (t0 + 7456);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng4)));
    t36 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t29, t30, t31, ((int*)(t34)), 2, t35, 32, 1, t36, 32, 1);
    t37 = (t29 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t30 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    t44 = (t31 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t43 && t46);
    if (t47 == 1)
        goto LAB18;

LAB19:    goto LAB17;

LAB18:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB19;

LAB20:    xsi_set_current_line(77, ng0);
    t11 = (t0 + 4656U);
    t12 = *((char **)t11);
    memset(t20, 0, 8);
    t11 = (t20 + 4);
    t21 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 8);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 8);
    *((unsigned int *)t11) = t25;
    t26 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t26 & 255U);
    t27 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t27 & 255U);
    t28 = (t0 + 7456);
    t32 = (t0 + 7456);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng6)));
    t36 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t29, t30, t31, ((int*)(t34)), 2, t35, 32, 1, t36, 32, 1);
    t37 = (t29 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t30 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    t44 = (t31 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t43 && t46);
    if (t47 == 1)
        goto LAB23;

LAB24:    goto LAB22;

LAB23:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB24;

LAB25:    xsi_set_current_line(79, ng0);
    t11 = (t0 + 4656U);
    t12 = *((char **)t11);
    memset(t20, 0, 8);
    t11 = (t20 + 4);
    t21 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (t22 >> 0);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 0);
    *((unsigned int *)t11) = t25;
    t26 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t26 & 255U);
    t27 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t27 & 255U);
    t28 = (t0 + 7456);
    t32 = (t0 + 7456);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng8)));
    t36 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t29, t30, t31, ((int*)(t34)), 2, t35, 32, 1, t36, 32, 1);
    t37 = (t29 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t30 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    t44 = (t31 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t43 && t46);
    if (t47 == 1)
        goto LAB28;

LAB29:    goto LAB27;

LAB28:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB29;

}

static void Cont_82_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 8784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 7456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 9616);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_128_2(char *t0)
{
    char t4[8];
    char t17[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
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
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;

LAB0:    t1 = (t0 + 9032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 9632);
    *((int *)t2) = 1;
    t3 = (t0 + 9064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(128, ng0);

LAB5:    xsi_set_current_line(129, ng0);
    t5 = (t0 + 7456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 3U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 3U);
    t16 = ((char*)((ng9)));
    memset(t17, 0, 8);
    t18 = (t4 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t16);
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

LAB11:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 7456);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 3U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 3U);
    t8 = ((char*)((ng10)));
    memset(t17, 0, 8);
    t9 = (t4 + 4);
    t16 = (t8 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t8);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t16);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t16);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB20;

LAB17:    if (t29 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t17) = 1;

LAB20:    t19 = (t17 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 7456);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 3U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 3U);
    t8 = ((char*)((ng11)));
    memset(t17, 0, 8);
    t9 = (t4 + 4);
    t16 = (t8 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t8);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t16);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t16);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB28;

LAB25:    if (t29 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t17) = 1;

LAB28:    t19 = (t17 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 7616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);

LAB31:
LAB23:
LAB12:    goto LAB2;

LAB8:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(129, ng0);

LAB13:    xsi_set_current_line(130, ng0);
    t39 = (t0 + 6576U);
    t40 = *((char **)t39);
    t39 = (t40 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (~(t41));
    t43 = *((unsigned int *)t40);
    t44 = (t43 & t42);
    t45 = (t44 != 0);
    if (t45 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 6256U);
    t3 = *((char **)t2);
    t2 = (t0 + 7616);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 12);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(131, ng0);
    t46 = (t0 + 6416U);
    t47 = *((char **)t46);
    t46 = (t0 + 7616);
    xsi_vlogvar_assign_value(t46, t47, 0, 0, 12);
    goto LAB16;

LAB19:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(135, ng0);

LAB24:    xsi_set_current_line(136, ng0);
    t32 = (t0 + 6736U);
    t33 = *((char **)t32);
    t32 = (t0 + 7616);
    xsi_vlogvar_assign_value(t32, t33, 0, 0, 12);
    goto LAB23;

LAB27:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(138, ng0);

LAB32:    xsi_set_current_line(139, ng0);
    t32 = (t0 + 6256U);
    t33 = *((char **)t32);
    memset(t48, 0, 8);
    t32 = (t33 + 4);
    t41 = *((unsigned int *)t32);
    t42 = (~(t41));
    t43 = *((unsigned int *)t33);
    t44 = (t43 & t42);
    t45 = (t44 & 4095U);
    if (t45 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t32) != 0)
        goto LAB35;

LAB36:    t40 = (t48 + 4);
    t49 = *((unsigned int *)t40);
    t50 = (~(t49));
    t51 = *((unsigned int *)t48);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 6736U);
    t3 = *((char **)t2);
    t2 = (t0 + 7616);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 12);

LAB39:    goto LAB31;

LAB33:    *((unsigned int *)t48) = 1;
    goto LAB36;

LAB35:    t39 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(140, ng0);
    t46 = (t0 + 6256U);
    t47 = *((char **)t46);
    t46 = (t0 + 7616);
    xsi_vlogvar_assign_value(t46, t47, 0, 0, 12);
    goto LAB39;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 9280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3856U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t14 = (t0 + 7456);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t13 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 16);
    *((unsigned int *)t13) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 16);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t23 & 65535U);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 & 65535U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 16, t4, 16);
    t25 = (t0 + 9792);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t3, 8);
    xsi_driver_vfirst_trans(t25, 0, 31);
    t30 = (t0 + 9648);
    *((int *)t30) = 1;

LAB1:    return;
}


extern void work_m_00000000000367999101_1568634396_init()
{
	static char *pe[] = {(void *)Always_67_0,(void *)Cont_82_1,(void *)Always_128_2,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000000367999101_1568634396", "isim/Ttop_isim_beh.exe.sim/work/m_00000000000367999101_1568634396.didat");
	xsi_register_executes(pe);
}
