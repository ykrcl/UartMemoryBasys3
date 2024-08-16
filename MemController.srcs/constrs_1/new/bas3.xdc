set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports reset]

set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports rx_in]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports tx_out]


set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {buffer_ptr[0]}]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {buffer_ptr[1]}]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {buffer_ptr[2]}]

set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {state[0]}]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {state[1]}]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports {state[2]}]