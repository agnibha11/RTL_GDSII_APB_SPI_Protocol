############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 05-07-2026
############################################################

set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set TECH_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd.tlef"
set SC_LEF "$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd_merged.lef"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
# vendor style for foundry / OpenROAD-streamed GDS
cif istyle sky130(vendor)

lef read $::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
lef read $::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
def read "$NETLIST_DIR/spi_final.def"
# Load top-level cell
puts "Loading top-level cell..."
load $::env(TOP_CELL)

puts "Expanding cell hierarchy..."

select top cell
expand

# Prepare for hierarchical DRC
drc style drc(full)     # full signoff deck, not the fast subset
drc euclidean on
drc on

puts "Top-level cell loaded successfully."

set drc_style [drc list style]
puts "Active DRC Style: $drc_style"

# Run Design Rule Check

puts "Running Design Rule Check..."

# Queue the entire layout for DRC
drc check

# Wait until all DRC checks complete
drc catchup

puts "DRC completed."


puts "Generating DRC summary..."

set summary_file \
    [open "$::env(REPORT_DIR)/magic_drc_summary.rpt" "w"]

set drc_style [drc list style]
set drc_count [drc list count total]

puts $summary_file "        MAGIC DRC SUMMARY"
puts $summary_file ""
puts $summary_file "Top Cell          : $::env(TOP_CELL)"
puts $summary_file "DRC Style         : $drc_style"
puts $summary_file "Total Violations : $drc_count"

if {$drc_count == 0} {
    puts $summary_file "DRC Status       : PASS"
} else {
    puts $summary_file "DRC Status       : FAIL"
}

close $summary_file

puts "Summary report generated."

############################################################
# Generate Detailed DRC Report
############################################################

puts "Generating detailed DRC report..."

# Make the cursor box cover the complete layout
select top cell
box select

set detail_file \
    [open "$::env(REPORT_DIR)/magic_drc_errors.rpt" "w"]

puts $detail_file "========================================="
puts $detail_file "       MAGIC DRC ERROR REPORT"
puts $detail_file "========================================="
puts $detail_file ""
puts $detail_file "Top Cell : $::env(TOP_CELL)"
puts $detail_file "DRC Style: $drc_style"
puts $detail_file ""

# Dump all DRC violations under the full-chip box
set drc_errors [drc listall why]

if {[llength $drc_errors] == 0} {

    puts $detail_file "No DRC violations found."

} else {

    foreach err $drc_errors {
        puts $detail_file $err
        puts $detail_file ""
    }

}

close $detail_file

puts "Detailed DRC report generated."
