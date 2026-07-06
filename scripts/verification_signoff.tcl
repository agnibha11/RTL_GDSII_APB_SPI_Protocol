############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 05-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"
set SCRIPT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/scripts"

# Magic DRC files
#set MAGIC_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/verification/magic"
set env(PDK_ROOT) "/media/agnibha/One/PDK/share/pdk"
set MAGIC_RC \
"$::env(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc"
set GDS_FILE "$NETLIST_DIR/GDSII/spi_top.gds"
set DRC_REPORT "$REPORT_DIR/magic_drc_log.rpt"

if {![file exists $MAGIC_RC]} {
    error "Magic startup file not found: $MAGIC_RC"
}

if {![file exists $GDS_FILE]} {
    error "Final GDS not found: $GDS_FILE"
}

puts "RUNNING MAGIC DRC"

set MAGIC_CMD "magic"

set ::env(GDS_FILE)   $GDS_FILE
set ::env(REPORT_DIR) $REPORT_DIR
set ::env(TOP_CELL)   $DESIGN_NAME
set ::env(PROJECT_ROOT) "$::env(HOME)/Documents/Projects/RTL_GDS_SPI"


if {[catch {
    exec \
        $MAGIC_CMD \
        -rcfile $MAGIC_RC \
        $SCRIPT_DIR/magic_drc.tcl \
        > $DRC_REPORT
} result]} {

    puts $result
    error "Magic DRC failed."

}

puts "MAGIC DRC COMPLETED"