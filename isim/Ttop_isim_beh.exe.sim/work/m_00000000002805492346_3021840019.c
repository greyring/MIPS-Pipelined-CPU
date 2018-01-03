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
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};



static void Cont_83_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t21[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
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
    char *t34;
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

LAB0:    t1 = (t0 + 3600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2360);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t30 = *((unsigned int *)t4);
    t31 = (~(t30));
    t32 = *((unsigned int *)t14);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t34, 8);

LAB16:    t35 = (t0 + 4264);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memset(t39, 0, 8);
    t40 = 1U;
    t41 = t40;
    t42 = (t3 + 4);
    t43 = *((unsigned int *)t3);
    t40 = (t40 & t43);
    t44 = *((unsigned int *)t42);
    t41 = (t41 & t44);
    t45 = (t39 + 4);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t46 | t40);
    t47 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t47 | t41);
    xsi_driver_vfirst_trans(t35, 0, 0);
    t48 = (t0 + 4168);
    *((int *)t48) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 2680);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t22 = (t21 + 4);
    t23 = (t20 + 4);
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t21) = t26;
    t27 = *((unsigned int *)t23);
    t28 = (t27 >> 0);
    t29 = (t28 & 1);
    *((unsigned int *)t22) = t29;
    goto LAB9;

LAB10:    t34 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 1, t21, 1, t34, 1);
    goto LAB16;

LAB14:    memcpy(t3, t21, 8);
    goto LAB16;

}

static void Always_85_1(char *t0)
{
    char t18[8];
    char t19[8];
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
    char *t20;
    char *t21;
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
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;

LAB0:    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4184);
    *((int *)t2) = 1;
    t3 = (t0 + 3880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 2360);
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

LAB7:    xsi_set_current_line(107, ng0);

LAB27:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB28;

LAB29:
LAB30:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(88, ng0);

LAB9:    xsi_set_current_line(89, ng0);
    t13 = (t0 + 2520);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 472);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_minus(t18, 32, t17, 32, t16, 32);
    memset(t19, 0, 8);
    t20 = (t15 + 4);
    t21 = (t18 + 4);
    t22 = *((unsigned int *)t15);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB13;

LAB10:    if (t31 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t19) = 1;

LAB13:    t35 = (t19 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t19);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 10, t4, 10, t5, 10);
    t6 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t6, t18, 0, 0, 10, 0LL);

LAB16:    goto LAB8;

LAB12:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(90, ng0);

LAB17:    xsi_set_current_line(91, ng0);
    t41 = ((char*)((ng3)));
    t42 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t42, t41, 0, 0, 10, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t18, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t22 = (t11 ^ t12);
    t23 = (t10 | t22);
    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t7);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB21;

LAB18:    if (t26 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t18) = 1;

LAB21:    t14 = (t18 + 4);
    t29 = *((unsigned int *)t14);
    t30 = (~(t29));
    t31 = *((unsigned int *)t18);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(98, ng0);

LAB26:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t19, 0, 8);
    t5 = (t19 + 4);
    t6 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 1);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 1);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t12 & 511U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 511U);
    t7 = ((char*)((ng4)));
    xsi_vlogtype_concat(t18, 10, 10, 2U, t7, 1, t19, 9);
    t13 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t13, t18, 0, 0, 10, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB24:    goto LAB16;

LAB20:    t13 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(93, ng0);

LAB25:    xsi_set_current_line(94, ng0);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 2200);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 1, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB24;

LAB28:    xsi_set_current_line(109, ng0);

LAB31:    xsi_set_current_line(110, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1640U);
    t6 = *((char **)t5);
    t5 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 10, 10, 3U, t5, 1, t6, 8, t4, 1);
    t7 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 10, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB30;

}


extern void work_m_00000000002805492346_3021840019_init()
{
	static char *pe[] = {(void *)Cont_83_0,(void *)Always_85_1};
	xsi_register_didat("work_m_00000000002805492346_3021840019", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002805492346_3021840019.didat");
	xsi_register_executes(pe);
}
