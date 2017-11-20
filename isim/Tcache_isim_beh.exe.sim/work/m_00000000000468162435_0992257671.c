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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/mem_buffer.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static int ng7[] = {0, 0, 0, 0};
static unsigned int ng8[] = {8U, 0U};



static void Always_50_0(char *t0)
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

LAB0:    t1 = (t0 + 6704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 8512);
    *((int *)t2) = 1;
    t3 = (t0 + 6736);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 2024U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4504);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4344);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(52, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4344);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_57_1(char *t0)
{
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 6952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 8528);
    *((int *)t2) = 1;
    t3 = (t0 + 6984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 4344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);
    t9 = (t0 + 2184U);
    t10 = *((char **)t9);
    t9 = (t0 + 2344U);
    t11 = *((char **)t9);
    t13 = *((unsigned int *)t10);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t9 = (t10 + 4);
    t16 = (t11 + 4);
    t17 = (t12 + 4);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t16);
    t20 = (t18 | t19);
    *((unsigned int *)t17) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB22;

LAB23:
LAB24:    t39 = (t12 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t12);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB27:    goto LAB21;

LAB9:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 3144U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t18 = (t15 & t14);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB30:    goto LAB21;

LAB11:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 3144U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t18 = (t15 & t14);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB33:    goto LAB21;

LAB13:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 3144U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t18 = (t15 & t14);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB36:    goto LAB21;

LAB15:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 3144U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t18 = (t15 & t14);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB39:    goto LAB21;

LAB17:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4504);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB21;

LAB22:    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t12) = (t23 | t24);
    t25 = (t10 + 4);
    t26 = (t11 + 4);
    t27 = *((unsigned int *)t25);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = *((unsigned int *)t26);
    t32 = (~(t31));
    t33 = *((unsigned int *)t11);
    t34 = (t33 & t32);
    t35 = (~(t30));
    t36 = (~(t34));
    t37 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t37 & t35);
    t38 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t38 & t36);
    goto LAB24;

LAB25:    xsi_set_current_line(59, ng0);
    t45 = ((char*)((ng2)));
    t46 = (t0 + 4504);
    xsi_vlogvar_assign_value(t46, t45, 0, 0, 3);
    goto LAB27;

LAB28:    xsi_set_current_line(61, ng0);
    t5 = ((char*)((ng3)));
    t7 = (t0 + 4504);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB30;

LAB31:    xsi_set_current_line(63, ng0);
    t5 = ((char*)((ng4)));
    t7 = (t0 + 4504);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB33;

LAB34:    xsi_set_current_line(65, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 4504);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB36;

LAB37:    xsi_set_current_line(67, ng0);
    t5 = ((char*)((ng6)));
    t7 = (t0 + 4504);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 3);
    goto LAB39;

}

static void Always_76_2(char *t0)
{
    char t8[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 7200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 8544);
    *((int *)t2) = 1;
    t3 = (t0 + 7232);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);

LAB5:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 4344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(81, ng0);

LAB14:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4664);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4824);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4824);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(77, ng0);

LAB13:    xsi_set_current_line(78, ng0);
    t31 = (t0 + 2184U);
    t32 = *((char **)t31);
    t31 = (t0 + 2344U);
    t33 = *((char **)t31);
    xsi_vlogtype_concat(t30, 2, 2, 2U, t33, 1, t32, 1);
    t31 = (t0 + 4664);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 2, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2504U);
    t3 = *((char **)t2);
    t2 = (t0 + 4824);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB12;

}

static void Always_89_3(char *t0)
{
    char t12[8];
    char t27[8];
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
    int t11;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 7448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8560);
    *((int *)t2) = 1;
    t3 = (t0 + 7480);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);

LAB5:    xsi_set_current_line(90, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t0 + 3864);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t6 = (t0 + 4184);
    xsi_vlogvar_assign_value(t6, t4, 32, 0, 1);
    t7 = (t0 + 5144);
    xsi_vlogvar_assign_value(t7, t4, 33, 0, 4);
    t8 = (t0 + 4984);
    xsi_vlogvar_assign_value(t8, t4, 37, 0, 2);
    t9 = (t0 + 3704);
    xsi_vlogvar_assign_value(t9, t4, 39, 0, 1);
    t10 = (t0 + 3544);
    xsi_vlogvar_assign_value(t10, t4, 40, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4344);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(92, ng0);
    t6 = (t0 + 4664);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t12, 0, 8);
    t9 = (t12 + 4);
    t10 = (t8 + 4);
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t10);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t9) = t18;
    t19 = (t12 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t12);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(97, ng0);

