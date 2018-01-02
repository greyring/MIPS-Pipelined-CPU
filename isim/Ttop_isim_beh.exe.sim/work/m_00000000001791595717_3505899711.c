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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/uart.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {8, 0};
static int ng5[] = {9, 0};



static void Always_44_0(char *t0)
{
    char t13[8];
    char t30[8];
    char t49[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;

LAB0:    t1 = (t0 + 5088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5656);
    *((int *)t2) = 1;
    t3 = (t0 + 5120);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(51, ng0);

LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(81, ng0);

LAB57:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB16:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(45, ng0);

LAB8:    xsi_set_current_line(46, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB7;

LAB10:    xsi_set_current_line(54, ng0);

LAB13:    xsi_set_current_line(55, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(58, ng0);

LAB17:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 4168);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    memset(t13, 0, 8);
    t12 = (t11 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t12) == 0)
        goto LAB18;

LAB20:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;

LAB21:    t20 = (t13 + 4);
    t21 = (t11 + 4);
    t22 = *((unsigned int *)t11);
    t23 = (~(t22));
    *((unsigned int *)t13) = t23;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB23;

LAB22:    t28 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t28 & 1U);
    t29 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t29 & 1U);
    t31 = (t0 + 2328U);
    t32 = *((char **)t31);
    memset(t30, 0, 8);
    t31 = (t32 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (~(t33));
    t35 = *((unsigned int *)t32);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB27;

LAB25:    if (*((unsigned int *)t31) == 0)
        goto LAB24;

LAB26:    t38 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t38) = 1;

LAB27:    t39 = (t30 + 4);
    t40 = (t32 + 4);
    t41 = *((unsigned int *)t32);
    t42 = (~(t41));
    *((unsigned int *)t30) = t42;
    *((unsigned int *)t39) = 0;
    if (*((unsigned int *)t40) != 0)
        goto LAB29;

LAB28:    t47 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t47 & 1U);
    t48 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t48 & 1U);
    t50 = *((unsigned int *)t13);
    t51 = *((unsigned int *)t30);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t13 + 4);
    t54 = (t30 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB30;

LAB31:
LAB32:    t81 = (t49 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t49);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB33;

LAB34:
LAB35:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB37;

LAB38:
LAB39:    goto LAB16;

LAB18:    *((unsigned int *)t13) = 1;
    goto LAB21;

LAB23:    t24 = *((unsigned int *)t13);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t13) = (t24 | t25);
    t26 = *((unsigned int *)t20);
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t26 | t27);
    goto LAB22;

LAB24:    *((unsigned int *)t30) = 1;
    goto LAB27;

LAB29:    t43 = *((unsigned int *)t30);
    t44 = *((unsigned int *)t40);
    *((unsigned int *)t30) = (t43 | t44);
    t45 = *((unsigned int *)t39);
    t46 = *((unsigned int *)t40);
    *((unsigned int *)t39) = (t45 | t46);
    goto LAB28;

LAB30:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t13 + 4);
    t64 = (t30 + 4);
    t65 = *((unsigned int *)t13);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t30);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB32;

LAB33:    xsi_set_current_line(60, ng0);

LAB36:    xsi_set_current_line(61, ng0);
    t87 = ((char*)((ng2)));
    t88 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t88, t87, 0, 0, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB35;

LAB37:    xsi_set_current_line(65, ng0);

LAB40:    xsi_set_current_line(66, ng0);
    t11 = (t0 + 4008);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 4, t19, 4, t20, 4);
    t21 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t21, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB42;

LAB41:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB42;

LAB45:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB43;

LAB44:    t20 = (t13 + 4);
    t6 = *((unsigned int *)t20);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(71, ng0);

LAB52:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB53;

LAB54:
LAB55:
LAB48:    goto LAB39;

LAB42:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB44;

LAB43:    *((unsigned int *)t13) = 1;
    goto LAB44;

LAB46:    xsi_set_current_line(68, ng0);

