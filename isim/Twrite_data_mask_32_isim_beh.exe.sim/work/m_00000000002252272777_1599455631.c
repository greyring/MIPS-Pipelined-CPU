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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/write_data_mask_32.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 0U};



static void Cont_29_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 255U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 255U);
    t12 = (t0 + 4520);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 255U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t25 = (t0 + 4392);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_30_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 65535U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 65535U);
    t12 = (t0 + 4584);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 65535U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 15);
    t25 = (t0 + 4408);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_33_2(char *t0)
{
    char t4[8];
    char t18[8];
    char t19[8];
    char t20[8];
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
    int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4424);
    *((int *)t2) = 1;
    t3 = (t0 + 3856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 3U);

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t14, 2);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t18, 0, 8);
    t2 = (t18 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t18) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);

LAB16:    t6 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t18, 2, t6, 2);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t15 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t18, 2, t2, 2);
    if (t15 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t16 = (t0 + 1688U);
    t17 = *((char **)t16);
    t16 = (t0 + 2248);
    xsi_vlogvar_assign_value(t16, t17, 0, 0, 16);
    goto LAB15;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 16);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 1528U);
    t14 = *((char **)t7);
    xsi_vlogtype_concat(t18, 16, 16, 2U, t14, 8, t19, 8);
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t18, 0, 0, 16);
    goto LAB15;

LAB11:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 24);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    xsi_vlogtype_concat(t18, 16, 16, 2U, t19, 8, t5, 8);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t18, 0, 0, 16);
    goto LAB15;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    memset(t18, 0, 8);
    t3 = (t18 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t18) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 16);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t12 & 65535U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 65535U);
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t18, 0, 0, 16);
    goto LAB15;

LAB17:    xsi_set_current_line(41, ng0);
    t7 = (t0 + 1688U);
    t14 = *((char **)t7);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t14, 0, 0, 16);
    goto LAB25;

LAB19:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 1528U);
    t14 = *((char **)t7);
    xsi_vlogtype_concat(t19, 16, 16, 2U, t14, 8, t20, 8);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t19, 0, 0, 16);
    goto LAB25;

LAB21:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 8);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 8);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    xsi_vlogtype_concat(t19, 16, 16, 2U, t20, 8, t5, 8);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t19, 0, 0, 16);
    goto LAB25;

LAB23:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t19) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t12 & 65535U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 65535U);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t19, 0, 0, 16);
    goto LAB25;

}

static void Always_48_3(char *t0)
{
    char t4[8];
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
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
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 4440);
    *((int *)t2) = 1;
    t3 = (t0 + 4104);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    xsi_vlogtype_concat(t5, 4, 4, 1U, t7, 4);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    if (t10 != 15U)
        goto LAB7;

LAB6:    if (*((unsigned int *)t6) == 0)
        goto LAB8;

LAB9:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t4);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t0 + 2248);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    xsi_vlogtype_concat(t4, 32, 32, 2U, t12, 16, t6, 16);
    t18 = (t0 + 2088);
    xsi_vlogvar_assign_value(t18, t4, 0, 0, 32);

LAB12:    goto LAB2;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB10:    xsi_set_current_line(49, ng0);
    t18 = (t0 + 1208U);
    t19 = *((char **)t18);
    t18 = (t0 + 2088);
    xsi_vlogvar_assign_value(t18, t19, 0, 0, 32);
    goto LAB12;

}


extern void work_m_00000000002252272777_1599455631_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Cont_30_1,(void *)Always_33_2,(void *)Always_48_3};
	xsi_register_didat("work_m_00000000002252272777_1599455631", "isim/Twrite_data_mask_32_isim_beh.exe.sim/work/m_00000000002252272777_1599455631.didat");
	xsi_register_executes(pe);
}
