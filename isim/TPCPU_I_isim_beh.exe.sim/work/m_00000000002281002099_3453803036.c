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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/CAUSE_data.v";
static int ng1[] = {15, 0};
static int ng2[] = {10, 0};
static int ng3[] = {9, 0};
static int ng4[] = {7, 0};
static int ng5[] = {30, 0};
static int ng6[] = {16, 0};
static unsigned int ng7[] = {0U, 0U};
static int ng8[] = {1, 0};
static int ng9[] = {0, 0};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {12U, 0U};
static int ng12[] = {6, 0};
static int ng13[] = {2, 0};
static int ng14[] = {31, 0};
static unsigned int ng15[] = {8U, 0U};
static unsigned int ng16[] = {10U, 0U};



static void Cont_35_0(char *t0)
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

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4376);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t4[8];
    char t15[8];
    char t16[8];
    char t17[8];
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
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    int t25;
    char *t26;
    unsigned int t27;
    int t28;
    int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t5 = (t0 + 1048U);
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
    *((unsigned int *)t4) = (t12 & 63U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 63U);
    t14 = (t0 + 2888);
    t18 = (t0 + 2888);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng1)));
    t22 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t20)), 2, t21, 32, 1, t22, 32, 1);
    t23 = (t15 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t16 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t30 = (t17 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 7);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 7);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 7U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 7U);
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng3)));
    t20 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    t22 = (t16 + 4);
    t27 = *((unsigned int *)t22);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t23 = (t17 + 4);
    t31 = *((unsigned int *)t23);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB8;

LAB9:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 32767U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 32767U);
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng5)));
    t20 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    t22 = (t16 + 4);
    t27 = *((unsigned int *)t22);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t23 = (t17 + 4);
    t31 = *((unsigned int *)t23);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2888);
    t5 = (t0 + 2888);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng8)));
    t18 = ((char*)((ng9)));
    xsi_vlog_convert_partindices(t4, t15, t16, ((int*)(t7)), 2, t14, 32, 1, t18, 32, 1);
    t19 = (t4 + 4);
    t8 = *((unsigned int *)t19);
    t25 = (!(t8));
    t20 = (t15 + 4);
    t9 = *((unsigned int *)t20);
    t28 = (!(t9));
    t29 = (t25 && t28);
    t21 = (t16 + 4);
    t10 = *((unsigned int *)t21);
    t32 = (!(t10));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t13 = (t11 ^ t12);
    t24 = (t10 | t13);
    t27 = *((unsigned int *)t5);
    t31 = *((unsigned int *)t6);
    t34 = (t27 | t31);
    t36 = (~(t34));
    t37 = (t24 & t36);
    if (t37 != 0)
        goto LAB17;

LAB14:    if (t34 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t4) = 1;

LAB17:    t14 = (t4 + 4);
    t40 = *((unsigned int *)t14);
    t41 = (~(t40));
    t42 = *((unsigned int *)t4);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(60, ng0);

LAB102:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 2);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng12)));
    t20 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    t22 = (t16 + 4);
    t27 = *((unsigned int *)t22);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t23 = (t17 + 4);
    t31 = *((unsigned int *)t23);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB103;

LAB104:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t24 = *((unsigned int *)t20);
    t25 = (!(t24));
    if (t25 == 1)
        goto LAB105;

LAB106:
LAB83:
LAB62:
LAB41:
LAB20:    goto LAB2;

LAB6:    t34 = *((unsigned int *)t17);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t14, t4, t35, *((unsigned int *)t16), t39);
    goto LAB7;

LAB8:    t34 = *((unsigned int *)t17);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t4, t35, *((unsigned int *)t16), t39);
    goto LAB9;

LAB10:    t34 = *((unsigned int *)t17);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t4, t35, *((unsigned int *)t16), t39);
    goto LAB11;

LAB12:    t11 = *((unsigned int *)t16);
    t35 = (t11 + 0);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t15);
    t38 = (t12 - t13);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t3, t2, t35, *((unsigned int *)t15), t39);
    goto LAB13;

LAB16:    t7 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);

LAB21:    xsi_set_current_line(45, ng0);
    t18 = ((char*)((ng11)));
    t19 = (t0 + 2888);
    t20 = (t0 + 2888);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng12)));
    t26 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t22)), 2, t23, 32, 1, t26, 32, 1);
    t30 = (t15 + 4);
    t45 = *((unsigned int *)t30);
    t25 = (!(t45));
    t46 = (t16 + 4);
    t47 = *((unsigned int *)t46);
    t28 = (!(t47));
    t29 = (t25 && t28);
    t48 = (t17 + 4);
    t49 = *((unsigned int *)t48);
    t32 = (!(t49));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t2) != 0)
        goto LAB26;

LAB27:    t6 = (t15 + 4);
    t13 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t6);
    t27 = (t13 || t24);
    if (t27 > 0)
        goto LAB28;

LAB29:    t42 = *((unsigned int *)t15);
    t43 = (~(t42));
    t44 = *((unsigned int *)t6);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t6) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t15) > 0)
        goto LAB34;

