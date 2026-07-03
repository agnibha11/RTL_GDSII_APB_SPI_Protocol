############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 03-06-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"

set LIBERTY \
"$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
# standard cell timing and power library
if {![file exists $LIBERTY]} {
    error "Liberty LEF not found: $LIBERTY"
}

puts "LOAD FLOORPLAN DATABASE"

# load floorplan database
read_db $NETLIST_DIR/floorplan.odb

# read technology information
read_liberty $LIBERTY

# load RC model for placement timing estimations
# used for estimating the delays of the interconnects
source "$openROAD/flow/platforms/sky130hd/setRC.tcl"

puts "PLACE I/O PINS"

# PLace IO pins
place_pins \
    -hor_layers {met3} \
    -ver_layers {met2}
# means the pins placed on the top and bottom edge are connected to met3 layer
# means the pins placed on the right and left edge are connected to met2 layer

# check the design area
report_design_area

puts "ESTIMATE PARASITICS"

# estimate interconnect parasitics
estimate_parasitics -placement
# this uses openSTA, and done for timing driven placement

# GLOBAL PLACEMENT
# this determines the physical location of every std cell in design
# they are only approximately placed
# normally minimizes only interconnect length, but other instructions also given
global_placement \
    -timing_driven \
    -routability_driven \
    -density 0.60
# timing driven reduces the WNS and TNS
# routability prevents congestations and spreads cells in congested areas
# density is density of packing standard cells

puts "ESTIMATE PARASITICS AFTER GLOBAL PLACEMENT"

# since the wire lengths were changed
estimate_parasitics -placement

# legalize the placement
detailed_placement

# repair HFNS, slew, capacitance
repair_design
# inserts buffers, resizing gates, reduce transition violations, reduce capacitance violations, imporve high-fanout nets

puts "ESTIMATE PARASITICS AFTER HFNS & DETAILED PLACEMENT"

# update RC after optimization
estimate_parasitics -placement

# re-legalize the placement
detailed_placement

puts "VERIFY PLACEMENT LEGALITY"

# verify placement legality
check_placement

puts "PLACEMENT QUALITY REPORTS"

# generate placement quality reports
report_wns
report_tns
report_checks
report_design_area

write_db $NETLIST_DIR/placement.odb
write_def $NETLIST_DIR/spi_top_placement.def

save_image "$REPORT_DIR/placement.png"