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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/EPC_data.v";



static void Cont_37_0(char *t0)
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

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4696);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_38_1(char *t0)
{
    char t18[8];
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
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4712);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 | t7);
    *((unsigned int *)t18) = t8;
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t11 = (t18 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t5);
    t13 = (t9 | t10);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t11);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB15;

LAB16:
LAB17:    t32 = (t18 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t18);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB23:
LAB20:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t11 = (t0 + 2648U);
    t12 = *((char **)t11);
    t11 = (t0 + 3208);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 32);
    goto LAB8;

LAB9:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB14:    goto LAB11;

LAB12:    xsi_set_current_line(43, ng0);
    t11 = (t0 + 2488U);
    t12 = *((char **)t11);
    t11 = (t0 + 3208);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 32);
    goto LAB14;

LAB15:    t16 = *((unsigned int *)t18);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t18) = (t16 | t17);
    t12 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t12);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = *((unsigned int *)t19);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (~(t23));
    t29 = (~(t27));
    t30 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t30 & t28);
    t31 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t31 & t29);
    goto LAB17;

LAB18:    xsi_set_current_line(47, ng0);
    t38 = (t0 + 2328U);
    t39 = *((char **)t38);
    t38 = (t0 + 3208);
    xsi_vlogvar_assign_value(t38, t39, 0, 0, 32);
    goto LAB20;

LAB21:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB26:    goto LAB23;

LAB24:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 2168U);
    t12 = *((char **)t11);
    t11 = (t0 + 3208);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 32);
    goto LAB26;

}


extern void work_m_00000000003501614328_0779432492_init()
{
	static char *pe[] = {(void *)Cont_37_0,(void *)Always_38_1};
	xsi_register_didat("work_m_00000000003501614328_0779432492", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003501614328_0779432492.didat");
	xsi_register_executes(pe);
}
