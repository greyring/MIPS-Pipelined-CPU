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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/Cause.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};



static void Always_37_0(char *t0)
{
    char t13[8];
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
    unsigned int t19;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 5688);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
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

LAB7:    xsi_set_current_line(39, ng0);
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

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t11);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t4) = t19;
    t12 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 1, 0LL);
    goto LAB11;

}

static void Always_44_1(char *t0)
{
    char t13[8];
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
    unsigned int t19;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5704);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
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

LAB7:    xsi_set_current_line(46, ng0);
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

LAB10:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 23);
    t16 = (t15 & 1);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t11);
    t18 = (t17 >> 23);
    t19 = (t18 & 1);
    *((unsigned int *)t4) = t19;
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 1, 0LL);
    goto LAB11;

}

static void Always_51_2(char *t0)
{
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

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5720);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);

LAB5:    xsi_set_current_line(52, ng0);
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
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(52, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 5, 0LL);
    goto LAB8;

}

static void Always_57_3(char *t0)
{
    char t13[8];
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
    unsigned int t19;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5736);
    *((int *)t2) = 1;
    t3 = (t0 + 4904);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
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

LAB7:    xsi_set_current_line(59, ng0);
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

LAB10:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(58, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 8);
    *((unsigned int *)t13) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 8);
    *((unsigned int *)t4) = t17;
    t18 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t18 & 3U);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 3U);
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 2, 0LL);
    goto LAB11;

}

static void Always_64_4(char *t0)
{
    char t13[8];
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
    unsigned int t19;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5752);
    *((int *)t2) = 1;
    t3 = (t0 + 5152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
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

LAB7:    xsi_set_current_line(66, ng0);
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

LAB10:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 5, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 2);
    *((unsigned int *)t13) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 2);
    *((unsigned int *)t4) = t17;
    t18 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t18 & 31U);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 31U);
    t12 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t12, t13, 0, 0, 5, 0LL);
    goto LAB11;

}

static void Cont_70_5(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
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

LAB0:    t1 = (t0 + 5368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 3048);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t0 + 2888);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 2728);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 2568);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlogtype_concat(t3, 32, 31, 9U, t21, 1, t18, 7, t17, 1, t14, 7, t13, 5, t10, 2, t7, 1, t6, 5, t2, 2);
    t22 = (t0 + 5848);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t3, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 5768);
    *((int *)t27) = 1;

LAB1:    return;
}


extern void work_m_00000000002006194680_1071196374_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Always_44_1,(void *)Always_51_2,(void *)Always_57_3,(void *)Always_64_4,(void *)Cont_70_5};
	xsi_register_didat("work_m_00000000002006194680_1071196374", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002006194680_1071196374.didat");
	xsi_register_executes(pe);
}
