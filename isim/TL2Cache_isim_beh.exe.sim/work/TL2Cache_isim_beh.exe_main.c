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
    work_m_00000000000319516669_0010322642_init();
    work_m_00000000000319516669_1502550321_init();
    work_m_00000000000319516669_1583654968_init();
    work_m_00000000001954675477_1694710997_init();
    work_m_00000000002264009307_3902168756_init();
    work_m_00000000001005380402_2385833180_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001005380402_2385833180");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
