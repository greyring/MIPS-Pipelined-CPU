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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/Multi_8CH32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {2857719210U, 0U};
static unsigned int ng10[] = {255U, 0U};
static int ng11[] = {31, 0};
static int ng12[] = {24, 0};
static int ng13[] = {23, 0};
static int ng14[] = {16, 0};
static int ng15[] = {15, 0};
static int ng16[] = {8, 0};
static int ng17[] = {7, 0};
static int ng18[] = {0, 0};



static void Always_45_0(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    t1 = (t0 + 5248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5816);
    *((int *)t2) = 1;
    t3 = (t0 + 5280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(47, ng0);

LAB24:    xsi_set_current_line(47, ng0);
    t7 = (t0 + 4008);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 3848);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 3688);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);
    goto LAB23;

LAB9:    xsi_set_current_line(48, ng0);

LAB25:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 8);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 8);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3688);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 8);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 8);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    goto LAB23;

LAB11:    xsi_set_current_line(49, ng0);

LAB26:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 16);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 16);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3688);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 16);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 16);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    goto LAB23;

LAB13:    xsi_set_current_line(50, ng0);

LAB27:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 24);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 24);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3688);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 24);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 24);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 8);
    goto LAB23;

LAB15:    xsi_set_current_line(51, ng0);

LAB28:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2648U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 0);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3688);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 0);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3528);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    goto LAB23;

LAB17:    xsi_set_current_line(52, ng0);

LAB29:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2808U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 8);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 8);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3688);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 8);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 8);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3528);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    goto LAB23;

LAB19:    xsi_set_current_line(53, ng0);

LAB30:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2968U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 16);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 16);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3688);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 16);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 16);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3528);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    goto LAB23;

LAB21:    xsi_set_current_line(54, ng0);

LAB31:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 3128U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 24);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 24);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3688);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 8);
    t7 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 24);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 24);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t8 = (t0 + 3528);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    goto LAB23;

}

static void Always_58_1(char *t0)
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

LAB0:    t1 = (t0 + 5496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5832);
    *((int *)t2) = 1;
    t3 = (t0 + 5528);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(58, ng0);

LAB5:    xsi_set_current_line(59, ng0);
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

LAB7:    xsi_set_current_line(64, ng0);

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1368U);
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
        goto LAB11;

LAB12:
LAB13:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1368U);
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
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1368U);
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
        goto LAB23;

LAB24:
LAB25:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1368U);
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
        goto LAB29;

LAB30:
LAB31:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(59, ng0);

LAB9:    xsi_set_current_line(60, ng0);
    t11 = ((char*)((ng9)));
    t12 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(68, ng0);

LAB14:    xsi_set_current_line(69, ng0);
    t11 = (t0 + 2008U);
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
    t28 = (t0 + 4008);
    t32 = (t0 + 4008);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng11)));
    t36 = ((char*)((ng12)));
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
        goto LAB15;

LAB16:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    goto LAB13;

LAB15:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB16;

LAB17:    xsi_set_current_line(73, ng0);

LAB20:    xsi_set_current_line(74, ng0);
    t11 = (t0 + 2008U);
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
    t28 = (t0 + 4008);
    t32 = (t0 + 4008);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng13)));
    t36 = ((char*)((ng14)));
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
        goto LAB21;

LAB22:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    goto LAB19;

LAB21:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB22;

LAB23:    xsi_set_current_line(78, ng0);

LAB26:    xsi_set_current_line(79, ng0);
    t11 = (t0 + 2008U);
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
    t28 = (t0 + 4008);
    t32 = (t0 + 4008);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng15)));
    t36 = ((char*)((ng16)));
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
        goto LAB27;

LAB28:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    goto LAB25;

LAB27:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB28;

LAB29:    xsi_set_current_line(83, ng0);

LAB32:    xsi_set_current_line(84, ng0);
    t11 = (t0 + 2008U);
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
    t28 = (t0 + 4008);
    t32 = (t0 + 4008);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng17)));
    t36 = ((char*)((ng18)));
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
        goto LAB33;

LAB34:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 8, 0LL);
    goto LAB31;

LAB33:    t48 = *((unsigned int *)t31);
    t49 = (t48 + 0);
    t50 = *((unsigned int *)t29);
    t51 = *((unsigned int *)t30);
    t52 = (t50 - t51);
    t53 = (t52 + 1);
    xsi_vlogvar_wait_assign_value(t28, t20, t49, *((unsigned int *)t30), t53, 0LL);
    goto LAB34;

}


extern void work_m_00000000003683797633_0098775010_init()
{
	static char *pe[] = {(void *)Always_45_0,(void *)Always_58_1};
	xsi_register_didat("work_m_00000000003683797633_0098775010", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003683797633_0098775010.didat");
	xsi_register_executes(pe);
}
