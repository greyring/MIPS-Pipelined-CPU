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
static int ng1[] = {640, 0};
static unsigned int ng2[] = {0U, 0U};



static void Cont_34_0(char *t0)
{
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_multiply(t4, 32, t3, 9, t2, 32);
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t4, 32, t6, 10);
    t5 = (t0 + 5320);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 524287U;
    t13 = t12;
    t14 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t5, 0, 18);
    t20 = (t0 + 5192);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_37_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t53[8];
    char t67[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t54;
    char *t55;
    char *t56;
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
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 15U);
    if (t11 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t13 = (t0 + 1368U);
    t14 = *((char **)t13);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t13 = (t5 + 4);
    t19 = (t14 + 4);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t19);
    t23 = (t21 | t22);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB8;

LAB9:
LAB10:    memset(t4, 0, 8);
    t42 = (t15 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t15);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t42) != 0)
        goto LAB13;

LAB14:    t49 = (t4 + 4);
    t50 = *((unsigned int *)t4);
    t51 = *((unsigned int *)t49);
    t52 = (t50 || t51);
    if (t52 > 0)
        goto LAB15;

LAB16:    t63 = *((unsigned int *)t4);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t49) > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t4) > 0)
        goto LAB21;

LAB22:    memcpy(t3, t67, 8);

LAB23:    t77 = (t0 + 5384);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    memset(t81, 0, 8);
    t82 = 262143U;
    t83 = t82;
    t84 = (t3 + 4);
    t85 = *((unsigned int *)t3);
    t82 = (t82 & t85);
    t86 = *((unsigned int *)t84);
    t83 = (t83 & t86);
    t87 = (t81 + 4);
    t88 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t88 | t82);
    t89 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t89 | t83);
    xsi_driver_vfirst_trans(t77, 0, 17);
    t90 = (t0 + 5208);
    *((int *)t90) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB7;

LAB8:    t26 = *((unsigned int *)t15);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t15) = (t26 | t27);
    t28 = (t5 + 4);
    t29 = (t14 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t33 = (t32 & t31);
    t34 = *((unsigned int *)t29);
    t35 = (~(t34));
    t36 = *((unsigned int *)t14);
    t37 = (t36 & t35);
    t38 = (~(t33));
    t39 = (~(t37));
    t40 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t40 & t38);
    t41 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t41 & t39);
    goto LAB10;

LAB11:    *((unsigned int *)t4) = 1;
    goto LAB14;

LAB13:    t48 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB14;

LAB15:    t54 = (t0 + 1528U);
    t55 = *((char **)t54);
    memset(t53, 0, 8);
    t54 = (t53 + 4);
    t56 = (t55 + 4);
    t57 = *((unsigned int *)t55);
    t58 = (t57 >> 2);
    *((unsigned int *)t53) = t58;
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 2);
    *((unsigned int *)t54) = t60;
    t61 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t61 & 262143U);
    t62 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t62 & 262143U);
    goto LAB16;

LAB17:    t68 = (t0 + 2488U);
    t69 = *((char **)t68);
    memset(t67, 0, 8);
    t68 = (t67 + 4);
    t70 = (t69 + 4);
    t71 = *((unsigned int *)t69);
    t72 = (t71 >> 1);
    *((unsigned int *)t67) = t72;
    t73 = *((unsigned int *)t70);
    t74 = (t73 >> 1);
    *((unsigned int *)t68) = t74;
    t75 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t75 & 262143U);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t76 & 262143U);
    goto LAB18;

LAB19:    xsi_vlog_unsigned_bit_combine(t3, 18, t53, 18, t67, 18);
    goto LAB23;

LAB21:    memcpy(t3, t53, 8);
    goto LAB23;

}

static void Cont_55_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t25[8];
    char t39[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
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
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2488U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    memset(t4, 0, 8);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t14) != 0)
        goto LAB6;

LAB7:    t21 = (t4 + 4);
    t22 = *((unsigned int *)t4);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB8;

LAB9:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t21);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t21) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t39, 8);

LAB16:    t49 = (t0 + 5448);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memset(t53, 0, 8);
    t54 = 4095U;
    t55 = t54;
    t56 = (t3 + 4);
    t57 = *((unsigned int *)t3);
    t54 = (t54 & t57);
    t58 = *((unsigned int *)t56);
    t55 = (t55 & t58);
    t59 = (t53 + 4);
    t60 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t60 | t54);
    t61 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t61 | t55);
    xsi_driver_vfirst_trans(t49, 0, 11);
    t62 = (t0 + 5224);
    *((int *)t62) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB7;

LAB8:    t26 = (t0 + 2968U);
    t27 = *((char **)t26);
    memset(t25, 0, 8);
    t26 = (t25 + 4);
    t28 = (t27 + 4);
    t29 = *((unsigned int *)t27);
    t30 = (t29 >> 0);
    *((unsigned int *)t25) = t30;
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 0);
    *((unsigned int *)t26) = t32;
    t33 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t33 & 4095U);
    t34 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t34 & 4095U);
    goto LAB9;

LAB10:    t40 = (t0 + 2808U);
    t41 = *((char **)t40);
    memset(t39, 0, 8);
    t40 = (t39 + 4);
    t42 = (t41 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (t43 >> 0);
    *((unsigned int *)t39) = t44;
    t45 = *((unsigned int *)t42);
    t46 = (t45 >> 0);
    *((unsigned int *)t40) = t46;
    t47 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t47 & 4095U);
    t48 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t48 & 4095U);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 12, t25, 12, t39, 12);
    goto LAB16;

LAB14:    memcpy(t3, t25, 8);
    goto LAB16;

}

static void Cont_56_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char *t1;
    char *t2;
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
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t20 = *((unsigned int *)t4);
    t21 = (~(t20));
    t22 = *((unsigned int *)t12);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t17, 8);

LAB16:    t24 = (t0 + 5512);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8);
    xsi_driver_vfirst_trans(t24, 0, 31);
    t29 = (t0 + 5240);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t17 = (t0 + 2808U);
    t18 = *((char **)t17);
    t17 = (t0 + 2968U);
    t19 = *((char **)t17);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t19, 16, t18, 16);
    goto LAB9;

LAB10:    t17 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t17, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}


extern void work_m_00000000003388931948_3930761748_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Cont_37_1,(void *)Cont_55_2,(void *)Cont_56_3};
	xsi_register_didat("work_m_00000000003388931948_3930761748", "isim/Ttop_isim_beh.exe.sim/work/m_00000000003388931948_3930761748.didat");
	xsi_register_executes(pe);
}
