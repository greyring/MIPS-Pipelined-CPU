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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/Decoder.v";
static unsigned int ng1[] = {65535U, 32767U};
static unsigned int ng2[] = {15U, 0U};
static unsigned int ng3[] = {32767U, 16383U};
static unsigned int ng4[] = {14U, 0U};
static unsigned int ng5[] = {16383U, 8191U};
static unsigned int ng6[] = {13U, 0U};
static unsigned int ng7[] = {8191U, 4095U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {4095U, 2047U};
static unsigned int ng10[] = {11U, 0U};
static unsigned int ng11[] = {2047U, 1023U};
static unsigned int ng12[] = {10U, 0U};
static unsigned int ng13[] = {1023U, 511U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {511U, 255U};
static unsigned int ng16[] = {8U, 0U};
static unsigned int ng17[] = {255U, 127U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {127U, 63U};
static unsigned int ng20[] = {6U, 0U};
static unsigned int ng21[] = {63U, 31U};
static unsigned int ng22[] = {5U, 0U};
static unsigned int ng23[] = {31U, 15U};
static unsigned int ng24[] = {4U, 0U};
static unsigned int ng25[] = {15U, 7U};
static unsigned int ng26[] = {3U, 0U};
static unsigned int ng27[] = {7U, 3U};
static unsigned int ng28[] = {2U, 0U};
static unsigned int ng29[] = {3U, 1U};
static unsigned int ng30[] = {1U, 0U};
static unsigned int ng31[] = {0U, 0U};



static void Always_25_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB5:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t4, 16);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(27, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1448);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB41;

LAB9:    xsi_set_current_line(28, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB11:    xsi_set_current_line(29, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB13:    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB15:    xsi_set_current_line(31, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB17:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB19:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB21:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB23:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB25:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB27:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB29:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB31:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB33:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB35:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB37:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng31)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

}


extern void work_m_00000000002319785422_2035480523_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000002319785422_2035480523", "isim/Ttop_isim_beh.exe.sim/work/m_00000000002319785422_2035480523.didat");
	xsi_register_executes(pe);
}
