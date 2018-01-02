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
static int ng1[] = {0, 0, 0, 0, 0, 0};
static int ng2[] = {0, 0, 0, 0};



static void Always_60_0(char *t0)
{
    char t7[8];
    char t42[24];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
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
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 7808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 8872);
    *((int *)t2) = 1;
    t3 = (t0 + 7840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1528U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t7 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t7);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t13 = (t10 & t9);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 6728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 92, 0LL);

LAB14:
LAB11:    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:    xsi_set_current_line(62, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 92, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 3288U);
    t5 = *((char **)t4);
    t4 = (t0 + 3128U);
    t6 = *((char **)t4);
    t4 = (t0 + 2968U);
    t11 = *((char **)t4);
    t4 = (t0 + 2808U);
    t12 = *((char **)t4);
    t4 = (t0 + 2648U);
    t20 = *((char **)t4);
    t4 = (t0 + 2488U);
    t21 = *((char **)t4);
    t4 = (t0 + 2328U);
    t34 = *((char **)t4);
    t4 = (t0 + 2168U);
    t40 = *((char **)t4);
    t4 = (t0 + 2008U);
    t41 = *((char **)t4);
    t4 = (t0 + 1848U);
    t43 = *((char **)t4);
    t4 = (t0 + 1688U);
    t44 = *((char **)t4);
    xsi_vlogtype_concat(t42, 92, 92, 11U, t44, 32, t43, 32, t41, 2, t40, 2, t34, 5, t21, 3, t20, 5, t12, 1, t11, 1, t6, 5, t5, 4);
    t4 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t4, t42, 0, 0, 92, 0LL);
    goto LAB14;

}

static void Always_72_1(char *t0)
{
    char t13[16];
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

LAB0:    t1 = (t0 + 8056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 8888);
    *((int *)t2) = 1;
    t3 = (t0 + 8088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);

LAB5:    xsi_set_current_line(73, ng0);
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

LAB7:    xsi_set_current_line(75, ng0);
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

LAB10:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 43, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(74, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 43, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 6168U);
    t5 = *((char **)t4);
    t4 = (t0 + 5208U);
    t11 = *((char **)t4);
    t4 = (t0 + 5848U);
    t12 = *((char **)t4);
    t4 = (t0 + 5528U);
    t14 = *((char **)t4);
    xsi_vlogtype_concat(t13, 43, 43, 4U, t14, 32, t12, 4, t11, 1, t5, 6);
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t13, 0, 0, 43, 0LL);
    goto LAB11;

}

static void Cont_81_2(char *t0)
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

LAB0:    t1 = (t0 + 8304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 4);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t10 = (t0 + 9576);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 4, 5);
    xsi_driver_vfirst_trans(t10, 0, 4);
    t15 = (t0 + 9512);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t4, 9, 1);
    xsi_driver_vfirst_trans(t15, 0, 0);
    t20 = (t0 + 9448);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_bit_copy(t24, 0, t4, 10, 1);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t25 = (t0 + 9384);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_bit_copy(t29, 0, t4, 11, 5);
    xsi_driver_vfirst_trans(t25, 0, 4);
    t30 = (t0 + 9320);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t34, 0, t4, 16, 3);
    xsi_driver_vfirst_trans(t30, 0, 2);
    t35 = (t0 + 9256);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_bit_copy(t39, 0, t4, 19, 5);
    xsi_driver_vfirst_trans(t35, 0, 4);
    t40 = (t0 + 9192);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_bit_copy(t44, 0, t4, 24, 2);
    xsi_driver_vfirst_trans(t40, 0, 1);
    t45 = (t0 + 9128);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_bit_copy(t49, 0, t4, 26, 2);
    xsi_driver_vfirst_trans(t45, 0, 1);
    t50 = (t0 + 9064);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    xsi_vlog_bit_copy(t54, 0, t4, 28, 32);
    xsi_driver_vfirst_trans(t50, 0, 31);
    t55 = (t0 + 9000);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    xsi_vlog_bit_copy(t59, 0, t4, 60, 32);
    xsi_driver_vfirst_trans(t55, 0, 31);
    t60 = (t0 + 8904);
    *((int *)t60) = 1;

LAB1:    return;
}

static void Cont_83_3(char *t0)
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

LAB0:    t1 = (t0 + 8552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 6);
    xsi_driver_vfirst_trans(t5, 0, 5);
    t10 = (t0 + 9832);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 6, 1);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t15 = (t0 + 9768);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t4, 7, 4);
    xsi_driver_vfirst_trans(t15, 0, 3);
    t20 = (t0 + 9704);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_bit_copy(t24, 0, t4, 11, 32);
    xsi_driver_vfirst_trans(t20, 0, 31);
    t25 = (t0 + 8920);
    *((int *)t25) = 1;

LAB1:    return;
}


extern void work_m_00000000002785930656_1966394032_init()
{
	static char *pe[] = {(void *)Always_60_0,(void *)Always_72_1,(void *)Cont_81_2,(void *)Cont_83_3};
	xsi_register_didat("work_m_00000000002785930656_1966394032", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002785930656_1966394032.didat");
	xsi_register_executes(pe);
}