LAB49:    xsi_set_current_line(69, ng0);
    t21 = (t0 + 2328U);
    t31 = *((char **)t21);
    t21 = (t0 + 3848);
    t32 = (t0 + 3848);
    t38 = (t32 + 72U);
    t39 = *((char **)t38);
    t40 = (t0 + 4008);
    t53 = (t40 + 56U);
    t54 = *((char **)t53);
    xsi_vlog_generic_convert_bit_index(t30, t39, 2, t54, 4, 2);
    t55 = (t30 + 4);
    t14 = *((unsigned int *)t55);
    t73 = (!(t14));
    if (t73 == 1)
        goto LAB50;

LAB51:    goto LAB48;

LAB50:    xsi_vlogvar_wait_assign_value(t21, t31, 0, *((unsigned int *)t30), 1, 0LL);
    goto LAB51;

LAB53:    xsi_set_current_line(74, ng0);

LAB56:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 3848);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB55;

}

static void Always_87_1(char *t0)
{
    char t13[8];
    char t17[8];
    char t26[8];
    char t34[8];
    char t76[8];
    char t84[8];
    char t92[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
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
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t93;

LAB0:    t1 = (t0 + 5336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5672);
    *((int *)t2) = 1;
    t3 = (t0 + 5368);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(93, ng0);

LAB9:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB17:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB18;

LAB19:    memcpy(t34, t13, 8);

LAB20:    t66 = (t34 + 4);
    t67 = *((unsigned int *)t66);
    t68 = (~(t67));
    t69 = *((unsigned int *)t34);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB32;

LAB33:
LAB34:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB83;

LAB81:    if (*((unsigned int *)t2) == 0)
        goto LAB80;

LAB82:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB83:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t20 = (t16 & t15);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB84;

LAB85:
LAB86:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(88, ng0);

LAB8:    xsi_set_current_line(89, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB7;

LAB10:    xsi_set_current_line(94, ng0);

LAB13:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB14:    *((unsigned int *)t13) = 1;
    goto LAB17;

LAB16:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB18:    t11 = (t0 + 2888);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    memset(t17, 0, 8);
    t19 = (t18 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t19) == 0)
        goto LAB21;

LAB23:    t25 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t25) = 1;

LAB24:    memset(t26, 0, 8);
    t27 = (t17 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t17);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t27) != 0)
        goto LAB27;

LAB28:    t35 = *((unsigned int *)t13);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t13 + 4);
    t39 = (t26 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB20;

LAB21:    *((unsigned int *)t17) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t26) = 1;
    goto LAB28;

LAB27:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB28;

LAB29:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t13 + 4);
    t49 = (t26 + 4);
    t50 = *((unsigned int *)t13);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB31;

LAB32:    xsi_set_current_line(98, ng0);

LAB35:    xsi_set_current_line(99, ng0);
    t72 = (t0 + 3688);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = ((char*)((ng3)));
    memset(t76, 0, 8);
    xsi_vlog_unsigned_add(t76, 4, t74, 4, t75, 4);
    t77 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t77, t76, 0, 0, 4, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t12);
    t21 = (t16 | t20);
    t22 = (~(t21));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB39;

LAB36:    if (t21 != 0)
        goto LAB38;

LAB37:    *((unsigned int *)t13) = 1;

LAB39:    t19 = (t13 + 4);
    t24 = *((unsigned int *)t19);
    t28 = (~(t24));
    t29 = *((unsigned int *)t13);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB40;

LAB41:
LAB42:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB45;

LAB44:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB45;

LAB48:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB46;

LAB47:    memset(t17, 0, 8);
    t19 = (t13 + 4);
    t6 = *((unsigned int *)t19);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t19) != 0)
        goto LAB51;

LAB52:    t27 = (t17 + 4);
    t14 = *((unsigned int *)t17);
    t15 = *((unsigned int *)t27);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB53;

LAB54:    memcpy(t76, t17, 8);

LAB55:    t80 = (t76 + 4);
    t61 = *((unsigned int *)t80);
    t62 = (~(t61));
    t63 = *((unsigned int *)t76);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB68;

LAB69:
LAB70:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t12);
    t21 = (t16 | t20);
    t22 = (~(t21));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB75;

LAB72:    if (t21 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t13) = 1;

LAB75:    t19 = (t13 + 4);
    t24 = *((unsigned int *)t19);
    t28 = (~(t24));
    t29 = *((unsigned int *)t13);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB76;

LAB77:
LAB78:    goto LAB34;

