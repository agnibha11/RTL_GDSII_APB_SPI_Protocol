############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 04-07-2026
# Changes
# - Migrated from Sky130 to ASAP7  -  12-07-2026
# - Switched from Magic to KLayout for ASAP7 GDS streamout  -  12-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"
set SCRIPT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/scripts"

# ASAP7 Paths
set ASAP7_PLATFORM "$openROAD/flow/platforms/asap7"
set TECH_LEF "$ASAP7_PLATFORM/lef/asap7_tech_1x_201209.lef"
set SC_LEF "$ASAP7_PLATFORM/lef/asap7sc7p5t_28_R_1x_220121a.lef"
set STD_CELL_GDS "$ASAP7_PLATFORM/gds/asap7sc7p5t_28_R_220121a.gds"

# Inputs and Outputs
set DEF_FILE "$NETLIST_DIR/spi_physical_signoff.def"
set GDS_FILE "$NETLIST_DIR/GDSII/${DESIGN_NAME}.gds"
# 1. Create a KLayout Python Streamout Script
set KLAYOUT_STREAMOUT_SCRIPT "$SCRIPT_DIR/klayout_streamout.py"
set klayout_fd [open $KLAYOUT_STREAMOUT_SCRIPT w]

puts $klayout_fd "import pya"
puts $klayout_fd "import os"
puts $klayout_fd ""
puts $klayout_fd "layout = pya.Layout()"
puts $klayout_fd ""
puts $klayout_fd "# Read the standard cell GDS first so the cell geometries exist in memory"
puts $klayout_fd "layout.read(os.environ.get('STD_CELL_GDS'))"
puts $klayout_fd ""
puts $klayout_fd "# Load LEF files into the layout options so KLayout understands DEF vias and macros"
puts $klayout_fd "opt = pya.LoadLayoutOptions()"
puts $klayout_fd "opt.lefdef_config.lef_files = \[os.environ.get('TECH_LEF'), os.environ.get('SC_LEF')\]"
puts $klayout_fd ""
puts $klayout_fd "# Read the DEF file. KLayout maps DEF components to existing GDS cells."
puts $klayout_fd "layout.read(os.environ.get('DEF_FILE'), opt)"
puts $klayout_fd ""
puts $klayout_fd "# Write the final layout to GDS"
puts $klayout_fd "layout.write(os.environ.get('GDS_FILE'))"
puts $klayout_fd "print('GDS Streamout completed by KLayout!')"

close $klayout_fd

# 2. Pass variables to KLayout via the environment
set env(STD_CELL_GDS) $STD_CELL_GDS
set env(DEF_FILE) $DEF_FILE
set env(GDS_FILE) $GDS_FILE
set env(TECH_LEF) $TECH_LEF
set env(SC_LEF) $SC_LEF

puts "Running KLayout in the background to merge GDS. This might take a minute..."

# 3. Execute KLayout in batch mode without a GUI
set klayout_status [catch {exec klayout -b -zz -r $KLAYOUT_STREAMOUT_SCRIPT} klayout_output]

puts "--- KLAYOUT CONSOLE OUTPUT ---"
puts $klayout_output
puts "------------------------------"

# 4. Verify the GDS was generated
if {[file exists $GDS_FILE]} {
    puts "SUCCESS: Final GDS generated successfully at $GDS_FILE"
} else {
    error "CRITICAL ERROR: KLayout failed to generate the GDS."
}