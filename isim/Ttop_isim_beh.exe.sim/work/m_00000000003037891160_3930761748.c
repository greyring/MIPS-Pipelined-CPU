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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/vga_graph.v";
static unsigned int ng1[] = {2U, 0U};
static int ng2[] = {640, 0};
static unsigned int ng3[] = {3U, 0U};
static int ng4[] = {20, 0};
static unsigned int ng5[] = {0U, 0U};



static void Always_33_0(char *t0)
{
    char t4[8];
    char t15[8];
    char t37[8];
    char t38[8];
    char t53[8];
    char t59[8];
    char t62[8];
    char t69[8];
    char t77[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
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
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t78;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 3U);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t4 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB9;

LAB6:    if (t27 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t15) = 1;

LAB9:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t6 = ((char*)((ng3)));
    memset(t15, 0, 8);
    t7 = (t4 + 4);
    t14 = (t6 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t6);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t14);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t14);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB29;

LAB26:    if (t27 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t15) = 1;

LAB29:    t17 = (t15 + 4);
    t32 = *((unsigned int *)t17);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 19);

LAB32:
LAB12:    goto LAB2;

LAB8:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(35, ng0);
    t39 = (t0 + 1368U);
    t40 = *((char **)t39);
    memset(t38, 0, 8);
    t39 = (t40 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (~(t41));
    t43 = *((unsigned int *)t40);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t39) != 0)
        goto LAB15;

LAB16:    t47 = (t38 + 4);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t47);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB17;

LAB18:    t54 = *((unsigned int *)t38);
    t55 = (~(t54));
    t56 = *((unsigned int *)t47);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t47) > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t38) > 0)
        goto LAB23;

LAB24:    memcpy(t37, t62, 8);

LAB25:    t60 = (t0 + 2728);
    xsi_vlogvar_assign_value(t60, t37, 0, 0, 19);
    goto LAB12;

LAB13:    *((unsigned int *)t38) = 1;
    goto LAB16;

LAB15:    t46 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB16;

LAB17:    t51 = (t0 + 1688U);
    t52 = *((char **)t51);
    memcpy(t53, t52, 8);
    goto LAB18;

LAB19:    t51 = (t0 + 2168U);
    t58 = *((char **)t51);
    t51 = ((char*)((ng2)));
    memset(t59, 0, 8);
    xsi_vlog_unsigned_multiply(t59, 32, t58, 9, t51, 32);
    t60 = (t0 + 2008U);
    t61 = *((char **)t60);
    memset(t62, 0, 8);
    xsi_vlog_unsigned_add(t62, 32, t59, 32, t61, 10);
    goto LAB20;

LAB21:    xsi_vlog_unsigned_bit_combine(t37, 32, t53, 32, t62, 32);
    goto LAB25;

LAB23:    memcpy(t37, t53, 8);
    goto LAB25;

LAB28:    t16 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(37, ng0);
    t30 = (t0 + 1368U);
    t31 = *((char **)t30);
    memset(t38, 0, 8);
    t30 = (t31 + 4);
    t41 = *((unsigned int *)t30);
    t42 = (~(t41));
    t43 = *((unsigned int *)t31);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t30) != 0)
        goto LAB35;

LAB36:    t40 = (t38 + 4);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t40);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB37;

LAB38:    t54 = *((unsigned int *)t38);
    t55 = (~(t54));
    t56 = *((unsigned int *)t40);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t40) > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t38) > 0)
        goto LAB43;

LAB44:    memcpy(t37, t77, 8);

LAB45:    t78 = (t0 + 2728);
    xsi_vlogvar_assign_value(t78, t37, 0, 0, 19);
    goto LAB32;

LAB33:    *((unsigned int *)t38) = 1;
    goto LAB36;

LAB35:    t39 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB36;

LAB37:    t46 = (t0 + 1688U);
    t47 = *((char **)t46);
    memcpy(t53, t47, 8);
    goto LAB38;

LAB39:    t46 = (t0 + 2168U);
    t51 = *((char **)t46);
    memset(t59, 0, 8);
    t46 = (t59 + 4);
    t52 = (t51 + 4);
    t63 = *((unsigned int *)t51);
    t64 = (t63 >> 5);
    *((unsigned int *)t59) = t64;
    t65 = *((unsigned int *)t52);
    t66 = (t65 >> 5);
    *((unsigned int *)t46) = t66;
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & 15U);
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & 15U);
    t58 = ((char*)((ng4)));
    memset(t62, 0, 8);
    xsi_vlog_unsigned_multiply(t62, 32, t59, 32, t58, 32);
    t60 = (t0 + 2008U);
    t61 = *((char **)t60);
    memset(t69, 0, 8);
    t60 = (t69 + 4);
    t70 = (t61 + 4);
    t71 = *((unsigned int *)t61);
    t72 = (t71 >> 5);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t70);
    t74 = (t73 >> 5);
    *((unsigned int *)t60) = t74;
    t75 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t75 & 31U);
    t76 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t76 & 31U);
    memset(t77, 0, 8);
    xsi_vlog_unsigned_add(t77, 32, t62, 32, t69, 32);
    goto LAB40;

LAB41:    xsi_vlog_unsigned_bit_combine(t37, 32, t53, 32, t77, 32);
    goto LAB45;

LAB43:    memcpy(t37, t53, 8);
    goto LAB45;

}


extern void work_m_00000000003037891160_3930761748_init()
{
	static char *pe[] = {(void *)Always_33_0};
	xsi_register_didat("work_m_00000000003037891160_3930761748", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003037891160_3930761748.didat");
	xsi_register_executes(pe);
}
