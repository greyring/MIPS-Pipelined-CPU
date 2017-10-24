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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/btn_scan.v";
static unsigned int ng1[] = {30U, 0U};
static unsigned int ng2[] = {29U, 0U};
static unsigned int ng3[] = {27U, 0U};
static unsigned int ng4[] = {23U, 0U};
static unsigned int ng5[] = {15U, 0U};
static int ng6[] = {0, 0};



static void Always_29_0(char *t0)
{
    char t9[8];
    char t10[8];
    char t22[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t7, 5);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(51, ng0);

LAB35:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 25, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(31, ng0);

LAB20:    xsi_set_current_line(32, ng0);
    t11 = (t0 + 1368U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t11 = (t10 + 4);
    t13 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    *((unsigned int *)t10) = t15;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB22;

LAB21:    t20 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t20 & 31U);
    t21 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t21 & 31U);
    t23 = (t0 + 1768);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t22, 0, 8);
    t26 = (t22 + 4);
    t27 = (t25 + 4);
    t28 = *((unsigned int *)t25);
    t29 = (t28 >> 5);
    *((unsigned int *)t22) = t29;
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 5);
    *((unsigned int *)t26) = t31;
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 1048575U);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 & 1048575U);
    xsi_vlogtype_concat(t9, 25, 25, 2U, t22, 20, t10, 5);
    t34 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t34, t9, 0, 0, 25, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB19;

LAB9:    xsi_set_current_line(35, ng0);

LAB23:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 0);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 31U);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t19 & 31U);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t22, 0, 8);
    t12 = (t22 + 4);
    t23 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    t21 = (~(t20));
    *((unsigned int *)t22) = t21;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB25;

LAB24:    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 31U);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & 31U);
    t24 = (t0 + 1768);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t35, 0, 8);
    t27 = (t35 + 4);
    t34 = (t26 + 4);
    t36 = *((unsigned int *)t26);
    t37 = (t36 >> 10);
    *((unsigned int *)t35) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 >> 10);
    *((unsigned int *)t27) = t39;
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t40 & 32767U);
    t41 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t41 & 32767U);
    xsi_vlogtype_concat(t9, 25, 25, 3U, t35, 15, t22, 5, t10, 5);
    t42 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t42, t9, 0, 0, 25, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB19;

LAB11:    xsi_set_current_line(39, ng0);

LAB26:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 0);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 1023U);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t19 & 1023U);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t22, 0, 8);
    t12 = (t22 + 4);
    t23 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    t21 = (~(t20));
    *((unsigned int *)t22) = t21;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB28;

LAB27:    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 31U);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & 31U);
    t24 = (t0 + 1768);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t35, 0, 8);
    t27 = (t35 + 4);
    t34 = (t26 + 4);
    t36 = *((unsigned int *)t26);
    t37 = (t36 >> 15);
    *((unsigned int *)t35) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 >> 15);
    *((unsigned int *)t27) = t39;
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t40 & 1023U);
    t41 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t41 & 1023U);
    xsi_vlogtype_concat(t9, 25, 25, 3U, t35, 10, t22, 5, t10, 10);
    t42 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t42, t9, 0, 0, 25, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB19;

LAB13:    xsi_set_current_line(43, ng0);

LAB29:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 0);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 32767U);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t19 & 32767U);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t22, 0, 8);
    t12 = (t22 + 4);
    t23 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    t21 = (~(t20));
    *((unsigned int *)t22) = t21;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB31;

LAB30:    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 31U);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & 31U);
    t24 = (t0 + 1768);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t35, 0, 8);
    t27 = (t35 + 4);
    t34 = (t26 + 4);
    t36 = *((unsigned int *)t26);
    t37 = (t36 >> 20);
    *((unsigned int *)t35) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 >> 20);
    *((unsigned int *)t27) = t39;
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t40 & 31U);
    t41 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t41 & 31U);
    xsi_vlogtype_concat(t9, 25, 25, 3U, t35, 5, t22, 5, t10, 15);
    t42 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t42, t9, 0, 0, 25, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB19;

LAB15:    xsi_set_current_line(47, ng0);

LAB32:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 0);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 1048575U);
    t19 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t19 & 1048575U);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t22, 0, 8);
    t12 = (t22 + 4);
    t23 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    t21 = (~(t20));
    *((unsigned int *)t22) = t21;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB34;

LAB33:    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 31U);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & 31U);
    xsi_vlogtype_concat(t9, 25, 25, 2U, t22, 5, t10, 20);
    t24 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t24, t9, 0, 0, 25, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB19;

LAB22:    t16 = *((unsigned int *)t10);
    t17 = *((unsigned int *)t13);
    *((unsigned int *)t10) = (t16 | t17);
    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t11) = (t18 | t19);
    goto LAB21;

LAB25:    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    t30 = *((unsigned int *)t12);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t12) = (t30 | t31);
    goto LAB24;

LAB28:    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    t30 = *((unsigned int *)t12);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t12) = (t30 | t31);
    goto LAB27;

LAB31:    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    t30 = *((unsigned int *)t12);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t12) = (t30 | t31);
    goto LAB30;

LAB34:    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    t30 = *((unsigned int *)t12);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t12) = (t30 | t31);
    goto LAB33;

}

static void Cont_58_1(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 3432);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001880459132_0877007561_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)Cont_58_1};
	xsi_register_didat("work_m_00000000001880459132_0877007561", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001880459132_0877007561.didat");
	xsi_register_executes(pe);
}
