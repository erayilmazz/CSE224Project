create_clock [get_ports clk] -name core_clock -period 10
set_input_delay 1 -clock core_clock [get_ports step]
set_input_delay 1 -clock core_clock [get_ports reset]
set_output_delay 1 -clock core_clock [get_ports result*]