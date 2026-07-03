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

# load placed design database
read_db $NETLIST_DIR/placement.odb

# read technology information
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for placement timing estimations
# used for estimating the delays of the interconnects
source "$openROAD/flow/platforms/sky130hd/setRC.tcl"

# removes unnecessary inverter pairs and chains to 
repair_clock_inverters

# Clock Tree Synthesis
clock_tree_synthesis \
    -sink_clustering_enable \
    -repair_clock_nets \
    -buf_list {sky130_fd_sc_hd__clkbuf_4} \
    -sink_clustering_size 20 \
    -sink_clustering_max_diameter 50

# sink clustering groups nearby FFs and sinks into clusters and drives them
# to lower skew less wirelength, fewer clock buffers, lower clock power
# clock_nets are repaired by reducing capacitances, improving transition times etc.

# estimate interconnect parasitics after CTS
estimate_parasitics -placement

# legalize the clock buffers inserted during CTS
detailed_placement

# Update RC after legalization
estimate_parasitics -placement

# repair timing after CTS
repair_timing \
    -match_cell_footprint \
    -verbose
# replace buffers for ex. with similar buf if they have same footprint
# verbose is for reports

# Update RC after repair
estimate_parasitics -placement

# legalize cells after timing repair
detailed_placement

# verify placement legality
check_placement

# Reports
puts "CTS REPORT"
report_cts

puts "Other reports"
report_wns
report_tns
report_checks \
    -path_delay max \
    -fields {slew cap input_pin net fanout}
report_design_area


# Save the CTS database
write_db $NETLIST_DIR/cts.odb
write_def $NETLIST_DIR/spi_top_cts.def

save_image "$REPORT_DIR/cts.png"
