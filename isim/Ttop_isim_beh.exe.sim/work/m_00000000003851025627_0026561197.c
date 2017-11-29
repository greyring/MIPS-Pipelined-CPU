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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/branch_judge.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {4U, 0U};
static int ng5[] = {0, 0};



static void Cont_29_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t4);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t2);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t5) = 1;

LAB7:    t20 = (t0 + 3672);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t5 + 4);
    t28 = *((unsigned int *)t5);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t33 = (t0 + 3576);
    *((int *)t33) = 1;

LAB1:    return;
LAB6:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Always_31_1(char *t0)
{
    char t9[8];
    char t25[8];
    char t26[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1368U);
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

LAB14:
LAB16:
LAB15:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 1528U);
    t8 = *((char **)t7);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 1);
    goto LAB17;

LAB9:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t3) == 0)
        goto LAB18;

LAB20:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;

LAB21:    t8 = (t9 + 4);
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t4);
    t17 = (~(t16));
    *((unsigned int *)t9) = t17;
    *((unsigned int *)t8) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB23;

LAB22:    t22 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t22 & 1U);
    t23 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t23 & 1U);
    t24 = (t0 + 2088);
    xsi_vlogvar_assign_value(t24, t9, 0, 0, 1);
    goto LAB17;

LAB11:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 31);
    t12 = (t11 & 1);
    *((unsigned int *)t9) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 31);
    t16 = (t14 & 1);
    *((unsigned int *)t3) = t16;
    t8 = (t0 + 1048U);
    t15 = *((char **)t8);
    memset(t26, 0, 8);
    t8 = (t15 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    t19 = *((unsigned int *)t15);
    t20 = (t19 & t18);
    t21 = (t20 & 4294967295U);
    if (t21 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t8) != 0)
        goto LAB26;

LAB27:    memset(t25, 0, 8);
    t27 = (t26 + 4);
    t22 = *((unsigned int *)t27);
    t23 = (~(t22));
    t28 = *((unsigned int *)t26);
    t29 = (t28 & t23);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t27) == 0)
        goto LAB28;

LAB30:    t31 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t31) = 1;

LAB31:    t32 = (t25 + 4);
    t33 = (t26 + 4);
    t34 = *((unsigned int *)t26);
    t35 = (~(t34));
    *((unsigned int *)t25) = t35;
    *((unsigned int *)t32) = 0;
    if (*((unsigned int *)t33) != 0)
        goto LAB33;

LAB32:    t40 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t40 & 1U);
    t41 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t41 & 1U);
    t43 = *((unsigned int *)t9);
    t44 = *((unsigned int *)t25);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = (t9 + 4);
    t47 = (t25 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB34;

LAB35:
LAB36:    t70 = (t0 + 2088);
    xsi_vlogvar_assign_value(t70, t42, 0, 0, 1);
    goto LAB17;

LAB13:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t25, 0, 8);
    t3 = (t25 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 31);
    t12 = (t11 & 1);
    *((unsigned int *)t25) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 31);
    t16 = (t14 & 1);
    *((unsigned int *)t3) = t16;
    memset(t9, 0, 8);
    t8 = (t25 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    t19 = *((unsigned int *)t25);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB40;

LAB38:    if (*((unsigned int *)t8) == 0)
        goto LAB37;

LAB39:    t15 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t15) = 1;

LAB40:    t24 = (t9 + 4);
    t27 = (t25 + 4);
    t22 = *((unsigned int *)t25);
    t23 = (~(t22));
    *((unsigned int *)t9) = t23;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t27) != 0)
        goto LAB42;

LAB41:    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & 1U);
    t36 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t36 & 1U);
    t31 = (t0 + 1048U);
    t32 = *((char **)t31);
    memset(t26, 0, 8);
    t31 = (t32 + 4);
    t37 = *((unsigned int *)t31);
    t38 = (~(t37));
    t39 = *((unsigned int *)t32);
    t40 = (t39 & t38);
    t41 = (t40 & 4294967295U);
    if (t41 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t31) != 0)
        goto LAB45;

LAB46:    t43 = *((unsigned int *)t9);
    t44 = *((unsigned int *)t26);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t9 + 4);
    t47 = (t26 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB47;

LAB48:
LAB49:    t70 = (t0 + 2088);
    xsi_vlogvar_assign_value(t70, t42, 0, 0, 1);
    goto LAB17;

LAB18:    *((unsigned int *)t9) = 1;
    goto LAB21;

LAB23:    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t18 | t19);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t8) = (t20 | t21);
    goto LAB22;

LAB24:    *((unsigned int *)t26) = 1;
    goto LAB27;

LAB26:    t24 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t25) = 1;
    goto LAB31;

LAB33:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t33);
    *((unsigned int *)t25) = (t36 | t37);
    t38 = *((unsigned int *)t32);
    t39 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t38 | t39);
    goto LAB32;

LAB34:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t9 + 4);
    t57 = (t25 + 4);
    t58 = *((unsigned int *)t56);
    t59 = (~(t58));
    t60 = *((unsigned int *)t9);
    t61 = (t60 & t59);
    t62 = *((unsigned int *)t57);
    t63 = (~(t62));
    t64 = *((unsigned int *)t25);
    t65 = (t64 & t63);
    t66 = (~(t61));
    t67 = (~(t65));
    t68 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t68 & t66);
    t69 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t69 & t67);
    goto LAB36;

LAB37:    *((unsigned int *)t9) = 1;
    goto LAB40;

LAB42:    t28 = *((unsigned int *)t9);
    t29 = *((unsigned int *)t27);
    *((unsigned int *)t9) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t27);
    *((unsigned int *)t24) = (t30 | t34);
    goto LAB41;

LAB43:    *((unsigned int *)t26) = 1;
    goto LAB46;

LAB45:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB46;

LAB47:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t9 + 4);
    t57 = (t26 + 4);
    t58 = *((unsigned int *)t9);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t62 = (~(t60));
    t63 = *((unsigned int *)t26);
    t64 = (~(t63));
    t66 = *((unsigned int *)t57);
    t67 = (~(t66));
    t61 = (t59 & t62);
    t65 = (t64 & t67);
    t68 = (~(t61));
    t69 = (~(t65));
    t71 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t71 & t68);
    t72 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t72 & t69);
    t73 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t73 & t68);
    t74 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t74 & t69);
    goto LAB49;

}


extern void work_m_00000000003851025627_0026561197_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Always_31_1};
	xsi_register_didat("work_m_00000000003851025627_0026561197", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003851025627_0026561197.didat");
	xsi_register_executes(pe);
}
