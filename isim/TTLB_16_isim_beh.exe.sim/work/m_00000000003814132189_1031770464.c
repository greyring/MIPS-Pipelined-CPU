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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/CAM_16.v";



static void Always_49_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 4264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4584);
    *((int *)t2) = 1;
    t3 = (t0 + 4296);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 2944U);
    t5 = *((char **)t4);
    t4 = (t0 + 2904U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2904U);
    t10 = (t9 + 48U);
    t11 = *((char **)t10);
    t12 = (t0 + 1664U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t6, 19, t5, t8, t11, 2, 1, t13, 4, 2);
    t12 = (t0 + 3344);
    xsi_vlogvar_assign_value(t12, t6, 0, 0, 19);
    goto LAB2;

}


extern void work_m_00000000003814132189_1031770464_init()
{
	static char *pe[] = {(void *)Always_49_0};
	xsi_register_didat("work_m_00000000003814132189_1031770464", "isim/TTLB_16_isim_beh.exe.sim/work/m_00000000003814132189_1031770464.didat");
	xsi_register_executes(pe);
}
