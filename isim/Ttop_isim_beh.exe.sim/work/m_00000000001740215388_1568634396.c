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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/vga_controller.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Always_66_0(char *t0)
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

LAB0:    t1 = (t0 + 8400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 9464);
    *((int *)t2) = 1;
    t3 = (t0 + 8432);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 2440U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 7320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);
    t11 = (t0 + 4520U);
    t12 = *((char **)t11);
    t11 = (t0 + 7320);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Cont_72_1(char *t0)
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

LAB0:    t1 = (t0 + 8648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9592);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 9480);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_118_2(char *t0)
{
    char t4[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t19;
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
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 8896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 9496);
    *((int *)t2) = 1;
    t3 = (t0 + 8928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);

LAB5:    xsi_set_current_line(119, ng0);
    t5 = (t0 + 7320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 3U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 3U);
    t16 = ((char*)((ng1)));
    memset(t17, 0, 8);
    t18 = (t4 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB9;

LAB6:    if (t29 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t17) = 1;

LAB9:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 7320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 3U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 3U);
    t8 = ((char*)((ng2)));
    memset(t17, 0, 8);
    t9 = (t4 + 4);
    t16 = (t8 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t8);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t16);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t16);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB20;

LAB17:    if (t29 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t17) = 1;

LAB20:    t19 = (t17 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);

LAB23:
LAB12:    goto LAB2;

LAB8:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(119, ng0);

LAB13:    xsi_set_current_line(120, ng0);
    t39 = (t0 + 6440U);
    t40 = *((char **)t39);
    t39 = (t40 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (~(t41));
    t43 = *((unsigned int *)t40);
    t44 = (t43 & t42);
    t45 = (t44 != 0);
    if (t45 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6120U);
    t3 = *((char **)t2);
    t2 = (t0 + 7480);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 12);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(121, ng0);
    t46 = (t0 + 6280U);
    t47 = *((char **)t46);
    t46 = (t0 + 7480);
    xsi_vlogvar_assign_value(t46, t47, 0, 0, 12);
    goto LAB16;

LAB19:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(125, ng0);

LAB24:    xsi_set_current_line(126, ng0);
    t32 = (t0 + 6600U);
    t33 = *((char **)t32);
    t32 = (t0 + 7480);
    xsi_vlogvar_assign_value(t32, t33, 0, 0, 12);
    goto LAB23;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 9144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3720U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t14 = (t0 + 7320);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t13 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 16);
    *((unsigned int *)t13) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 16);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t23 & 65535U);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 & 65535U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 16, t4, 16);
    t25 = (t0 + 9656);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t3, 8);
    xsi_driver_vfirst_trans(t25, 0, 31);
    t30 = (t0 + 9512);
    *((int *)t30) = 1;

LAB1:    return;
}


extern void work_m_00000000001740215388_1568634396_init()
{
	static char *pe[] = {(void *)Always_66_0,(void *)Cont_72_1,(void *)Always_118_2,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000001740215388_1568634396", "isim/Ttop_isim_beh.exe.sim/work/m_00000000001740215388_1568634396.didat");
	xsi_register_executes(pe);
}
