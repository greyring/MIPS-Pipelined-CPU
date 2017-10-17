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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000319516669_1339653946_init();
    work_m_00000000000319516669_4272063529_init();
    work_m_00000000000319516669_0584011245_init();
    work_m_00000000000319516669_1693723897_init();
    work_m_00000000002434304497_0810360663_init();
    work_m_00000000001391859162_2514059689_init();
    work_m_00000000003132483103_1854482684_init();
    work_m_00000000001802728545_2846355707_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001802728545_2846355707");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
