gui_open_window Wave
gui_sg_create UNICLK_group
gui_list_add_group -id Wave.1 {UNICLK_group}
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.test_phase}
gui_set_radix -radix {ascii} -signals {UNICLK_tb.test_phase}
gui_sg_addsignal -group UNICLK_group {{Input_clocks}} -divider
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.CLK_IN1}
gui_sg_addsignal -group UNICLK_group {{Output_clocks}} -divider
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.dut.clk}
gui_list_expand -id Wave.1 UNICLK_tb.dut.clk
gui_sg_addsignal -group UNICLK_group {{Status_control}} -divider
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.RESET}
gui_sg_addsignal -group UNICLK_group {{Counters}} -divider
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.COUNT}
gui_sg_addsignal -group UNICLK_group {UNICLK_tb.dut.counter}
gui_list_expand -id Wave.1 UNICLK_tb.dut.counter
gui_zoom -window Wave.1 -full