LAB35:    memcpy(t4, t20, 8);

LAB36:    t19 = (t0 + 2888);
    t21 = (t0 + 2888);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t26 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t17, t23, 2, t26, 32, 1);
    t30 = (t17 + 4);
    t47 = *((unsigned int *)t30);
    t25 = (!(t47));
    if (t25 == 1)
        goto LAB37;

LAB38:    goto LAB20;

LAB22:    t50 = *((unsigned int *)t17);
    t35 = (t50 + 0);
    t51 = *((unsigned int *)t15);
    t52 = *((unsigned int *)t16);
    t38 = (t51 - t52);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t19, t18, t35, *((unsigned int *)t16), t39);
    goto LAB23;

LAB24:    *((unsigned int *)t15) = 1;
    goto LAB27;

LAB26:    t5 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB27;

LAB28:    t7 = (t0 + 2328U);
    t14 = *((char **)t7);
    memset(t16, 0, 8);
    t7 = (t16 + 4);
    t18 = (t14 + 4);
    t31 = *((unsigned int *)t14);
    t34 = (t31 >> 31);
    t36 = (t34 & 1);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t18);
    t40 = (t37 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t7) = t41;
    goto LAB29;

LAB30:    t19 = (t0 + 2168U);
    t20 = *((char **)t19);
    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t4, 1, t16, 1, t20, 1);
    goto LAB36;

LAB34:    memcpy(t4, t16, 8);
    goto LAB36;

LAB37:    xsi_vlogvar_assign_value(t19, t4, 0, *((unsigned int *)t17), 1);
    goto LAB38;

LAB39:    xsi_set_current_line(48, ng0);

LAB42:    xsi_set_current_line(49, ng0);
    t5 = ((char*)((ng15)));
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng12)));
    t20 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t4, t15, t16, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t4 + 4);
    t13 = *((unsigned int *)t21);
    t25 = (!(t13));
    t22 = (t15 + 4);
    t24 = *((unsigned int *)t22);
    t28 = (!(t24));
    t29 = (t25 && t28);
    t23 = (t16 + 4);
    t27 = *((unsigned int *)t23);
    t32 = (!(t27));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB43;

LAB44:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t2) != 0)
        goto LAB47;

LAB48:    t6 = (t15 + 4);
    t13 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t6);
    t27 = (t13 || t24);
    if (t27 > 0)
        goto LAB49;

LAB50:    t42 = *((unsigned int *)t15);
    t43 = (~(t42));
    t44 = *((unsigned int *)t6);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t6) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t15) > 0)
        goto LAB55;

LAB56:    memcpy(t4, t19, 8);

LAB57:    t20 = (t0 + 2888);
    t21 = (t0 + 2888);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t26 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t17, t23, 2, t26, 32, 1);
    t30 = (t17 + 4);
    t47 = *((unsigned int *)t30);
    t25 = (!(t47));
    if (t25 == 1)
        goto LAB58;

LAB59:    goto LAB41;

LAB43:    t31 = *((unsigned int *)t16);
    t35 = (t31 + 0);
    t34 = *((unsigned int *)t4);
    t36 = *((unsigned int *)t15);
    t38 = (t34 - t36);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t5, t35, *((unsigned int *)t15), t39);
    goto LAB44;

LAB45:    *((unsigned int *)t15) = 1;
    goto LAB48;

LAB47:    t5 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB48;

LAB49:    t7 = (t0 + 2328U);
    t14 = *((char **)t7);
    memset(t16, 0, 8);
    t7 = (t16 + 4);
    t18 = (t14 + 4);
    t31 = *((unsigned int *)t14);
    t34 = (t31 >> 31);
    t36 = (t34 & 1);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t18);
    t40 = (t37 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t7) = t41;
    goto LAB50;

LAB51:    t19 = ((char*)((ng7)));
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t4, 1, t16, 1, t19, 1);
    goto LAB57;

LAB55:    memcpy(t4, t16, 8);
    goto LAB57;

LAB58:    xsi_vlogvar_assign_value(t20, t4, 0, *((unsigned int *)t17), 1);
    goto LAB59;

LAB60:    xsi_set_current_line(52, ng0);

LAB63:    xsi_set_current_line(53, ng0);
    t5 = ((char*)((ng16)));
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng12)));
    t20 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t4, t15, t16, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t4 + 4);
    t13 = *((unsigned int *)t21);
    t25 = (!(t13));
    t22 = (t15 + 4);
    t24 = *((unsigned int *)t22);
    t28 = (!(t24));
    t29 = (t25 && t28);
    t23 = (t16 + 4);
    t27 = *((unsigned int *)t23);
    t32 = (!(t27));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB64;

LAB65:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t2) != 0)
        goto LAB68;

LAB69:    t6 = (t15 + 4);
    t13 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t6);
    t27 = (t13 || t24);
    if (t27 > 0)
        goto LAB70;

LAB71:    t42 = *((unsigned int *)t15);
    t43 = (~(t42));
    t44 = *((unsigned int *)t6);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t6) > 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t15) > 0)
        goto LAB76;

