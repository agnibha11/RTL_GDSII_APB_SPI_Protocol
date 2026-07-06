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

set LIBERTY \
"$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
# standard cell timing and power library
if {![file exists $LIBERTY]} {
    error "Liberty LEF not found: $LIBERTY"
}

# load Global route database
read_db $NETLIST_DIR/global_route.odb

# read technology timing library
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for route timing constraints
source "$openROAD/flow/platforms/sky130hd/setRC.tcl"

# After CTS, the clock tree is physically built, so it has timings
set_propagated_clock [all_clocks]

# Restrict signal routing to met1-met5, and clock routing to met3-met5
set_routing_layers -signal met1-met5 -clock met3-met5

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

# repair antenna violations
if { [repair_antennas] } {
    puts "RE-RUN Detailed Routing after Antenna Repair"

    # Restrict signal routing to met1-met5, and clock routing to met3-met5
    set_routing_layers -signal met1-met5 -clock met3-met5

    detailed_route \
        -output_drc "$REPORT_DIR/detail_route_drc.rpt" \
        -output_maze "$REPORT_DIR/detailed_route_maze.log" \
        -output_guide_coverage "$REPORT_DIR/guide_coverage.rpt" \
        -droute_end_iter 100 \
        -clean_patches \
        -verbose 1
}

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
