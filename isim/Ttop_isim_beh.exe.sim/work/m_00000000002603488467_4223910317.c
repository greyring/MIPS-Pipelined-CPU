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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/MUL_ID_EXE.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};



static void Always_47_0(char *t0)
{
    char t13[32];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 5568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 6136);
    *((int *)t2) = 1;
    t3 = (t0 + 5600);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
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

LAB7:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 103, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(49, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 103, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t0 + 2648U);
    t11 = *((char **)t4);
    t4 = (t0 + 2488U);
    t12 = *((char **)t4);
    t4 = (t0 + 2328U);
    t14 = *((char **)t4);
    t4 = (t0 + 2168U);
    t15 = *((char **)t4);
    t4 = (t0 + 2008U);
    t16 = *((char **)t4);
    t4 = (t0 + 1848U);
    t17 = *((char **)t4);
    t4 = (t0 + 1688U);
    t18 = *((char **)t4);
    t4 = (t0 + 1528U);
    t19 = *((char **)t4);
    xsi_vlogtype_concat(t13, 103, 103, 9U, t19, 1, t18, 32, t17, 32, t16, 2, t15, 1, t14, 1, t12, 1, t11, 32, t5, 1);
    t4 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t4, t13, 0, 0, 103, 0LL);
    goto LAB11;

}

static void Cont_57_1(char *t0)
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
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    t1 = (t0 + 5816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6744);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 1);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t10 = (t0 + 6680);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 1, 32);
    xsi_driver_vfirst_trans(t10, 0, 31);
    t15 = (t0 + 6616);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t4, 33, 1);
    xsi_driver_vfirst_trans(t15, 0, 0);
    t20 = (t0 + 6552);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_bit_copy(t24, 0, t4, 34, 1);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t25 = (t0 + 6488);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_bit_copy(t29, 0, t4, 35, 1);
    xsi_driver_vfirst_trans(t25, 0, 0);
    t30 = (t0 + 6424);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t34, 0, t4, 36, 2);
    xsi_driver_vfirst_trans(t30, 0, 1);
    t35 = (t0 + 6360);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_bit_copy(t39, 0, t4, 38, 32);
    xsi_driver_vfirst_trans(t35, 0, 31);
    t40 = (t0 + 6296);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_bit_copy(t44, 0, t4, 70, 32);
    xsi_driver_vfirst_trans(t40, 0, 31);
    t45 = (t0 + 6232);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_bit_copy(t49, 0, t4, 102, 1);
    xsi_driver_vfirst_trans(t45, 0, 0);
    t50 = (t0 + 6152);
    *((int *)t50) = 1;

LAB1:    return;
}


extern void work_m_00000000002603488467_4223910317_init()
{
	static char *pe[] = {(void *)Always_47_0,(void *)Cont_57_1};
	xsi_register_didat("work_m_00000000002603488467_4223910317", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002603488467_4223910317.didat");
	xsi_register_executes(pe);
}
