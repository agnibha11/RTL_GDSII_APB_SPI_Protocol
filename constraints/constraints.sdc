############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 01-06-2026
############################################################

set_units -time ns

# primary clock name
set clk_name APB_CLK

# clock input port name
set clk_port_name PCLK

# target clock period (ns)
set clk_period 5.0 

# ip/op delay set to 20% of clock period
set clk_io_pct 0.20
# these are inputs and output from the SPI chip

# fetch clock port from top level
set clk_port [get_ports $clk_port_name]

# primary clock creation
create_clock \
    -name $clk_name \
    -period $clk_period \
    $clk_port

# virtual clock for I/O timing constraints
set clk_io_name vclk_$clk_name
# this is the timing reference for the externam block of SPI block

# virtual clock creation
create_clock \
    -name $clk_io_name \
    -period $clk_period
# no port needed for this

# clock latency
set_clock_latency 0.2 [get_clocks $clk_name]
set_clock_latency 0.2 [get_clocks $clk_io_name]

# collect all non-clock inputs
set non_clock_inputs [list]
foreach input [all_inputs] {
    if{$input != $clk_port} {
        lappend non_clock_inputs $input
    }
}

# apply input delay constrains
# all nonclock signals must arrive after 20% of virtual signal (hold time)
set_input_delay \
    [expr $clk_period * $clk_io_pct] \
    -clock $clk_io_name \
    $non_clock_inputs

# apply output delay constraints
# all outputs become valid within 20% of virtual clock before the edge (setup time)
set_output_delay \
    [expr $clk_period * $clk_io_pct] \
    -clock $clk_io_name \
    [all_outputs]