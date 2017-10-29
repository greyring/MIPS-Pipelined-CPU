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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/Taddr_decoder.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {268435455U, 0U};
static unsigned int ng3[] = {268435456U, 0U};
static unsigned int ng4[] = {268435460U, 0U};
static unsigned int ng5[] = {268443648U, 0U};
static unsigned int ng6[] = {268451839U, 0U};
static unsigned int ng7[] = {268500992U, 0U};
static unsigned int ng8[] = {268566527U, 0U};
static unsigned int ng9[] = {532676608U, 0U};
static unsigned int ng10[] = {536870911U, 0U};
static unsigned int ng11[] = {536870912U, 0U};
static unsigned int ng12[] = {4294967295U, 0U};
static unsigned int ng13[] = {0U, 0U};



static void Initial_51_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    goto LAB1;

}


extern void work_m_00000000003324520208_0619882158_init()
{
	static char *pe[] = {(void *)Initial_51_0};
	xsi_register_didat("work_m_00000000003324520208_0619882158", "isim/Taddr_decoder_isim_beh.exe.sim/work/m_00000000003324520208_0619882158.didat");
	xsi_register_executes(pe);
}
