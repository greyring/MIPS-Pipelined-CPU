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
    work_m_00000000001504115407_3404167462_init();
    work_m_00000000003814132189_1031770464_init();
    work_m_00000000001504115407_3939534102_init();
    work_m_00000000003814132189_2177206971_init();
    work_m_00000000002319785422_2035480523_init();
    work_m_00000000001758433066_2204071844_init();
    work_m_00000000000129751220_0617755897_init();
    work_m_00000000002359106703_3986261250_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002359106703_3986261250");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}