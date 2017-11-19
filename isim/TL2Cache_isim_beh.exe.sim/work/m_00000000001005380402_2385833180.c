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
static const char *ng0 = "F:/MyProgramme/0arch/PCPU/TL2Cache.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {0, 0, 0, 0, 0, 0, 0, 0};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {16368U, 0U};
static unsigned int ng6[] = {262143U, 0U};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {4294967280U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {1145324612U, 0U, 858993459U, 0U, 572662306U, 0U, 286331153U, 0U};
static unsigned int ng11[] = {0U, 0U};
static unsigned int ng12[] = {4294967264U, 0U};
static unsigned int ng13[] = {2290649224U, 0U, 2004318071U, 0U, 1717986918U, 0U, 1431655765U, 0U};
static unsigned int ng14[] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};
static unsigned int ng15[] = {286392288U, 0U};
static unsigned int ng16[] = {3435973836U, 0U, 3149642683U, 0U, 2863311530U, 0U, 2576980377U, 0U};
static unsigned int ng17[] = {286331153U, 0U, 572662306U, 0U, 858993459U, 0U, 1145324612U, 0U};
static unsigned int ng18[] = {572719072U, 0U};
static unsigned int ng19[] = {1431655765U, 0U, 1717986918U, 0U, 2004318071U, 0U, 2290649224U, 0U};
static unsigned int ng20[] = {859045856U, 0U};



static void Initial_85_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 6048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);

LAB4:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 4328);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(115, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(116, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(117, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 4328);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 7);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(121, ng0);
    t5 = (t0 + 5856);
    xsi_process_wait(t5, 5000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(122, ng0);
    t6 = ((char*)((ng7)));
    t7 = (t0 + 4648);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 6000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4648);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 9000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4008);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(131, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(135, ng0);
    t4 = ((char*)((ng11)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(138, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(139, ng0);
    t5 = (t0 + 5856);
    xsi_process_wait(t5, 5000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(140, ng0);
    t6 = ((char*)((ng7)));
    t7 = (t0 + 4648);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 6000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(143, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4648);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 9000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(145, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(153, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(154, ng0);
    t5 = ((char*)((ng11)));
    t6 = (t0 + 4008);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(156, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(157, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(158, ng0);
    t5 = ((char*)((ng11)));
    t6 = (t0 + 3528);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(162, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(163, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(164, ng0);
    t5 = (t0 + 5856);
    xsi_process_wait(t5, 10000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(165, ng0);
    t6 = ((char*)((ng7)));
    t7 = (t0 + 4648);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(166, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB36:    xsi_set_current_line(167, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4648);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(169, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4648);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(171, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 6000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB38:    xsi_set_current_line(172, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4648);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 9000LL);
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB39:    xsi_set_current_line(174, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(178, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    xsi_set_current_line(179, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB41:    xsi_set_current_line(180, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB42:    xsi_set_current_line(181, ng0);
    t5 = ((char*)((ng7)));
    t6 = (t0 + 3528);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(184, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB43:    xsi_set_current_line(185, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    xsi_set_current_line(186, ng0);
    t4 = (t0 + 5856);
    xsi_process_wait(t4, 10000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB45:    xsi_set_current_line(187, ng0);
    t5 = ((char*)((ng7)));
    t6 = (t0 + 4648);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(188, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB46:    xsi_set_current_line(189, ng0);
    t3 = (t0 + 5856);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB47:    xsi_set_current_line(190, ng0);
    t4 = ((char*)((ng11)));
    t5 = (t0 + 3528);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(192, ng0);
    t2 = (t0 + 5856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB48:    xsi_set_current_line(193, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 4328);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 128);
    goto LAB1;

}

static void Always_202_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 6296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(202, ng0);
    t2 = (t0 + 6616);
    *((int *)t2) = 1;
    t3 = (t0 + 6328);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(203, ng0);
    t4 = (t0 + 6104);
    xsi_process_wait(t4, 5000LL);
    *((char **)t1) = &&LAB5;
    goto LAB1;

LAB5:    xsi_set_current_line(204, ng0);
    t6 = (t0 + 3048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t9) == 0)
        goto LAB6;

LAB8:    t15 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t15) = 1;

LAB9:    t16 = (t5 + 4);
    t17 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = (~(t18));
    *((unsigned int *)t5) = t19;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB11;

LAB10:    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 1U);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t25 & 1U);
    t26 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t26, t5, 0, 0, 1, 0LL);
    goto LAB2;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB9;

LAB11:    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t5) = (t20 | t21);
    t22 = *((unsigned int *)t16);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t22 | t23);
    goto LAB10;

}


extern void work_m_00000000001005380402_2385833180_init()
{
	static char *pe[] = {(void *)Initial_85_0,(void *)Always_202_1};
	xsi_register_didat("work_m_00000000001005380402_2385833180", "isim/TL2Cache_isim_beh.exe.sim/work/m_00000000001005380402_2385833180.didat");
	xsi_register_executes(pe);
}
