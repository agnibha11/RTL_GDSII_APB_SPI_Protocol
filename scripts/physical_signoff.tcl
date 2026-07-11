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
set ASAP7_PLATFORM "$openROAD/flow/platforms/asap7"

# constraints
set SDC_FILE "$CONSTRAINTS_DIR/constraints.sdc"

set LIBERTY "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/LIBERTY/asap7_merged_combo.lib"
set SEQ_LIB_FILE "$ASAP7_PLATFORM/lib/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib"

if {![file exists $LIBERTY]} { error "Merged Liberty not found: $LIBERTY" }
if {![file exists $SEQ_LIB_FILE]} { error "SEQ Liberty not found: $SEQ_LIB_FILE" }

# load Global route database
read_db $NETLIST_DIR/detailed_route.odb

# read technology timing library
# read technology timing library
read_liberty $SEQ_LIB_FILE
read_liberty $LIBERTY

# load timing constraints
read_sdc $SDC_FILE

# load RC model for route timing constraints
source "$openROAD/flow/platforms/asap7/setRC.tcl"

# After CTS, the clock tree is physically built, so it has timings
set_propagated_clock [all_clocks]

# Insert filler cells
# they restore N-well/P-well continuity
# complete the VDD/VSS rails
# ensure final std-cell rows are physically valid
filler_placement \
    -prefix FILL \
    -verbose \
    {FILLER*_ASAP7_75t_R}

# verify filler placement for overlapping and legalization and row violations

check_placement
puts "PLACEMENT VERIFICATION AFTER FILLER INSERTION"
# connect power and ground nets
global_connect \
    -force \
    -verbose

puts "PLACEMENT VERIFICATION AFTER METAL FILL"
# final verification after metal fill
check_placement

# Write the final DEF file
puts "Write POST_SIGNOFF database"
write_def $NETLIST_DIR/spi_physical_signoff.def
write_db $NETLIST_DIR/physical_signoff.odb

puts "GENERATING PDNSIM VOLTAGE SOURCE FILE"

exec python3 \
    "$SCRIPT_DIR/generate_pdn_sources.py" \
    "$NETLIST_DIR/spi_physical_signoff.def" \
    "$CONSTRAINTS_DIR/vsrc.loc"

# OpenRCX Parasitics Extraction
extract_parasitics \
    -ext_model_file "$openROAD/flow/platforms/asap7/rcx_patterns.rules"
# write SPEF (Standard Parasitic Exchange Format)
write_spef \
    $NETLIST_DIR/spi_parasitics.spef

# read the SPEF file for STA
read_spef \
    $NETLIST_DIR/spi_parasitics.spef


puts "POST ROUTE POWER REPORT"
report_power \
    -digits 4 \

puts "CHECK POWER GRID"
check_power_grid \
    -net {VDD} \
    -error_file "$REPORT_DIR/power_grid_check_VDD.rpt"

check_power_grid \
    -net {VSS} \
    -error_file "$REPORT_DIR/power_grid_check_VSS.rpt"

puts "IR DROP ANALYSIS"


analyze_power_grid \
    -net VDD \
    -vsrc "$CONSTRAINTS_DIR/vsrc.loc" \
    -source_type STRAPS \
    -voltage_file "$REPORT_DIR/ir_drop_voltage_VDD.rpt" \
    -error_file "$REPORT_DIR/ir_drop_errors_VDD.rpt" \
    -enable_em \
    -em_outfile "$REPORT_DIR/em_report_VDD.rpt"


puts "FINAL PHYSICAL SIGNOFF REPORTS"

report_design_area

report_wire_length \
    -detailed_route \
    -summary

puts "POST ROUTE SETUP TIMING"
# POST ROUTE SETUP TIMING
report_checks \
    -path_delay max \
    -fields {slew cap input_pin net fanout} \
    -digits 4
# max means it will be SETUP timings

puts "POST ROUTE HOLD TIMING"
# POST ROUTE HOLD TIMING
report_checks \
    -path_delay min \
    -fields {slew cap input_pin net fanout} \
    -digits 4
# min means it will be HOLD time

puts "POST ROUTE TIMING REPORTS"
report_wns
report_tns

puts "POWER REPORT"
report_power \
    -digits 4

save_image "$REPORT_DIR/images/physical_signoff.png"