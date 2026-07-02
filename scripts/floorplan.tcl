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

# technology files
set TECH_LEF \
"$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd.tlef"
#this contains technology widths like metal vias etc.
if {![file exists $TECH_LEF]} {
    error "Technology LEF not found: $TECH_LEF"
}

set SC_LEF \
"$openROAD/flow/platforms/sky130hd/lef/sky130_fd_sc_hd_merged.lef"
# this containd standard cell dimensions and details
if {![file exists $SC_LEF]} {
    error "Standard Cell LEF not found: $SC_LEF"
}

set LIBERTY \
"$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
# standard cell timing and power library
if {![file exists $LIBERTY]} {
    error "Liberty LEF not found: $LIBERTY"
}

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
    -site unithd \
    -utilization 60 \
    -aspect_ratio 1.0 \
    -core_space 4
# core_space is to leave a margin of 2um on all four sides of die
# utilization maintained at 60% means std cells occupy 60% of core area

# create the metal tracks for routing
source "$openROAD/flow/platforms/sky130hd/make_tracks.tcl"

# insert tapcells (fab requirement)
tapcell \
    -distance 14 \
    -tapcell_master "sky130_fd_sc_hd__tapvpwrvgnd_1"
# 14 means tap cell placed after every 14 placement sites

# POWER DISTRIBUTION NETWORK

# connect standard cell power pins
# to VDD
add_global_connection \
    -net VDD \
    -inst_pattern .* \
    -pin_pattern {^VPWR$} \
    -power

# connect standard cell power pins
# to VSS
add_global_connection \
    -net VSS \
    -inst_pattern .* \
    -pin_pattern {^VGND$} \
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

# define the power distribution grid
define_pdn_grid \
    -name {grid} \
    -voltage_domains {CORE} \
    -pins {met5}
# the pdn grid has been exposed to the highest metal layer

# create continuous metal layer 1 rails follwoing the aligned power pins of the standard cells
# standard cell power pins are on Metal 1 as xtors are on Metal 1
add_pdn_stripe \
    -grid {grid} \
    -layer {met1} \
    -width {0.48} \
    -pitch {5.44} \
    -offset {0} \
    -followpins
# create wide Metal4 stripe for power
add_pdn_stripe \
    -grid {grid} \
    -layer {met4} \
    -width {1.6} \
    -pitch {27.14} \
    -offset {13.57}
# the offset is the starting point from the core boundary

# create Metal5 Power Straps
add_pdn_stripe \
    -grid {grid} \
    -layer {met5} \
    -width {1.6} \
    -pitch {27.20} \
    -offset {13.60}

# connect Metal1 rails to Metal4 straps using vias
add_pdn_connect \
    -grid {grid} \
    -layers {met1 met4}

# connect Metal4 straps to Metal5 straps using vias
add_pdn_connect \
    -grid {grid} \
    -layers {met4 met5}

# generate the PDN
pdngen

# generate the reports
#check_power_grid

#report_design_area

# Save the floorplan
write_db $NETLIST_DIR/floorplan.odb
write_def $NETLIST_DIR/spi_top_floorplan.def