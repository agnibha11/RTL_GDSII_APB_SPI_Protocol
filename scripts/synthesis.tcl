yosys -import

# OpenROAD Flow Scripts Root
#----------------------------------------------------------
set openROAD "$::env(HOME)/OpenROAD-flow-scripts"
set REPORT_DIR reports
set NETLIST_DIR netlists
set CONSTRAINTS_DIR constraints

#RTL Source files
set RTL_FILES [list \
    rtl/SPI_top.v \
    rtl/shifter.v \
    rtl/clk_gen.v ]

# Timing constraints
set SDC_FILE "$CONSTRAINTS_DIR/constraints.sdc"

#Sky130HD Technology Files

#Liberty timing file
set LIB_FILE "$openROAD/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
#Technology Mapping Files
set ADDER_MAP "$openROAD/flow/platforms/sky130hd/cells_adders_hd.v" # FA implementation
set LATCH_MAP "$openROAD/flow/platforms/sky130hd/cells_latch_hd.v" # for latch implementation
set CLKGATE_MAP "$openROAD/flow/platforms/sky130hd/cells_clkgate_hd.v" # for clock gating

# ABC Optimization Script
set ABC_SCRIPT "$openROAD/flow/scripts/abc_speed.script"

# generate ABC timing constrains
set ABC_CONSTR_FILE "abc.constr"


#read the Verilog in RTLs
foreach file $RTL_FILES {
    read_verilog -sv -I rtl $file 
    #sv included for SystemVerilog parser
}

#design hierarchy
hierarchy -check -top spi_top # check helps in debugging in case of errors

#convert behavioral processes into hardware
proc

#logic optimization
opt

#detect and optimize FSMs
fsm
opt

#convert inferred memories
memory
opt

#convert into generic gates
techmap

#extract full adders from arithmatic logic
extract_fa

# implement generic full adders using SKY130HD structural mapping file
techmap -map $ADDER_MAP

# map generic flip-flips to SKY130HD standard cells
dfflibmap -liberty $LIB_FILE

# optimize and map combinational logic to SKY130HD cells
abc -liberty $LIB_FILE -script $ABC_SCRIPT
#note: this wont touch the flip flops

# split multi nets into individual scalar nets
splitnets 
# a netlist cleanup pass to simplify LVS, debugging and netlist parsing

#replace the constant logic with SKY130 tie-high/tie-low cells
hilomap \
    -hicell sky130_fd_sc_hd__conb_1 HI \
    -locell sky130_fd_sc_hd__conb_1 LO

#remove the unused cells and wires
clean

# structural check and report generation
tee -o $REPORT_DIR/struct_check_synth.rpt check

# generate synthesys statistics
tee -o $REPORT_DIR/synth_stat.rpt stat -liberty $LIB_FILE

#write synthesizable gate-level netlist
tee -o $REPORT_DIR/write_netlist_synth.rpt \
    write_verilog -noattr $NETLIST_DIR/spi_top_synth.v