LAB22:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB20:    goto LAB17;

LAB9:    xsi_set_current_line(102, ng0);
    t3 = (t0 + 4664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t8 = (t6 + 4);
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t8);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t9 = (t12 + 4);
    t20 = *((unsigned int *)t9);
    t21 = (~(t20));
    t22 = *((unsigned int *)t12);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(107, ng0);

LAB27:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB25:    goto LAB17;

LAB11:    xsi_set_current_line(112, ng0);
    t3 = (t0 + 4664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t8 = (t6 + 4);
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t8);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t9 = (t12 + 4);
    t20 = *((unsigned int *)t9);
    t21 = (~(t20));
    t22 = *((unsigned int *)t12);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(117, ng0);

LAB32:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB30:    goto LAB17;

LAB13:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 4664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t8 = (t6 + 4);
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t8);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t9 = (t12 + 4);
    t20 = *((unsigned int *)t9);
    t21 = (~(t20));
    t22 = *((unsigned int *)t12);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(127, ng0);

LAB37:    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB35:    goto LAB17;

LAB15:    xsi_set_current_line(132, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4184);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB17;

LAB18:    xsi_set_current_line(92, ng0);

LAB21:    xsi_set_current_line(93, ng0);
    t25 = ((char*)((ng2)));
    t26 = (t0 + 3704);
    xsi_vlogvar_assign_value(t26, t25, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4984);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB20;

LAB23:    xsi_set_current_line(102, ng0);

LAB26:    xsi_set_current_line(103, ng0);
    t10 = ((char*)((ng2)));
    t19 = (t0 + 3704);
    xsi_vlogvar_assign_value(t19, t10, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4984);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB25;

LAB28:    xsi_set_current_line(112, ng0);

LAB31:    xsi_set_current_line(113, ng0);
    t10 = ((char*)((ng2)));
    t19 = (t0 + 3704);
    xsi_vlogvar_assign_value(t19, t10, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4984);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB30;

LAB33:    xsi_set_current_line(122, ng0);

LAB36:    xsi_set_current_line(123, ng0);
    t10 = ((char*)((ng2)));
    t19 = (t0 + 3704);
    xsi_vlogvar_assign_value(t19, t10, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t27, 0, 8);
    t8 = (t27 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 4);
    *((unsigned int *)t27) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 4);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t17 & 268435455U);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t18 & 268435455U);
    xsi_vlogtype_concat(t12, 32, 32, 3U, t27, 28, t3, 2, t2, 2);
    t10 = (t0 + 3864);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 32);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4984);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB35;

}

static void Always_137_4(char *t0)
{
    char t8[8];
    char t35[8];
    char t36[8];
    char t37[8];
    char t54[32];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
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
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    t1 = (t0 + 7696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 8576);
    *((int *)t2) = 1;
    t3 = (t0 + 7728);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(137, ng0);

LAB5:    xsi_set_current_line(138, ng0);
    t4 = (t0 + 4344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t6);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t5) = t16;
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 5304);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 5624);
    t10 = (t9 + 56U);
    t23 = *((char **)t10);
    t24 = (t0 + 5784);
    t30 = (t24 + 56U);
    t31 = *((char **)t30);
    xsi_vlogtype_concat(t54, 128, 128, 4U, t31, 32, t23, 32, t7, 32, t4, 32);
    t32 = (t0 + 5304);
    xsi_vlogvar_wait_assign_value(t32, t54, 0, 0, 32, 0LL);
    t33 = (t0 + 5464);
    xsi_vlogvar_wait_assign_value(t33, t54, 32, 0, 32, 0LL);
    t34 = (t0 + 5624);
    xsi_vlogvar_wait_assign_value(t34, t54, 64, 0, 32, 0LL);
    t46 = (t0 + 5784);
    xsi_vlogvar_wait_assign_value(t46, t54, 96, 0, 32, 0LL);

