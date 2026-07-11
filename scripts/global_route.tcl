############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 03-07-2026
# 
# Changes:
#  -  Added congestion report after final routing  -  04-07-2026
#  -  Restrict signal routing to met1-met5, and clock routing to met3-met5  -  06-07-2026
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

set ASAP7_PLATFORM "$openROAD/flow/platforms/asap7"

set LIBERTY "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/LIBERTY/asap7_merged_combo.lib"
set SEQ_LIB_FILE "$ASAP7_PLATFORM/lib/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib"

if {![file exists $LIBERTY]} { error "Merged Liberty not found: $LIBERTY" }
if {![file exists $SEQ_LIB_FILE]} { error "SEQ Liberty not found: $SEQ_LIB_FILE" }

# load CTS database
read_db $NETLIST_DIR/cts.odb

# read technology timing library
read_liberty $SEQ_LIB_FILE
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for routing timing estimation
source "$openROAD/flow/platforms/asap7/setRC.tcl"

# Check standard cell pin accessibility before routing
pin_access

# Restrict signal routing to met1-met7, and clock routing to met4-met7
set_routing_layers -signal M1-M7 -clock M4-M7

# Global Routing
global_route \
    -congestion_iterations 50 \
    -allow_congestion \
    -congestion_report_file "$REPORT_DIR/global_route_congestion.rpt"
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

repair_antennas -diode_only

# ASAP7, this is done by inserting antenna diodes
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

save_image "$REPORT_DIR/images/global_route.png"