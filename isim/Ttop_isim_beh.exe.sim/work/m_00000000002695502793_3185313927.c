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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/MIO.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {268435455U, 268435455U};
static unsigned int ng4[] = {3103784959U, 16777215U};
static unsigned int ng5[] = {2969567232U, 0U};
static unsigned int ng6[] = {2952790015U, 268435455U};
static unsigned int ng7[] = {2952790016U, 0U};
static unsigned int ng8[] = {4026531839U, 268435455U};
static unsigned int ng9[] = {4294967295U, 268435455U};
static unsigned int ng10[] = {63U, 31U};
static unsigned int ng11[] = {63U, 47U};
static unsigned int ng12[] = {63U, 55U};
static unsigned int ng13[] = {63U, 59U};
static unsigned int ng14[] = {63U, 61U};
static unsigned int ng15[] = {63U, 62U};



static void Always_65_0(char *t0)
{
    char t6[8];
    char t16[8];
    char t37[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
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

LAB0:    t1 = (t0 + 8128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 8448);
    *((int *)t2) = 1;
    t3 = (t0 + 8160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4488);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 13);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 19);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 4294967295U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4294967295U);

LAB6:    t5 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t5, 32);
    if (t13 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_xcompare(t6, 32, t2, 32);
    if (t13 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(137, ng0);

LAB36:    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 4808);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 4648);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB23:    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7048);
    t14 = (t5 + 56U);
    t15 = *((char **)t14);
    t22 = (t0 + 6568);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t0 + 6888);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 6728);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 6408);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlogtype_concat(t16, 6, 6, 6U, t33, 1, t30, 1, t27, 1, t24, 1, t15, 1, t4, 1);

LAB37:    t34 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t34, 6);
    if (t13 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng11)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t2, 6);
    if (t13 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t2, 6);
    if (t13 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng13)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t2, 6);
    if (t13 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng14)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t2, 6);
    if (t13 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng15)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 6, t2, 6);
    if (t13 == 1)
        goto LAB48;

LAB49:
LAB51:
LAB50:    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB52:    goto LAB2;

LAB7:    xsi_set_current_line(87, ng0);

LAB24:    xsi_set_current_line(88, ng0);
    t14 = (t0 + 1688U);
    t15 = *((char **)t14);
    t14 = (t0 + 4488);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 1023U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 1023U);
    t5 = (t0 + 4328);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 10);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 6408);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB23;

LAB9:    xsi_set_current_line(94, ng0);

LAB25:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 8191U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 8191U);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 13);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(100, ng0);

LAB26:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 7208);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB23;

LAB13:    xsi_set_current_line(106, ng0);

LAB27:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 524287U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 524287U);
    t5 = (t0 + 5448);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 19);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(112, ng0);

LAB28:    xsi_set_current_line(113, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 7048);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB23;

LAB17:    xsi_set_current_line(118, ng0);

LAB29:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 6728);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB23;

LAB19:    xsi_set_current_line(124, ng0);

LAB30:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    t9 = (t8 & 1);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 2);
    t12 = (t11 & 1);
    *((unsigned int *)t3) = t12;
    t14 = (t16 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(130, ng0);

LAB35:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 6568);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);

LAB33:    goto LAB23;

LAB31:    xsi_set_current_line(125, ng0);

LAB34:    xsi_set_current_line(126, ng0);
    t15 = (t0 + 1688U);
    t22 = *((char **)t15);
    t15 = (t0 + 6088);
    xsi_vlogvar_assign_value(t15, t22, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 6888);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB33;

LAB38:    xsi_set_current_line(149, ng0);
    t35 = (t0 + 2328U);
    t36 = *((char **)t35);
    t35 = (t0 + 4008);
    xsi_vlogvar_assign_value(t35, t36, 0, 0, 32);
    goto LAB52;

LAB40:    xsi_set_current_line(150, ng0);
    t3 = (t0 + 2648U);
    t4 = *((char **)t3);
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB52;

LAB42:    xsi_set_current_line(151, ng0);
    t3 = (t0 + 2648U);
    t4 = *((char **)t3);
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB52;

LAB44:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    memset(t38, 0, 8);
    t3 = (t38 + 4);
    t14 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t38) = t8;
    t9 = *((unsigned int *)t14);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t11 & 8191U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 8191U);
    t15 = ((char*)((ng2)));
    t22 = (t0 + 2808U);
    t23 = *((char **)t22);
    xsi_vlogtype_concat(t37, 32, 32, 4U, t23, 1, t15, 2, t38, 13, t4, 16);
    t22 = (t0 + 4008);
    xsi_vlogvar_assign_value(t22, t37, 0, 0, 32);
    goto LAB52;

LAB46:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 3288U);
    t4 = *((char **)t3);
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB52;

LAB48:    xsi_set_current_line(155, ng0);
    t3 = (t0 + 3448U);
    t4 = *((char **)t3);
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB52;

}


extern void work_m_00000000002695502793_3185313927_init()
{
	static char *pe[] = {(void *)Always_65_0};
	xsi_register_didat("work_m_00000000002695502793_3185313927", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002695502793_3185313927.didat");
	xsi_register_executes(pe);
}