LAB15:
LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(139, ng0);
    t30 = (t0 + 2664U);
    t31 = *((char **)t30);
    t30 = (t0 + 5304);
    xsi_vlogvar_wait_assign_value(t30, t31, 0, 0, 32, 0LL);
    t32 = (t0 + 5464);
    xsi_vlogvar_wait_assign_value(t32, t31, 32, 0, 32, 0LL);
    t33 = (t0 + 5624);
    xsi_vlogvar_wait_assign_value(t33, t31, 64, 0, 32, 0LL);
    t34 = (t0 + 5784);
    xsi_vlogvar_wait_assign_value(t34, t31, 96, 0, 32, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(140, ng0);

LAB16:    xsi_set_current_line(141, ng0);
    t9 = (t0 + 5144);
    t10 = (t9 + 56U);
    t23 = *((char **)t10);
    memset(t37, 0, 8);
    t24 = (t37 + 4);
    t30 = (t23 + 4);
    t22 = *((unsigned int *)t23);
    t25 = (t22 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t37) = t26;
    t27 = *((unsigned int *)t30);
    t28 = (t27 >> 0);
    t29 = (t28 & 1);
    *((unsigned int *)t24) = t29;
    memset(t36, 0, 8);
    t31 = (t37 + 4);
    t38 = *((unsigned int *)t31);
    t39 = (~(t38));
    t40 = *((unsigned int *)t37);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t31) != 0)
        goto LAB19;

LAB20:    t33 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    t44 = *((unsigned int *)t33);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB21;

LAB22:    t47 = *((unsigned int *)t36);
    t48 = (~(t47));
    t49 = *((unsigned int *)t33);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t33) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t36) > 0)
        goto LAB27;

LAB28:    memcpy(t35, t52, 8);

LAB29:    t53 = (t0 + 5304);
    xsi_vlogvar_wait_assign_value(t53, t35, 0, 0, 32, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t36, 0, 8);
    t5 = (t36 + 4);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t36) = t13;
    t14 = *((unsigned int *)t6);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t5) = t16;
    memset(t35, 0, 8);
    t7 = (t36 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t7) != 0)
        goto LAB32;

LAB33:    t10 = (t35 + 4);
    t22 = *((unsigned int *)t35);
    t25 = *((unsigned int *)t10);
    t26 = (t22 || t25);
    if (t26 > 0)
        goto LAB34;

LAB35:    t27 = *((unsigned int *)t35);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t38 = (t28 || t29);
    if (t38 > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t10) > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t35) > 0)
        goto LAB40;

LAB41:    memcpy(t8, t31, 8);

LAB42:    t32 = (t0 + 5464);
    xsi_vlogvar_wait_assign_value(t32, t8, 0, 0, 32, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 5144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t36, 0, 8);
    t5 = (t36 + 4);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 2);
    t13 = (t12 & 1);
    *((unsigned int *)t36) = t13;
    t14 = *((unsigned int *)t6);
    t15 = (t14 >> 2);
    t16 = (t15 & 1);
    *((unsigned int *)t5) = t16;
    memset(t35, 0, 8);
    t7 = (t36 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t7) != 0)
        goto LAB45;

LAB46:    t10 = (t35 + 4);
    t22 = *((unsigned int *)t35);
    t25 = *((unsigned int *)t10);
    t26 = (t22 || t25);
    if (t26 > 0)
        goto LAB47;

LAB48:    t27 = *((unsigned int *)t35);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t38 = (t28 || t29);
    if (t38 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t10) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t35) > 0)
        goto LAB53;

LAB54:    memcpy(t8, t31, 8);

LAB55:    t32 = (t0 + 5624);
    xsi_vlogvar_wait_assign_value(t32, t8, 0, 0, 32, 0LL);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t36, 0, 8);
    t5 = (t36 + 4);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 3);
    t13 = (t12 & 1);
    *((unsigned int *)t36) = t13;
    t14 = *((unsigned int *)t6);
    t15 = (t14 >> 3);
    t16 = (t15 & 1);
    *((unsigned int *)t5) = t16;
    memset(t35, 0, 8);
    t7 = (t36 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t7) != 0)
        goto LAB58;

