############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 04-07-2026
# Changes
# - Switched to Magic for GDS generation to resolve DRVs  -  06-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"
set SCRIPT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/scripts"
set TECH_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd.tlef"
set SC_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd_merged.lef"
set env(PDK_ROOT) "/media/agnibha/One/PDK/share/pdk"

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

puts "GENERATING FINAL GDSII USING MAGIC..."

# 1. Define the absolute path to your Magic tech file
set MAGIC_TECH_FILE "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/magic/sky130A.tech"

# Verify the tech file actually exists before running to avoid silent failures
if {![file exists $MAGIC_TECH_FILE]} {
    error "Critical Error: Magic tech file not found at $MAGIC_TECH_FILE"
}

set TECH_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd.tlef"
set SC_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd_merged.lef"

puts "GENERATING FINAL GDSII USING MAGIC..."

# Create a temporary Magic script for stream-out
set MAGIC_STREAMOUT_SCRIPT "$SCRIPT_DIR/magic_streamout.tcl"
set magic_fd [open $MAGIC_STREAMOUT_SCRIPT w]

# 1. Optimize Magic settings for stream-out (prevent scaling issues)
puts $magic_fd "drc off"
puts $magic_fd "gds readonly true"
puts $magic_fd "gds rescale false"

# 2. CRITICAL: Read the standard cell GDS *before* the DEF
puts $magic_fd "gds read $STD_CELL_GDS"

# 3. Read technology and macro LEFs
puts $magic_fd "lef read $TECH_LEF"
puts $magic_fd "lef read $SC_LEF"

# 4. Read the DEF to place the cells and draw the routing
puts $magic_fd "def read $NETLIST_DIR/spi_final.def"

# 5. Load the top level cell
puts $magic_fd "load $DESIGN_NAME"

# 6. Write the final layout to GDS and forcefully quit
puts $magic_fd "gds write $GDS_FILE"
puts $magic_fd "quit -noprompt"
close $magic_fd

# 1. Define the absolute path to your Magic tech file
set MAGIC_TECH_FILE "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/magic/sky130A.tech"

# Verify the tech file actually exists before running to avoid silent failures
if {![file exists $MAGIC_TECH_FILE]} {
    error "Critical Error: Magic tech file not found at $MAGIC_TECH_FILE"
}

puts "Running Magic in the background. This might take a minute..."

# 2. Update the exec command to point to the absolute path of the tech file
set magic_status [catch {exec magic -dnull -noconsole -T $MAGIC_TECH_FILE < $MAGIC_STREAMOUT_SCRIPT} magic_output]

# Print Magic's log directly to your terminal so you can see what it actually did
puts "--- MAGIC CONSOLE OUTPUT ---"
puts $magic_output
puts "----------------------------"

# Real verification check: Ensure the GDS exists and is NOT empty
if {![file exists $GDS_FILE] || [file size $GDS_FILE] == 0} {
    error "GDS generation failed! The output file is empty or missing."
}

puts "FINAL GDS GENERATED SUCCESSFULLY: $GDS_FILE ([file size $GDS_FILE] bytes)"