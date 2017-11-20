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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/addr_decoder.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {45056U, 0U};
static unsigned int ng5[] = {160U, 0U};
static unsigned int ng6[] = {2952855556U, 0U};
static unsigned int ng7[] = {2952855552U, 0U};
static unsigned int ng8[] = {14U, 0U};



static void Always_65_0(char *t0)
{
    char t10[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t4, 1, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t4, 2, 0, 1);
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t4, 3, 0, 1);
    t9 = (t0 + 1448);
    xsi_vlogvar_assign_value(t9, t4, 4, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t2, 3, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 28);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 28);
    *((unsigned int *)t2) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 15U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 15U);
    t5 = ((char*)((ng2)));
    memset(t17, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t6);
    t22 = *((unsigned int *)t7);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t7);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB9;

LAB6:    if (t27 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t17) = 1;

LAB9:    t9 = (t17 + 4);
    t30 = *((unsigned int *)t9);
    t31 = (~(t30));
    t32 = *((unsigned int *)t17);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 16);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 16);
    *((unsigned int *)t2) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 65535U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 65535U);
    t5 = ((char*)((ng4)));
    memset(t17, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t6);
    t22 = *((unsigned int *)t7);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t7);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB16;

LAB13:    if (t27 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t17) = 1;

LAB16:    t9 = (t17 + 4);
    t30 = *((unsigned int *)t9);
    t31 = (~(t30));
    t32 = *((unsigned int *)t17);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 24);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 24);
    *((unsigned int *)t2) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 255U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 255U);
    t5 = ((char*)((ng5)));
    memset(t17, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t6);
    t22 = *((unsigned int *)t7);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t7);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB23;

LAB20:    if (t27 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t17) = 1;

LAB23:    t9 = (t17 + 4);
    t30 = *((unsigned int *)t9);
    t31 = (~(t30));
    t32 = *((unsigned int *)t17);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t10, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 ^ t15);
    t18 = (t13 | t16);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB30;

LAB27:    if (t21 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t10) = 1;

LAB30:    t7 = (t10 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t10);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t10, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 ^ t15);
    t18 = (t13 | t16);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB37;

LAB34:    if (t21 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t10) = 1;

LAB37:    t7 = (t10 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t10);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 28);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 28);
    *((unsigned int *)t2) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 15U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 15U);
    t5 = ((char*)((ng8)));
    memset(t17, 0, 8);
    t6 = (t10 + 4);
    t7 = (t5 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t6);
    t22 = *((unsigned int *)t7);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t7);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB44;

LAB41:    if (t27 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t17) = 1;

LAB44:    t9 = (t17 + 4);
    t30 = *((unsigned int *)t9);
    t31 = (~(t30));
    t32 = *((unsigned int *)t17);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB47:
LAB40:
LAB33:
LAB26:
LAB19:
LAB12:    goto LAB2;

LAB8:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 1448);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 1);
    goto LAB12;

LAB15:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(71, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 2088);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 1);
    goto LAB19;

LAB22:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(72, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 2248);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 1);
    goto LAB26;

LAB29:    t6 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(73, ng0);
    t8 = ((char*)((ng3)));
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    goto LAB33;

LAB36:    t6 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(74, ng0);
    t8 = ((char*)((ng3)));
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    goto LAB40;

LAB43:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(75, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 2568);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 1);
    goto LAB47;

}


extern void work_m_00000000001512523535_2951206582_init()
{
	static char *pe[] = {(void *)Always_65_0};
	xsi_register_didat("work_m_00000000001512523535_2951206582", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001512523535_2951206582.didat");
	xsi_register_executes(pe);
}
