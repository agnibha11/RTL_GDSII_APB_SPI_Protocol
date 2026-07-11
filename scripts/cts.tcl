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
set ASAP7_PLATFORM "$openROAD/flow/platforms/asap7"

# Path to your merged combinational library
set LIBERTY "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/LIBERTY/asap7_merged_combo.lib"
if {![file exists $LIBERTY]} {
    error "Liberty not found: $LIBERTY"
}

# Path to the ASAP7 native sequential library
set SEQ_LIB_FILE "$ASAP7_PLATFORM/lib/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib"
if {![file exists $SEQ_LIB_FILE]} {
    error "Sequential Liberty not found: $SEQ_LIB_FILE"
}

# load placed design database
read_db $NETLIST_DIR/placement.odb

# read technology information
read_liberty $LIBERTY
read_liberty $SEQ_LIB_FILE

# load timing constraints
read_sdc $SDC_FILE

# load RC model for placement timing estimations
# used for estimating the delays of the interconnects
source "$openROAD/flow/platforms/asap7/setRC.tcl"

set_routing_layers -signal M1-M7 -clock M4-M7

# removes unnecessary inverter pairs and chains to 
repair_clock_inverters

# Clock Tree Synthesis
clock_tree_synthesis \
    -sink_clustering_enable \
    -repair_clock_nets \
    -buf_list {BUFx2_ASAP7_75t_R BUFx4_ASAP7_75t_R BUFx8_ASAP7_75t_R}

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

save_image "$REPORT_DIR/images/cts.png"
