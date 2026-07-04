############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 03-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"

# constraints
set SDC_FILE \
"$CONSTRAINTS_DIR/constraints.sdc"

set LIBERTY \
"$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
# standard cell timing and power library
if {![file exists $LIBERTY]} {
    error "Liberty LEF not found: $LIBERTY"
}

# load CTS database
read_db $NETLIST_DIR/cts.odb

# read technology timing library
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for routing timing estimation
source "$openROAD/flow/platforms/sky130hd/setRC.tcl"

# Check standard cell pin accessibility before routing
pin_access

# Global Routing
global_route \
    -congestion_iterations 50 \
    -allow_congestion
# allow congestion produces the best routing solution possible even if some congestions remain

# openSTA now replaces the IDEAL clock with actual clock network
set_propagated_clock [all_clocks]

# Estimane interconnect parasitics
estimate_parasitics -global_routing

# Repair the DRVs after global routing
repair_design

# Incremental global routing after design repair
global_route -start_incremental

detailed_placement

global_route -end_incremental
# this only reroutes the nets affected by the repairs, not the entire chip

# repair timing after global routing
repair_timing \
    -match_cell_footprint \
    -verbose


# incremental global routing after timing repair
global_route -start_incremental

detailed_placement

check_placement -verbose

global_route -end_incremental

# incremental global route after power recovery
global_route -start_incremental

# recover power while preserving timing
repair_timing \
    -recover_power 100 \
    -match_cell_footprint \
    -verbose
# recover power will replace a high-drive buffer to smaller one with better timing if possible
# thus reducing dynamic power, leakage power and cell area without violating timing

global_route -end_incremental

# repair antannea violations
repair_antennas
# in Sky130, this is done by inserting jumpers (vias) to reduce antenna ratio = (metal / gate) area
puts "ANTENNA REPORT"
check_antennas

# update RC after antenna repair
estimate_parasitics -global_routing

# Global Routing Timing reports
puts "ROUTING REPORTS"
report_wns
report_tns
report_wire_length -global_route -summary
report_checks
puts "FLOATING NETS REPORT"
report_floating_nets -verbose
report_design_area

# Save the Global Route database
write_guides $NETLIST_DIR/spi_top.route_guide

write_db $NETLIST_DIR/global_route.odb
write_def $NETLIST_DIR/spi_top_global_route.def

save_image "$REPORT_DIR/global_route.png"