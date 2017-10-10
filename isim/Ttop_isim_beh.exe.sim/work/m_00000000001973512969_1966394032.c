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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/EXE_MEM_REG.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};



static void Always_50_0(char *t0)
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
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 6208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 6776);
    *((int *)t2) = 1;
    t3 = (t0 + 6240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
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

LAB7:    xsi_set_current_line(53, ng0);
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

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 114, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(52, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 114, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 3128U);
    t5 = *((char **)t4);
    t4 = (t0 + 2968U);
    t11 = *((char **)t4);
    t4 = (t0 + 2808U);
    t12 = *((char **)t4);
    t4 = (t0 + 2648U);
    t14 = *((char **)t4);
    t4 = (t0 + 2488U);
    t15 = *((char **)t4);
    t4 = (t0 + 2328U);
    t16 = *((char **)t4);
    t4 = (t0 + 2168U);
    t17 = *((char **)t4);
    t4 = (t0 + 2008U);
    t18 = *((char **)t4);
    t4 = (t0 + 1848U);
    t19 = *((char **)t4);
    t4 = (t0 + 1688U);
    t20 = *((char **)t4);
    t4 = (t0 + 1528U);
    t21 = *((char **)t4);
    xsi_vlogtype_concat(t13, 114, 114, 11U, t21, 32, t20, 32, t19, 32, t18, 1, t17, 1, t16, 3, t15, 5, t14, 1, t12, 1, t11, 1, t5, 5);
    t4 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t4, t13, 0, 0, 114, 0LL);
    goto LAB11;

}

static void Cont_61_1(char *t0)
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
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 6456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 5);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t10 = (t0 + 7448);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 5, 1);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t15 = (t0 + 7384);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t4, 6, 1);
    xsi_driver_vfirst_trans(t15, 0, 0);
    t20 = (t0 + 7320);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_bit_copy(t24, 0, t4, 7, 1);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t25 = (t0 + 7256);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_bit_copy(t29, 0, t4, 8, 5);
    xsi_driver_vfirst_trans(t25, 0, 4);
    t30 = (t0 + 7192);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t34, 0, t4, 13, 3);
    xsi_driver_vfirst_trans(t30, 0, 2);
    t35 = (t0 + 7128);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_bit_copy(t39, 0, t4, 16, 1);
    xsi_driver_vfirst_trans(t35, 0, 0);
    t40 = (t0 + 7064);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_bit_copy(t44, 0, t4, 17, 1);
    xsi_driver_vfirst_trans(t40, 0, 0);
    t45 = (t0 + 7000);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_bit_copy(t49, 0, t4, 18, 32);
    xsi_driver_vfirst_trans(t45, 0, 31);
    t50 = (t0 + 6936);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    xsi_vlog_bit_copy(t54, 0, t4, 50, 32);
    xsi_driver_vfirst_trans(t50, 0, 31);
    t55 = (t0 + 6872);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    xsi_vlog_bit_copy(t59, 0, t4, 82, 32);
    xsi_driver_vfirst_trans(t55, 0, 31);
    t60 = (t0 + 6792);
    *((int *)t60) = 1;

LAB1:    return;
}


extern void work_m_00000000001973512969_1966394032_init()
{
	static char *pe[] = {(void *)Always_50_0,(void *)Cont_61_1};
	xsi_register_didat("work_m_00000000001973512969_1966394032", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001973512969_1966394032.didat");
	xsi_register_executes(pe);
}
