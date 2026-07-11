############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# First modified: 02-06-2026
############################################################

# top level design name
set DESIGN_NAME spi_top

# project directories
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/reports"
set NETLIST_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/netlists"
set CONSTRAINTS_DIR "$::env(HOME)/Documents/Projects/RTL_GDS_SPI/constraints"

# Synthesized netlist
set SYNTH_NETLIST \
"$NETLIST_DIR/spi_top_synth.v"

# constraints
set SDC_FILE \
"$CONSTRAINTS_DIR/constraints.sdc"

set LIBERTY \
"$::env(HOME)/Documents/Projects/RTL_GDS_SPI/LIBERTY/asap7_merged_combo.lib"

set ASAP7_PLATFORM "$openROAD/flow/platforms/asap7"

set ASAP7_LIB_DIR "$ASAP7_PLATFORM/lib/NLDM"

set TECH_LEF "$ASAP7_PLATFORM/lef/asap7_tech_1x_201209.lef"
if {![file exists $TECH_LEF]} { error "Tech LEF not found: $TECH_LEF" }

set SC_LEF "$ASAP7_PLATFORM/lef/asap7sc7p5t_28_R_1x_220121a.lef"
if {![file exists $SC_LEF]} { error "Cell LEF not found: $SC_LEF" }


#read the LEF file
read_lef $TECH_LEF

# read Stabdard Cell library
read_lef $SC_LEF

#read liberty library
read_liberty $LIBERTY

# read synthesized gate-level netlist
read_verilog $SYNTH_NETLIST
# this only parses the verilog file

# link the design
link_design $DESIGN_NAME

# read the timing constraints
read_sdc $SDC_FILE

# initialize the floorplan
initialize_floorplan \
    -site asap7sc7p5t \
    -utilization 70 \
    -aspect_ratio 1.0 \
    -core_space 1
# core_space is to leave a margin of 2um on all four sides of die
# utilization maintained at 70% means std cells and macros occupy 60% of core area

# create the metal tracks for routing
source "$openROAD/flow/platforms/asap7/openRoad/make_tracks.tcl"

# insert tapcells (fab requirement)
tapcell \
    -distance 14 \
    -tapcell_master "TAPCELL_ASAP7_75t_R"
# 14 means tap cell placed after every 14 placement sites

# POWER DISTRIBUTION NETWORK

# connect standard cell power pins
# to VDD
add_global_connection \
    -net VDD \
    -inst_pattern .* \
    -pin_pattern {^VDD$} \
    -power

# connect standard cell power pins
# to VSS
add_global_connection \
    -net VSS \
    -inst_pattern .* \
    -pin_pattern {^VSS$} \
    -ground

# voltage bias for PMOS body (NWell)
add_global_connection \
    -net VDD \
    -inst_pattern .* \
    -pin_pattern {^VPB$} \
    -power

# voltage bias for NMOS body (Pwell)
add_global_connection \
    -net VSS \
    -inst_pattern .* \
    -pin_pattern {^VNB$} \
    -ground

# apply all the global connections
global_connect

# define the voltage domain (only one domain here)
set_voltage_domain \
    -name CORE \
    -power VDD \
    -ground VSS

# define the power distribution grid exposing the M5 layer
define_pdn_grid \
    -name {grid} \
    -voltage_domains {CORE} \
    -pins {M5}

# Add a Core Ring around the boundary to tie all row ends together
add_pdn_ring \
    -grid {grid} \
    -layers {M5 M4} \
    -widths {0.216 0.216} \
    -spacings {0.12} \
    -core_offset {0.1}

# create continuous metal layer 1 rails follwoing the aligned power pins of the standard cells
# standard cell power pins are on Metal 1 as xtors are on Metal 1
add_pdn_stripe \
    -grid {grid} \
    -layer {M1} \
    -width {0.018} \
    -pitch {0.54} \
    -offset {0} \
    -followpins

# Vertical power straps on Metal 4
add_pdn_stripe \
    -grid {grid} \
    -layer {M2} \
    -width {0.018} \
    -pitch {0.54} \
    -offset {0} \
    -followpins
# offset is the starting point of the core boundary

# Horizontal power straps on Metal 5
add_pdn_stripe \
    -grid {grid} \
    -layer {M5} \
    -width {0.216} \
    -spacing {0.12} \
    -pitch {2.88} \
    -offset {1.0} \
    -extend_to_core_ring

add_pdn_connect -grid {grid} -layers {M1 M2}
add_pdn_connect -grid {grid} -layers {M2 M5}
add_pdn_connect -grid {grid} -layers {M4 M5}

# generate the PDN
pdngen

# generate the reports
#check_power_grid

report_design_area

# Save the floorplan
write_db $NETLIST_DIR/floorplan.odb
write_def $NETLIST_DIR/spi_top_floorplan.def