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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/addr_decoder.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {65536U, 0U};
static unsigned int ng5[] = {32769U, 0U};
static unsigned int ng6[] = {4097U, 0U};
static unsigned int ng7[] = {127U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {16U, 0U};
static unsigned int ng10[] = {20U, 0U};



static void Always_46_0(char *t0)
{
    char t11[8];
    char t18[8];
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
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    int t37;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t4, 1, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t4, 2, 0, 1);
    t8 = (t0 + 3048);
    xsi_vlogvar_assign_value(t8, t4, 3, 0, 1);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t4, 4, 0, 1);
    t10 = (t0 + 1448);
    xsi_vlogvar_assign_value(t10, t4, 5, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 28);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 28);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 15U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 15U);
    t5 = ((char*)((ng2)));
    memset(t18, 0, 8);
    t6 = (t11 + 4);
    t7 = (t5 + 4);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t5);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB9;

LAB6:    if (t28 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t18) = 1;

LAB9:    t9 = (t18 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t18);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 12);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 12);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 1048575U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 1048575U);
    t5 = ((char*)((ng4)));
    memset(t18, 0, 8);
    t6 = (t11 + 4);
    t7 = (t5 + 4);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t5);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB16;

LAB13:    if (t28 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t18) = 1;

LAB16:    t9 = (t18 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t18);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 13);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 13);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 524287U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 524287U);
    t5 = ((char*)((ng5)));
    memset(t18, 0, 8);
    t6 = (t11 + 4);
    t7 = (t5 + 4);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t5);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB23;

LAB20:    if (t28 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t18) = 1;

LAB23:    t9 = (t18 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t18);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 16);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 16);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 65535U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 65535U);
    t5 = ((char*)((ng6)));
    memset(t18, 0, 8);
    t6 = (t11 + 4);
    t7 = (t5 + 4);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t5);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB30;

LAB27:    if (t28 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t18) = 1;

LAB30:    t9 = (t18 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t18);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 22);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 22);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 1023U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 1023U);
    t5 = ((char*)((ng7)));
    memset(t18, 0, 8);
    t6 = (t11 + 4);
    t7 = (t5 + 4);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t5);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB37;

LAB34:    if (t28 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t18) = 1;

LAB37:    t9 = (t18 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    t33 = *((unsigned int *)t18);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t18, 0, 8);
    t2 = (t18 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 29);
    *((unsigned int *)t18) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 29);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t16 & 7U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 7U);
    memset(t11, 0, 8);
    t5 = (t18 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t21 = *((unsigned int *)t18);
    t22 = (t21 & t20);
    t23 = (t22 & 7U);
    if (t23 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t5) != 0)
        goto LAB43;

LAB44:    t7 = (t11 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB47:
LAB40:
LAB33:
LAB26:
LAB19:
LAB12:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t2, 3, 0, 1);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t2, 4, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t12 = *((unsigned int *)t5);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB48;

LAB49:
LAB50:    goto LAB2;

LAB8:    t8 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 1448);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB12;

LAB15:    t8 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(50, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 3048);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB19;

LAB22:    t8 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(51, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 2088);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB26;

LAB29:    t8 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(52, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 2248);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB33;

LAB36:    t8 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(53, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 1608);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB40;

LAB41:    *((unsigned int *)t11) = 1;
    goto LAB44;

LAB43:    t6 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(54, ng0);
    t8 = ((char*)((ng3)));
    t9 = (t0 + 2408);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    goto LAB47;

LAB48:    xsi_set_current_line(59, ng0);

LAB51:    xsi_set_current_line(60, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t11, 0, 8);
    t6 = (t11 + 4);
    t8 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t19 = (t17 >> 0);
    *((unsigned int *)t11) = t19;
    t20 = *((unsigned int *)t8);
    t21 = (t20 >> 0);
    *((unsigned int *)t6) = t21;
    t22 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t22 & 4095U);
    t23 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t23 & 4095U);

LAB52:    t9 = ((char*)((ng2)));
    t37 = xsi_vlog_unsigned_case_compare(t11, 12, t9, 12);
    if (t37 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng8)));
    t37 = xsi_vlog_unsigned_case_compare(t11, 12, t2, 12);
    if (t37 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng9)));
    t37 = xsi_vlog_unsigned_case_compare(t11, 12, t2, 12);
    if (t37 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng10)));
    t37 = xsi_vlog_unsigned_case_compare(t11, 12, t2, 12);
    if (t37 == 1)
        goto LAB59;

LAB60:
LAB62:
LAB61:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB63:    goto LAB50;

LAB53:    xsi_set_current_line(61, ng0);
    t10 = ((char*)((ng3)));
    t36 = (t0 + 1768);
    xsi_vlogvar_assign_value(t36, t10, 0, 0, 1);
    goto LAB63;

LAB55:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB63;

LAB57:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB63;

LAB59:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB63;

}


extern void work_m_00000000000369104661_2951206582_init()
{
	static char *pe[] = {(void *)Always_46_0};
	xsi_register_didat("work_m_00000000000369104661_2951206582", "isim/Ttop_isim_beh.exe.sim/work/m_00000000000369104661_2951206582.didat");
	xsi_register_executes(pe);
}
