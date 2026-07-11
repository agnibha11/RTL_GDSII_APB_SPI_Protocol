############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 03-07-2026
#
# Changes
# - Added constraints to the IO pins for accurate arrangement  -  03-07-2026
# - Placed IO pins properly around edges  -  04-07-2026
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

# standard cell timing and power libraries
set LIBERTY "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/LIBERTY/asap7_merged_combo.lib"
set SEQ_LIB_FILE "$ASAP7_PLATFORM/lib/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib"

if {![file exists $LIBERTY]} { error "Merged Liberty not found: $LIBERTY" }
if {![file exists $SEQ_LIB_FILE]} { error "SEQ Liberty not found: $SEQ_LIB_FILE" }

puts "LOAD FLOORPLAN DATABASE"

# load floorplan database
read_db $NETLIST_DIR/floorplan.odb

# read technology information
read_liberty $SEQ_LIB_FILE
read_liberty $LIBERTY

read_sdc $SDC_FILE

# load RC model for placement timing estimations
# used for estimating the delays of the interconnects
source "$openROAD/flow/platforms/asap7/setRC.tcl"

set_routing_layers -signal M1-M7 -clock M4-M7

puts "PLACE I/O PINS"

# PLace IO pins

# define legal IO pin placement locations

set_io_pin_constraint \
    -pin_names {PCLK PRESETn} \
    -region top:*

# APB4 Interface (Left Edge)
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


# APB Read Bus (Bottom Edge)
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

# SPI Interface (Right Edge)
set_io_pin_constraint \
    -pin_names {
        ss_pad_o[31]
        ss_pad_o[30]
        ss_pad_o[29]
        ss_pad_o[28]
        ss_pad_o[27]
        ss_pad_o[26]
        ss_pad_o[25]
        ss_pad_o[24]
        ss_pad_o[23]
        ss_pad_o[22]
        ss_pad_o[21]
        ss_pad_o[20]
        ss_pad_o[19]
        ss_pad_o[18]
        ss_pad_o[17]
        ss_pad_o[16]
        ss_pad_o[15]
        ss_pad_o[14]
        ss_pad_o[13]
        ss_pad_o[12]
        ss_pad_o[11]
        ss_pad_o[10]
        ss_pad_o[9]
        ss_pad_o[8]
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
    -hor_layers {M2} \
    -ver_layers {M3} \
    -group_pins {PCLK PRESETn} \
    -group_pins {ss_pad_o[31] ss_pad_o[30] ss_pad_o[29] ss_pad_o[28]} \
    -group_pins {ss_pad_o[27] ss_pad_o[26] ss_pad_o[25] ss_pad_o[24]} \
    -group_pins {ss_pad_o[23] ss_pad_o[22] ss_pad_o[21] ss_pad_o[20]} \
    -group_pins {ss_pad_o[19] ss_pad_o[18] ss_pad_o[17] ss_pad_o[16]} \
    -group_pins {ss_pad_o[15] ss_pad_o[14] ss_pad_o[13] ss_pad_o[12]} \
    -group_pins {ss_pad_o[11] ss_pad_o[10] ss_pad_o[9] ss_pad_o[8]} \
    -group_pins {ss_pad_o[7] ss_pad_o[6] ss_pad_o[5] ss_pad_o[4]} \
    -group_pins {ss_pad_o[3] ss_pad_o[2] ss_pad_o[1] ss_pad_o[0]} \
    -group_pins {sclk_pad_o mosi_pad_o miso_pad_i spi_int_o} \
    -group_pins {PSEL PENABLE PWRITE} \
    -group_pins {PWDATA[31] PWDATA[30] PWDATA[29] PWDATA[28]} \
    -group_pins {PWDATA[27] PWDATA[26] PWDATA[25] PWDATA[24]} \
    -group_pins {PWDATA[23] PWDATA[22] PWDATA[21] PWDATA[20]} \
    -group_pins {PWDATA[19] PWDATA[18] PWDATA[17] PWDATA[16]} \
    -group_pins {PWDATA[15] PWDATA[14] PWDATA[13] PWDATA[12]} \
    -group_pins {PWDATA[11] PWDATA[10] PWDATA[9]  PWDATA[8]} \
    -group_pins {PWDATA[7]  PWDATA[6]  PWDATA[5]  PWDATA[4]} \
    -group_pins {PWDATA[3]  PWDATA[2]  PWDATA[1]  PWDATA[0]} \
    -group_pins {PADDR[4] PADDR[3] PADDR[2] PADDR[1] PADDR[0]} \
    -group_pins {PSTRB[3] PSTRB[2] PSTRB[1] PSTRB[0]} \
    -group_pins {PRDATA[31] PRDATA[30] PRDATA[29] PRDATA[28]} \
    -group_pins {PRDATA[27] PRDATA[26] PRDATA[25] PRDATA[24]} \
    -group_pins {PRDATA[23] PRDATA[22] PRDATA[21] PRDATA[20]} \
    -group_pins {PRDATA[19] PRDATA[18] PRDATA[17] PRDATA[16]} \
    -group_pins {PRDATA[15] PRDATA[14] PRDATA[13] PRDATA[12]} \
    -group_pins {PRDATA[11] PRDATA[10] PRDATA[9]  PRDATA[8]} \
    -group_pins {PRDATA[7]  PRDATA[6]  PRDATA[5]  PRDATA[4]} \
    -group_pins {PRDATA[3]  PRDATA[2]  PRDATA[1]  PRDATA[0]} \
    -group_pins {PREADY PSLVERR} \
    -corner_avoidance 1 \
    -min_distance 0.3 \
    -write_pin_placement "$REPORT_DIR/pin_placement.txt"
# means the pins placed on the top and bottom edge are connected to met3 layer
# means the pins placed on the right and left edge are connected to met2 layer

# check the design area
report_design_area

puts "ESTIMATE PARASITICS"

# estimate interconnect parasitics
estimate_parasitics -placement
# this uses openSTA, and done for timing driven placement

puts "APPLY CELL PADDING"
# Mandatory for sub-10nm FinFET to prevent pin access DRC errors
set_placement_padding -global -left 1 -right 1

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

save_image "$REPORT_DIR/images/placement.png"