LAB77:    memcpy(t4, t19, 8);

LAB78:    t20 = (t0 + 2888);
    t21 = (t0 + 2888);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t26 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t17, t23, 2, t26, 32, 1);
    t30 = (t17 + 4);
    t47 = *((unsigned int *)t30);
    t25 = (!(t47));
    if (t25 == 1)
        goto LAB79;

LAB80:    goto LAB62;

LAB64:    t31 = *((unsigned int *)t16);
    t35 = (t31 + 0);
    t34 = *((unsigned int *)t4);
    t36 = *((unsigned int *)t15);
    t38 = (t34 - t36);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t5, t35, *((unsigned int *)t15), t39);
    goto LAB65;

LAB66:    *((unsigned int *)t15) = 1;
    goto LAB69;

LAB68:    t5 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB69;

LAB70:    t7 = (t0 + 2328U);
    t14 = *((char **)t7);
    memset(t16, 0, 8);
    t7 = (t16 + 4);
    t18 = (t14 + 4);
    t31 = *((unsigned int *)t14);
    t34 = (t31 >> 31);
    t36 = (t34 & 1);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t18);
    t40 = (t37 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t7) = t41;
    goto LAB71;

LAB72:    t19 = ((char*)((ng7)));
    goto LAB73;

LAB74:    xsi_vlog_unsigned_bit_combine(t4, 1, t16, 1, t19, 1);
    goto LAB78;

LAB76:    memcpy(t4, t16, 8);
    goto LAB78;

LAB79:    xsi_vlogvar_assign_value(t20, t4, 0, *((unsigned int *)t17), 1);
    goto LAB80;

LAB81:    xsi_set_current_line(56, ng0);

LAB84:    xsi_set_current_line(57, ng0);
    t5 = ((char*)((ng7)));
    t6 = (t0 + 2888);
    t7 = (t0 + 2888);
    t14 = (t7 + 72U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng12)));
    t20 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t4, t15, t16, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t4 + 4);
    t13 = *((unsigned int *)t21);
    t25 = (!(t13));
    t22 = (t15 + 4);
    t24 = *((unsigned int *)t22);
    t28 = (!(t24));
    t29 = (t25 && t28);
    t23 = (t16 + 4);
    t27 = *((unsigned int *)t23);
    t32 = (!(t27));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB85;

LAB86:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t2) != 0)
        goto LAB89;

LAB90:    t6 = (t15 + 4);
    t13 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t6);
    t27 = (t13 || t24);
    if (t27 > 0)
        goto LAB91;

LAB92:    t42 = *((unsigned int *)t15);
    t43 = (~(t42));
    t44 = *((unsigned int *)t6);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t6) > 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t15) > 0)
        goto LAB97;

LAB98:    memcpy(t4, t20, 8);

LAB99:    t19 = (t0 + 2888);
    t21 = (t0 + 2888);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t26 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t17, t23, 2, t26, 32, 1);
    t30 = (t17 + 4);
    t47 = *((unsigned int *)t30);
    t25 = (!(t47));
    if (t25 == 1)
        goto LAB100;

LAB101:    goto LAB83;

LAB85:    t31 = *((unsigned int *)t16);
    t35 = (t31 + 0);
    t34 = *((unsigned int *)t4);
    t36 = *((unsigned int *)t15);
    t38 = (t34 - t36);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t5, t35, *((unsigned int *)t15), t39);
    goto LAB86;

LAB87:    *((unsigned int *)t15) = 1;
    goto LAB90;

LAB89:    t5 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB90;

LAB91:    t7 = (t0 + 2328U);
    t14 = *((char **)t7);
    memset(t16, 0, 8);
    t7 = (t16 + 4);
    t18 = (t14 + 4);
    t31 = *((unsigned int *)t14);
    t34 = (t31 >> 31);
    t36 = (t34 & 1);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t18);
    t40 = (t37 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t7) = t41;
    goto LAB92;

LAB93:    t19 = (t0 + 1368U);
    t20 = *((char **)t19);
    goto LAB94;

LAB95:    xsi_vlog_unsigned_bit_combine(t4, 1, t16, 1, t20, 1);
    goto LAB99;

LAB97:    memcpy(t4, t16, 8);
    goto LAB99;

LAB100:    xsi_vlogvar_assign_value(t19, t4, 0, *((unsigned int *)t17), 1);
    goto LAB101;

LAB103:    t34 = *((unsigned int *)t17);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t6, t4, t35, *((unsigned int *)t16), t39);
    goto LAB104;

LAB105:    xsi_vlogvar_assign_value(t6, t4, 0, *((unsigned int *)t15), 1);
    goto LAB106;

}


extern void work_m_00000000002281002099_3453803036_init()
{
	static char *pe[] = {(void *)Cont_35_0,(void *)Always_36_1};
	xsi_register_didat("work_m_00000000002281002099_3453803036", "isim/TPCPU_I_isim_beh.exe.sim/work/m_00000000002281002099_3453803036.didat");
	xsi_register_executes(pe);
}
