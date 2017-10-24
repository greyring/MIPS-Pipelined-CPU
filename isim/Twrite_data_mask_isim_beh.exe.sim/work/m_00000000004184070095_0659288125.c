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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/write_data_mask.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 0U};



static void Always_55_0(char *t0)
{
    char t7[32];
    char t8[24];
    char t12[16];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t9;
    char *t10;
    char *t11;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(57, ng0);
    t9 = (t0 + 1528U);
    t10 = *((char **)t9);
    xsi_vlog_get_part_select_value(t8, 96, t10, 95, 0);
    t9 = (t0 + 1688U);
    t11 = *((char **)t9);
    xsi_vlogtype_concat(t7, 128, 128, 2U, t11, 32, t8, 96);
    t9 = (t0 + 2568);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 128);
    goto LAB15;

LAB9:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    xsi_vlog_get_part_select_value(t12, 64, t4, 63, 0);
    t3 = (t0 + 1848U);
    t9 = *((char **)t3);
    t3 = (t0 + 1528U);
    t10 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t13 + 4);
    t11 = (t10 + 24);
    t14 = (t10 + 28);
    t15 = *((unsigned int *)t11);
    t16 = (t15 >> 0);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 0);
    *((unsigned int *)t3) = t18;
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t19 & 4294967295U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 4294967295U);
    xsi_vlogtype_concat(t7, 128, 128, 3U, t13, 32, t9, 32, t12, 64);
    t21 = (t0 + 2568);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 128);
    goto LAB15;

LAB11:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t13 + 4);
    t9 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = (t15 >> 0);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 >> 0);
    *((unsigned int *)t3) = t18;
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t19 & 4294967295U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 4294967295U);
    t10 = (t0 + 2008U);
    t11 = *((char **)t10);
    t10 = (t0 + 1528U);
    t14 = *((char **)t10);
    xsi_vlog_get_part_select_value(t12, 64, t14, 127, 64);
    xsi_vlogtype_concat(t7, 128, 128, 3U, t12, 64, t11, 32, t13, 32);
    t10 = (t0 + 2568);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 128);
    goto LAB15;

LAB13:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t9 = *((char **)t3);
    xsi_vlog_get_part_select_value(t8, 96, t9, 127, 32);
    xsi_vlogtype_concat(t7, 128, 128, 2U, t8, 96, t4, 32);
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 128);
    goto LAB15;

}


extern void work_m_00000000004184070095_0659288125_init()
{
	static char *pe[] = {(void *)Always_55_0};
	xsi_register_didat("work_m_00000000004184070095_0659288125", "isim/Twrite_data_mask_isim_beh.exe.sim/work/m_00000000004184070095_0659288125.didat");
	xsi_register_executes(pe);
}