LAB38:    t18 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(100, ng0);

LAB43:    xsi_set_current_line(101, ng0);
    t25 = ((char*)((ng1)));
    t27 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t27, t25, 0, 0, 1, 0LL);
    goto LAB42;

LAB45:    t18 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB47;

LAB46:    *((unsigned int *)t13) = 1;
    goto LAB47;

LAB49:    *((unsigned int *)t17) = 1;
    goto LAB52;

LAB51:    t25 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB52;

LAB53:    t33 = (t0 + 3688);
    t38 = (t33 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng5)));
    memset(t26, 0, 8);
    t48 = (t39 + 4);
    if (*((unsigned int *)t48) != 0)
        goto LAB57;

LAB56:    t49 = (t40 + 4);
    if (*((unsigned int *)t49) != 0)
        goto LAB57;

LAB60:    if (*((unsigned int *)t39) < *((unsigned int *)t40))
        goto LAB58;

LAB59:    memset(t34, 0, 8);
    t72 = (t26 + 4);
    t20 = *((unsigned int *)t72);
    t21 = (~(t20));
    t22 = *((unsigned int *)t26);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB61;

LAB62:    if (*((unsigned int *)t72) != 0)
        goto LAB63;

LAB64:    t28 = *((unsigned int *)t17);
    t29 = *((unsigned int *)t34);
    t30 = (t28 & t29);
    *((unsigned int *)t76) = t30;
    t74 = (t17 + 4);
    t75 = (t34 + 4);
    t77 = (t76 + 4);
    t31 = *((unsigned int *)t74);
    t32 = *((unsigned int *)t75);
    t35 = (t31 | t32);
    *((unsigned int *)t77) = t35;
    t36 = *((unsigned int *)t77);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB65;

LAB66:
LAB67:    goto LAB55;

LAB57:    t66 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB59;

LAB58:    *((unsigned int *)t26) = 1;
    goto LAB59;

LAB61:    *((unsigned int *)t34) = 1;
    goto LAB64;

LAB63:    t73 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB64;

LAB65:    t41 = *((unsigned int *)t76);
    t42 = *((unsigned int *)t77);
    *((unsigned int *)t76) = (t41 | t42);
    t78 = (t17 + 4);
    t79 = (t34 + 4);
    t43 = *((unsigned int *)t17);
    t44 = (~(t43));
    t45 = *((unsigned int *)t78);
    t46 = (~(t45));
    t47 = *((unsigned int *)t34);
    t50 = (~(t47));
    t51 = *((unsigned int *)t79);
    t52 = (~(t51));
    t58 = (t44 & t46);
    t59 = (t50 & t52);
    t53 = (~(t58));
    t54 = (~(t59));
    t55 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t55 & t53);
    t56 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t56 & t54);
    t57 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t57 & t53);
    t60 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t60 & t54);
    goto LAB67;

LAB68:    xsi_set_current_line(103, ng0);

LAB71:    xsi_set_current_line(104, ng0);
    t81 = (t0 + 3368);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t85 = (t0 + 3368);
    t86 = (t85 + 72U);
    t87 = *((char **)t86);
    t88 = (t0 + 3688);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    t91 = ((char*)((ng2)));
    memset(t92, 0, 8);
    xsi_vlog_unsigned_minus(t92, 32, t90, 4, t91, 32);
    xsi_vlog_generic_get_index_select_value(t84, 1, t83, t87, 2, t92, 32, 2);
    t93 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t93, t84, 0, 0, 1, 0LL);
    goto LAB70;

LAB74:    t18 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(106, ng0);

LAB79:    xsi_set_current_line(107, ng0);
    t25 = ((char*)((ng2)));
    t27 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t27, t25, 0, 0, 1, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB78;

LAB80:    *((unsigned int *)t13) = 1;
    goto LAB83;

LAB84:    xsi_set_current_line(112, ng0);

LAB87:    xsi_set_current_line(113, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB86;

}


extern void work_m_00000000001791595717_3505899711_init()
{
	static char *pe[] = {(void *)Always_44_0,(void *)Always_87_1};
	xsi_register_didat("work_m_00000000001791595717_3505899711", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001791595717_3505899711.didat");
	xsi_register_executes(pe);
}
