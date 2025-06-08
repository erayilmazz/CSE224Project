set_units -time ns
create_clock [get_ports clk] -name core_clock -period 10
set_clock_uncertainty 0.5 [get_clocks core_clock]