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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/ID_EXE_REG.v";
static int ng1[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ng2[] = {0, 0, 0, 0};



static void Always_77_0(char *t0)
{
    char t7[8];
    char t42[40];
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
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 9728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 10792);
    *((int *)t2) = 1;
    t3 = (t0 + 9760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
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

LAB10:    xsi_set_current_line(80, ng0);
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

LAB13:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 8648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8648);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 146, 0LL);

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

LAB9:    xsi_set_current_line(79, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 8648);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 146, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(81, ng0);
    t4 = (t0 + 4568U);
    t5 = *((char **)t4);
    t4 = (t0 + 4408U);
    t6 = *((char **)t4);
    t4 = (t0 + 4248U);
    t11 = *((char **)t4);
    t4 = (t0 + 4088U);
    t12 = *((char **)t4);
    t4 = (t0 + 3928U);
    t20 = *((char **)t4);
    t4 = (t0 + 3768U);
    t21 = *((char **)t4);
    t4 = (t0 + 3608U);
    t34 = *((char **)t4);
    t4 = (t0 + 3448U);
    t40 = *((char **)t4);
    t4 = (t0 + 3288U);
    t41 = *((char **)t4);
    t4 = (t0 + 3128U);
    t43 = *((char **)t4);
    t4 = (t0 + 2968U);
    t44 = *((char **)t4);
    t4 = (t0 + 2808U);
    t45 = *((char **)t4);
    t4 = (t0 + 2648U);
    t46 = *((char **)t4);
    t4 = (t0 + 2488U);
    t47 = *((char **)t4);
    t4 = (t0 + 2328U);
    t48 = *((char **)t4);
    t4 = (t0 + 2168U);
    t49 = *((char **)t4);
    t4 = (t0 + 2008U);
    t50 = *((char **)t4);
    t4 = (t0 + 1848U);
    t51 = *((char **)t4);
    t4 = (t0 + 1688U);
    t52 = *((char **)t4);
    xsi_vlogtype_concat(t42, 146, 146, 19U, t52, 4, t51, 32, t50, 32, t49, 16, t48, 32, t47, 1, t46, 1, t45, 1, t44, 1, t43, 1, t41, 2, t40, 2, t34, 5, t21, 3, t20, 5, t12, 1, t11, 1, t6, 1, t5, 5);
    t4 = (t0 + 8648);
    xsi_vlogvar_wait_assign_value(t4, t42, 0, 0, 146, 0LL);
    goto LAB14;

}

static void Always_91_1(char *t0)
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

LAB0:    t1 = (t0 + 9976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 10808);
    *((int *)t2) = 1;
    t3 = (t0 + 10008);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(91, ng0);

LAB5:    xsi_set_current_line(92, ng0);
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

LAB7:    xsi_set_current_line(94, ng0);
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

LAB10:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 8808);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8808);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 34, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(93, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 8808);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 34, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 8088U);
    t5 = *((char **)t4);
    t4 = (t0 + 7768U);
    t11 = *((char **)t4);
    xsi_vlogtype_concat(t13, 34, 34, 2U, t11, 32, t5, 2);
    t4 = (t0 + 8808);
    xsi_vlogvar_wait_assign_value(t4, t13, 0, 0, 34, 0LL);
    goto LAB11;

}

static void Cont_100_2(char *t0)
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
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;

LAB0:    t1 = (t0 + 10224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 8648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 12072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 5);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t10 = (t0 + 12008);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 5, 1);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t15 = (t0 + 11944);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_bit_copy(t19, 0, t4, 6, 1);
    xsi_driver_vfirst_trans(t15, 0, 0);
    t20 = (t0 + 11880);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_bit_copy(t24, 0, t4, 7, 1);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t25 = (t0 + 11816);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_bit_copy(t29, 0, t4, 8, 5);
    xsi_driver_vfirst_trans(t25, 0, 4);
    t30 = (t0 + 11752);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t34, 0, t4, 13, 3);
    xsi_driver_vfirst_trans(t30, 0, 2);
    t35 = (t0 + 11688);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_bit_copy(t39, 0, t4, 16, 5);
    xsi_driver_vfirst_trans(t35, 0, 4);
    t40 = (t0 + 11624);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_bit_copy(t44, 0, t4, 21, 2);
    xsi_driver_vfirst_trans(t40, 0, 1);
    t45 = (t0 + 11560);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_bit_copy(t49, 0, t4, 23, 2);
    xsi_driver_vfirst_trans(t45, 0, 1);
    t50 = (t0 + 11496);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    xsi_vlog_bit_copy(t54, 0, t4, 25, 1);
    xsi_driver_vfirst_trans(t50, 0, 0);
    t55 = (t0 + 11432);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    xsi_vlog_bit_copy(t59, 0, t4, 26, 1);
    xsi_driver_vfirst_trans(t55, 0, 0);
    t60 = (t0 + 11368);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    xsi_vlog_bit_copy(t64, 0, t4, 27, 1);
    xsi_driver_vfirst_trans(t60, 0, 0);
    t65 = (t0 + 11304);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    xsi_vlog_bit_copy(t69, 0, t4, 28, 1);
    xsi_driver_vfirst_trans(t65, 0, 0);
    t70 = (t0 + 11240);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    xsi_vlog_bit_copy(t74, 0, t4, 29, 1);
    xsi_driver_vfirst_trans(t70, 0, 0);
    t75 = (t0 + 11176);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    xsi_vlog_bit_copy(t79, 0, t4, 30, 32);
    xsi_driver_vfirst_trans(t75, 0, 31);
    t80 = (t0 + 11112);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    xsi_vlog_bit_copy(t84, 0, t4, 62, 16);
    xsi_driver_vfirst_trans(t80, 0, 15);
    t85 = (t0 + 11048);
    t86 = (t85 + 56U);
    t87 = *((char **)t86);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    xsi_vlog_bit_copy(t89, 0, t4, 78, 32);
    xsi_driver_vfirst_trans(t85, 0, 31);
    t90 = (t0 + 10984);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    t93 = (t92 + 56U);
    t94 = *((char **)t93);
    xsi_vlog_bit_copy(t94, 0, t4, 110, 32);
    xsi_driver_vfirst_trans(t90, 0, 31);
    t95 = (t0 + 10920);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    t98 = (t97 + 56U);
    t99 = *((char **)t98);
    xsi_vlog_bit_copy(t99, 0, t4, 142, 4);
    xsi_driver_vfirst_trans(t95, 0, 3);
    t100 = (t0 + 10824);
    *((int *)t100) = 1;

LAB1:    return;
}

static void Cont_105_3(char *t0)
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

LAB0:    t1 = (t0 + 10472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 8808);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 12200);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t4, 0, 2);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t10 = (t0 + 12136);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    xsi_vlog_bit_copy(t14, 0, t4, 2, 32);
    xsi_driver_vfirst_trans(t10, 0, 31);
    t15 = (t0 + 10840);
    *((int *)t15) = 1;

LAB1:    return;
}


extern void work_m_00000000003208055114_2246607590_init()
{
	static char *pe[] = {(void *)Always_77_0,(void *)Always_91_1,(void *)Cont_100_2,(void *)Cont_105_3};
	xsi_register_didat("work_m_00000000003208055114_2246607590", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003208055114_2246607590.didat");
	xsi_register_executes(pe);
}
