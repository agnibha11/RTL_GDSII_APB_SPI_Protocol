############################################################
# Project       : RTL to GDS of SPI Protocol
# Author        : Agnibha Sarkar
# First modified: 05-07-2026
# Changes
# - Switched from Magic to TritonRoute DRC parsing for ASAP7 - 12-07-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"

# TritonRoute DRC report generated during detail_route.tcl
set TRITON_DRC_FILE "$REPORT_DIR/detail_route_drc.rpt"
set FINAL_SUMMARY "$REPORT_DIR/final_drc_summary.rpt"

puts "==================================================="
puts "       ASAP7 DRC VERIFICATION (TritonRoute)        "
puts "==================================================="

if {![file exists $TRITON_DRC_FILE]} {
    error "CRITICAL ERROR: TritonRoute DRC report not found at $TRITON_DRC_FILE. Run detail_route.tcl first."
}

# Parse the TritonRoute DRC file to count violations
set drc_count 0
set drc_fd [open $TRITON_DRC_FILE r]
while {[gets $drc_fd line] >= 0} {
    # TritonRoute logs specific violation keywords. 
    # Counting the word "violation" gives us the total error count.
    if {[regexp -nocase {violation} $line]} {
        incr drc_count
    }
}
close $drc_fd

# Print to console
puts "Top Cell                 : $DESIGN_NAME"
puts "Total Routing Violations : $drc_count"

if {$drc_count == 0} {
    puts "DRC Status               : PASS"
} else {
    puts "DRC Status               : FAIL (Check detail_route_drc.rpt for locations)"
}
puts "==================================================="

# Write the final summary report for your portfolio
set summary_fd [open $FINAL_SUMMARY w]
puts $summary_fd "==================================================="
puts $summary_fd "       ASAP7 DRC VERIFICATION SUMMARY              "
puts $summary_fd "==================================================="
puts $summary_fd "Top Cell                 : $DESIGN_NAME"
puts $summary_fd "Total Routing Violations : $drc_count"
if {$drc_count == 0} {
    puts $summary_fd "DRC Status               : PASS"
} else {
    puts $summary_fd "DRC Status               : FAIL"
}
close $summary_fd

puts "Summary report saved to: $FINAL_SUMMARY"