LAB59:    t10 = (t35 + 4);
    t22 = *((unsigned int *)t35);
    t25 = *((unsigned int *)t10);
    t26 = (t22 || t25);
    if (t26 > 0)
        goto LAB60;

LAB61:    t27 = *((unsigned int *)t35);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t38 = (t28 || t29);
    if (t38 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t10) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t35) > 0)
        goto LAB66;

LAB67:    memcpy(t8, t31, 8);

LAB68:    t32 = (t0 + 5784);
    xsi_vlogvar_wait_assign_value(t32, t8, 0, 0, 32, 0LL);
    goto LAB15;

LAB17:    *((unsigned int *)t36) = 1;
    goto LAB20;

LAB19:    t32 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB20;

LAB21:    t34 = (t0 + 2984U);
    t46 = *((char **)t34);
    goto LAB22;

LAB23:    t34 = (t0 + 5304);
    t51 = (t34 + 56U);
    t52 = *((char **)t51);
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t35, 32, t46, 32, t52, 32);
    goto LAB29;

LAB27:    memcpy(t35, t46, 8);
    goto LAB29;

LAB30:    *((unsigned int *)t35) = 1;
    goto LAB33;

LAB32:    t9 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB33;

LAB34:    t23 = (t0 + 2984U);
    t24 = *((char **)t23);
    goto LAB35;

LAB36:    t23 = (t0 + 5464);
    t30 = (t23 + 56U);
    t31 = *((char **)t30);
    goto LAB37;

LAB38:    xsi_vlog_unsigned_bit_combine(t8, 32, t24, 32, t31, 32);
    goto LAB42;

LAB40:    memcpy(t8, t24, 8);
    goto LAB42;

LAB43:    *((unsigned int *)t35) = 1;
    goto LAB46;

LAB45:    t9 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB46;

LAB47:    t23 = (t0 + 2984U);
    t24 = *((char **)t23);
    goto LAB48;

LAB49:    t23 = (t0 + 5624);
    t30 = (t23 + 56U);
    t31 = *((char **)t30);
    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t8, 32, t24, 32, t31, 32);
    goto LAB55;

LAB53:    memcpy(t8, t24, 8);
    goto LAB55;

LAB56:    *((unsigned int *)t35) = 1;
    goto LAB59;

LAB58:    t9 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB59;

LAB60:    t23 = (t0 + 2984U);
    t24 = *((char **)t23);
    goto LAB61;

LAB62:    t23 = (t0 + 5784);
    t30 = (t23 + 56U);
    t31 = *((char **)t30);
    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t8, 32, t24, 32, t31, 32);
    goto LAB68;

LAB66:    memcpy(t8, t24, 8);
    goto LAB68;

}

static void Always_150_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 8592);
    *((int *)t2) = 1;
    t3 = (t0 + 7976);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(150, ng0);

LAB5:    xsi_set_current_line(151, ng0);
    t4 = (t0 + 4984);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(152, ng0);
    t9 = (t0 + 5304);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t0 + 4024);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);
    goto LAB15;

LAB9:    xsi_set_current_line(153, ng0);
    t3 = (t0 + 5464);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4024);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    goto LAB15;

LAB11:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 5624);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4024);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    goto LAB15;

LAB13:    xsi_set_current_line(155, ng0);
    t3 = (t0 + 5784);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4024);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    goto LAB15;

}

static void Cont_159_6(char *t0)
{
    char t3[32];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 8192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 5304);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 5464);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 5624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t0 + 5784);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlogtype_concat(t3, 128, 128, 4U, t14, 32, t11, 32, t8, 32, t5, 32);
    t15 = (t0 + 8688);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t3, 0, 128);
    xsi_driver_vfirst_trans(t15, 0, 127);
    t20 = (t0 + 8608);
    *((int *)t20) = 1;

LAB1:    return;
}


extern void work_m_00000000000468162435_0992257671_init()
{
	static char *pe[] = {(void *)Always_50_0,(void *)Always_57_1,(void *)Always_76_2,(void *)Always_89_3,(void *)Always_137_4,(void *)Always_150_5,(void *)Cont_159_6};
	xsi_register_didat("work_m_00000000000468162435_0992257671", "isim/Tcache_isim_beh.exe.sim/work/m_00000000000468162435_0992257671.didat");
	xsi_register_executes(pe);
}
