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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/cache_mem.v";



static void Always_34_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
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
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;

LAB0:    t1 = (t0 + 3600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3920);
    *((int *)t2) = 1;
    t3 = (t0 + 3632);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 2120U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);
    t11 = (t0 + 1960U);
    t12 = *((char **)t11);
    t11 = (t0 + 2680);
    t15 = (t0 + 2680);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2680);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 1800U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 8, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB10;

LAB11:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 2120U);
    t5 = *((char **)t4);
    t4 = (t0 + 1800U);
    t11 = *((char **)t4);
    t4 = (t0 + 1480U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t11 + 4);
    t15 = (t12 + 4);
    t23 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t12);
    t29 = (t23 ^ t26);
    t30 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t15);
    t34 = (t30 ^ t33);
    t35 = (t29 | t34);
    t36 = *((unsigned int *)t4);
    t37 = *((unsigned int *)t15);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB17;

LAB14:    if (t38 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t41 = *((unsigned int *)t5);
    t42 = *((unsigned int *)t13);
    t43 = (t41 & t42);
    *((unsigned int *)t14) = t43;
    t17 = (t5 + 4);
    t18 = (t13 + 4);
    t19 = (t14 + 4);
    t44 = *((unsigned int *)t17);
    t45 = *((unsigned int *)t18);
    t46 = (t44 | t45);
    *((unsigned int *)t19) = t46;
    t47 = *((unsigned int *)t19);
    t48 = (t47 != 0);
    if (t48 == 1)
        goto LAB18;

LAB19:
LAB20:    t22 = (t14 + 4);
    t65 = *((unsigned int *)t22);
    t66 = (~(t65));
    t67 = *((unsigned int *)t14);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2680);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t15 = (t0 + 2680);
    t16 = (t15 + 64U);
    t17 = *((char **)t16);
    t18 = (t0 + 1480U);
    t19 = *((char **)t18);
    xsi_vlog_generic_get_array_select_value(t13, 2, t4, t12, t17, 2, 1, t19, 8, 2);
    t18 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t18, t13, 0, 0, 2, 0LL);

LAB23:    goto LAB13;

LAB16:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB17;

LAB18:    t49 = *((unsigned int *)t14);
    t50 = *((unsigned int *)t19);
    *((unsigned int *)t14) = (t49 | t50);
    t20 = (t5 + 4);
    t21 = (t13 + 4);
    t51 = *((unsigned int *)t5);
    t52 = (~(t51));
    t53 = *((unsigned int *)t20);
    t54 = (~(t53));
    t55 = *((unsigned int *)t13);
    t56 = (~(t55));
    t57 = *((unsigned int *)t21);
    t58 = (~(t57));
    t24 = (t52 & t54);
    t27 = (t56 & t58);
    t59 = (~(t24));
    t60 = (~(t27));
    t61 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t61 & t59);
    t62 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t62 & t60);
    t63 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t63 & t59);
    t64 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t64 & t60);
    goto LAB20;

LAB21:    xsi_set_current_line(39, ng0);
    t25 = (t0 + 1960U);
    t70 = *((char **)t25);
    t25 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t25, t70, 0, 0, 2, 0LL);
    goto LAB23;

}


extern void work_m_00000000000319516669_1693723897_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000000319516669_1693723897", "isim/TD_cache_isim_beh.exe.sim/work/m_00000000000319516669_1693723897.didat");
	xsi_register_executes(pe);
}
