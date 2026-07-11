############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 04-07-2026
# Changes
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
# load Global route database
read_db $NETLIST_DIR/global_route.odb

# read technology timing library
read_liberty $SEQ_LIB_FILE
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for route timing constraints
source "$openROAD/flow/platforms/asap7/setRC.tcl"

# After CTS, the clock tree is physically built, so it has timings
set_propagated_clock [all_clocks]

# Restrict signal routing to met1-met7, and clock routing to met4-met7
set_routing_layers -signal M1-M7 -clock M4-M7

# Detailed routing
detailed_route \
    -output_drc "$REPORT_DIR/detail_route_drc.rpt" \
    -output_maze "$REPORT_DIR/detailed_route_maze.log" \
    -output_guide_coverage "$REPORT_DIR/guide_coverage.rpt" \
    -droute_end_iter 100 \
    -clean_patches \
    -verbose 1
# writes all DRC violations found
# writes the maze-routing log
# guide tells us how well TritonRoute followed the global routing guides


# Verify design is fully routed
if { ![design_is_routed] } {
    error "Design contains unrouted nets after detailed routing"
}

puts "DETAILED ROUTING REPORTS"
report_design_area 
check_antennas
report_wire_length -detailed_route -summary
report_checks
report_wns
report_tns

# Save the Detailed Route database
write_guides $NETLIST_DIR/spi_top.route_guide

write_db $NETLIST_DIR/detailed_route.odb
write_def $NETLIST_DIR/spi_top_detailed_route.def

save_image "$REPORT_DIR/images/detailed_route.png"
