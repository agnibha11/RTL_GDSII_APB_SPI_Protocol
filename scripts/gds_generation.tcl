############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 04-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"
set SCRIPT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/scripts"

# KLayout files
set KLAYOUT_SCRIPT "$openROAD/flow/util/def2stream.py"

set KLAYOUT_TECH "$openROAD/flow/platforms/sky130hd/sky130hd.lyt"

# Standard-cell GDS library
set STD_CELL_GDS "$openROAD/flow/platforms/sky130hd/gds/sky130_fd_sc_hd.gds"

# Final GDS output
set GDS_FILE \
"$NETLIST_DIR/GDSII/spi_top.gds"

# constraints
set SDC_FILE \
"$CONSTRAINTS_DIR/constraints.sdc"

set LIBERTY \
"$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
# standard cell timing and power library
if {![file exists $LIBERTY]} {
    error "Liberty LEF not found: $LIBERTY"
}

# Load the final Physical Signoff database
read_db $NETLIST_DIR/physical_signoff.odb

# read technology timing library
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for route timing constraints
source "$openROAD/flow/platforms/sky130hd/setRC.tcl"

puts "FINAL DATABASE VERIFICATION"

check_placement

puts "Placement database verified."

puts "WRITING FINAL DEF FOR GDS STREAM-OUT"

write_def \
    $NETLIST_DIR/spi_final.def

write_verilog $NETLIST_DIR/spi_top_final.v

puts "GENERATING FINAL GDSII"

set KLAYOUT_CMD "/usr/bin/klayout"

set cmd [list \
    $KLAYOUT_CMD \
    -zz \
    -rd "tech_file=$KLAYOUT_TECH" \
    -rd "layer_map=" \
    -rd "in_def=$NETLIST_DIR/spi_final.def" \
    -rd "design_name=$DESIGN_NAME" \
    -rd "in_files=$STD_CELL_GDS" \
    -rd "seal_file=" \
    -rd "out_file=$GDS_FILE" \
    -rm $KLAYOUT_SCRIPT]


set result [exec {*}$cmd]

if {![file exists $GDS_FILE]} {
    error "GDS generation failed."
}

puts "FINAL GDS GENERATED SUCCESSFULLY"