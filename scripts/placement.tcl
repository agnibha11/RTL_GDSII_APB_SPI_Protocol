############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 03-07-2026
#
# Changes
# - Added constraints to the IO pins for accurate arrangement  -  03-07-2026
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

# define legal IO pin placement locations
set_io_pin_constraint \
    -pin_names {PCLK PRESETn} \
    -region top:*

#-----------------------------------------------------------
# APB4 Interface (Left Edge)
#-----------------------------------------------------------

set_io_pin_constraint \
    -pin_names {

        PSEL
        PENABLE
        PWRITE

        PADDR[4]
        PADDR[3]
        PADDR[2]
        PADDR[1]
        PADDR[0]

        PSTRB[3]
        PSTRB[2]
        PSTRB[1]
        PSTRB[0]

        PWDATA[31]
        PWDATA[30]
        PWDATA[29]
        PWDATA[28]
        PWDATA[27]
        PWDATA[26]
        PWDATA[25]
        PWDATA[24]
        PWDATA[23]
        PWDATA[22]
        PWDATA[21]
        PWDATA[20]
        PWDATA[19]
        PWDATA[18]
        PWDATA[17]
        PWDATA[16]
        PWDATA[15]
        PWDATA[14]
        PWDATA[13]
        PWDATA[12]
        PWDATA[11]
        PWDATA[10]
        PWDATA[9]
        PWDATA[8]
        PWDATA[7]
        PWDATA[6]
        PWDATA[5]
        PWDATA[4]
        PWDATA[3]
        PWDATA[2]
        PWDATA[1]
        PWDATA[0]

    } \
    -region left:*

#-----------------------------------------------------------
# APB Read Bus (Bottom Edge)
#-----------------------------------------------------------

set_io_pin_constraint \
    -pin_names {

        PRDATA[31]
        PRDATA[30]
        PRDATA[29]
        PRDATA[28]
        PRDATA[27]
        PRDATA[26]
        PRDATA[25]
        PRDATA[24]
        PRDATA[23]
        PRDATA[22]
        PRDATA[21]
        PRDATA[20]
        PRDATA[19]
        PRDATA[18]
        PRDATA[17]
        PRDATA[16]
        PRDATA[15]
        PRDATA[14]
        PRDATA[13]
        PRDATA[12]
        PRDATA[11]
        PRDATA[10]
        PRDATA[9]
        PRDATA[8]
        PRDATA[7]
        PRDATA[6]
        PRDATA[5]
        PRDATA[4]
        PRDATA[3]
        PRDATA[2]
        PRDATA[1]
        PRDATA[0]

        PREADY
        PSLVERR

    } \
    -region bottom:*

#-----------------------------------------------------------
# SPI Interface (Right Edge)
#-----------------------------------------------------------

set_io_pin_constraint \
    -pin_names {

        ss_pad_o[7]
        ss_pad_o[6]
        ss_pad_o[5]
        ss_pad_o[4]
        ss_pad_o[3]
        ss_pad_o[2]
        ss_pad_o[1]
        ss_pad_o[0]

        sclk_pad_o

        mosi_pad_o

        miso_pad_i

        spi_int_o

    } \
    -region right:*

place_pins \
    -hor_layers {met3} \
    -ver_layers {met2} \
    -group_pins {PCLK PRESETn} \
    -group_pins {PSEL PENABLE PWRITE} \
    -group_pins {ss_pad_o[7] ss_pad_o[6] ss_pad_o[5] ss_pad_o[4] ss_pad_o[3] ss_pad_o[2] ss_pad_o[1] ss_pad_o[0]} \
    -corner_avoidance 10 \
    -min_distance 2 \
    -write_pin_placement "$REPORT_DIR/pin_placement.txt"
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