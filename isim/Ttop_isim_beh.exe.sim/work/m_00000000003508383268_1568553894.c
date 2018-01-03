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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/uart.v";
static int ng1[] = {2, 0};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {256U, 0U};



static void Always_32_0(char *t0)
{
    char t18[8];
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
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
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 3440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3760);
    *((int *)t2) = 1;
    t3 = (t0 + 3472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 2200);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(53, ng0);

LAB22:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    t5 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_minus(t18, 32, t6, 32, t5, 32);
    memset(t20, 0, 8);
    t7 = (t4 + 4);
    t13 = (t18 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t18);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t24 = (t11 ^ t12);
    t25 = (t10 | t24);
    t26 = *((unsigned int *)t7);
    t27 = *((unsigned int *)t13);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB26;

LAB23:    if (t28 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t20) = 1;

LAB26:    t15 = (t20 + 4);
    t31 = *((unsigned int *)t15);
    t32 = (~(t31));
    t33 = *((unsigned int *)t20);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(62, ng0);

LAB31:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 10, t4, 10, t5, 10);
    t6 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t6, t18, 0, 0, 10, 0LL);

LAB34:
LAB29:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(35, ng0);

LAB9:    xsi_set_current_line(36, ng0);
    t13 = (t0 + 2360);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 472);
    t17 = *((char **)t16);
    t16 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_multiply(t18, 32, t17, 32, t16, 32);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_minus(t20, 32, t18, 32, t19, 32);
    memset(t21, 0, 8);
    t22 = (t15 + 4);
    t23 = (t20 + 4);
    t24 = *((unsigned int *)t15);
    t25 = *((unsigned int *)t20);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t22);
    t28 = *((unsigned int *)t23);
    t29 = (t27 ^ t28);
    t30 = (t26 | t29);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB13;

LAB10:    if (t33 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t21) = 1;

LAB13:    t37 = (t21 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t21);
    t41 = (t40 & t39);
    t42 = (t41 != 0);
    if (t42 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 10, t4, 10, t5, 10);
    t6 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t6, t18, 0, 0, 10, 0LL);

LAB16:    goto LAB8;

LAB12:    t36 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(37, ng0);

LAB17:    xsi_set_current_line(38, ng0);
    t43 = ((char*)((ng3)));
    t44 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t44, t43, 0, 0, 10, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t18) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    t24 = (t12 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t18 + 4);
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    t27 = *((unsigned int *)t18);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t6 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 1);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 1);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t12 & 255U);
    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 255U);
    t7 = (t0 + 1480U);
    t13 = *((char **)t7);
    xsi_vlogtype_concat(t18, 9, 9, 2U, t13, 1, t20, 8);
    t7 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 9, 0LL);

LAB20:    goto LAB16;

LAB18:    xsi_set_current_line(40, ng0);

LAB21:    xsi_set_current_line(41, ng0);
    t13 = (t0 + 2520);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t20, 0, 8);
    t16 = (t20 + 4);
    t17 = (t15 + 4);
    t30 = *((unsigned int *)t15);
    t31 = (t30 >> 1);
    *((unsigned int *)t20) = t31;
    t32 = *((unsigned int *)t17);
    t33 = (t32 >> 1);
    *((unsigned int *)t16) = t33;
    t34 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t34 & 255U);
    t35 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t35 & 255U);
    t19 = (t0 + 1880);
    xsi_vlogvar_wait_assign_value(t19, t20, 0, 0, 8, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

LAB25:    t14 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(55, ng0);

LAB30:    xsi_set_current_line(56, ng0);
    t16 = ((char*)((ng4)));
    t17 = (t0 + 2200);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, 0, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB29;

LAB32:    xsi_set_current_line(64, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    goto LAB34;

}


extern void work_m_00000000003508383268_1568553894_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000003508383268_1568553894", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003508383268_1568553894.didat");
	xsi_register_executes(pe);
}
