puts "Script started"

yosys -import

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
set LIB_FILE "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib" 
# for latch implementation
set LATCH_MAP "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/cells_latch_hd.v" 
# for clock gating
set CLKGATE_MAP "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/cells_clkgate_hd.v" 


# ABC Optimization Script
set ABC_SCRIPT "$::env(HOME)/OpenROAD-flow-scripts/flow/scripts/abc_speed.script"

# generate ABC timing constrains
set ABC_CONSTR_FILE "$CONSTRAINTS_DIR/abc.constr"


# Extract clock period from SDC
set clk_period ""
set fp [open $SDC_FILE r]
while {[gets $fp line] >= 0} {
    if {[regexp {set clk_period ([0-9.]+)} $line -> period]} {
        set clk_period $period
        break
    }
}
close $fp

if {$clk_period == ""} {
    error "Clock period not found in $SDC_FILE"
}
puts "Clock Period = $clk_period ns"

# generate abc constraints
set fp [open $ABC_CONSTR_FILE w]

# assume every input is driven by a buffer
puts $fp "set_driving_cell sky130_fd_sc_hd__buf_2"

# assume the buffer drives a capacitance of 5 unit
puts $fp "set_load 5"

close $fp

#read the Verilog in RTLs
foreach file $RTL_FILES {
    read_verilog -sv -I rtl $file 
    #sv included for SystemVerilog parser
}

#design hierarchy
hierarchy -check -top spi_top 
# check helps in debugging in case of errors

puts "CHECKPOINT 1"

#convert behavioral processes into hardware
yosys proc

#logic optimization
opt

#detect and optimize FSMs
fsm
opt

#convert inferred memories
memory
opt

# flatten the design hierarchy for DFT
flatten
opt

#convert into generic gates
techmap
opt

puts "CHECKPOINT 2"

# pre technology attaching check
tee -o $REPORT_DIR/struct_check_synth_pretech.rpt check

# map generic flip-flips to SKY130HD standard cells
dfflibmap -liberty $LIB_FILE

# optimize and map combinational logic to SKY130HD cells
abc -liberty $LIB_FILE -script $ABC_SCRIPT \
    -constr $ABC_CONSTR_FILE \
    -D $clk_period
#note: this wont touch the flip flops

# split multi nets into individual scalar nets
splitnets 
# a netlist cleanup pass to simplify LVS, debugging and netlist parsing

puts "CHECKPOINT 3"

#replace the constant logic with SKY130 tie-high/tie-low cells
hilomap \
    -hicell sky130_fd_sc_hd__conb_1 HI \
    -locell sky130_fd_sc_hd__conb_1 LO

#remove the unused cells and wires
clean

# structural check and report generation
tee -o $REPORT_DIR/struct_check_synth_tech.rpt check

# generate synthesys statistics
tee -o $REPORT_DIR/synth_stat.rpt stat -liberty $LIB_FILE

puts "CHECKPOINT 4"

#write synthesizable gate-level netlist
tee -o $REPORT_DIR/write_netlist_synth.rpt \
    write_verilog -noattr -norename $NETLIST_DIR/spi_top_synth.v

# save final image in report
show \
    -format png \
    -prefix $REPORT_DIR/spi_top_synth