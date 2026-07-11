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
#set LIB_FILE "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib" 
# for latch implementation
#set LATCH_MAP "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/cells_latch_hd.v" 
# for clock gating
#set CLKGATE_MAP "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/sky130hd/cells_clkgate_hd.v" 

# ASAP7 Technology Files

# Define the ASAP7 library directory
set ASAP7_LIB_DIR "$::env(HOME)/OpenROAD-flow-scripts/flow/platforms/asap7/lib/NLDM"
set ASAP7_LIB_MERGED LIBERTY

# Define the sequential library specifically for flip-flop mapping
set SEQ_LIB_FILE "$ASAP7_LIB_DIR/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib"

# Define the combinational libraries for ABC optimization
set COMBO_LIB_FILES [list \
    "$ASAP7_LIB_DIR/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib" \
    "$ASAP7_LIB_DIR/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib" \
    "$ASAP7_LIB_DIR/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib" \
    "$ASAP7_LIB_DIR/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib" \
]


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
puts $fp "set_driving_cell BUFx2_ASAP7_75t_R"

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

# Convert all asynchronous resets to synchronous resets 
# so they map cleanly to basic ASAP7 D-Flip-Flops
#async2sync

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

# Map flip-flops using only the Sequential library
dfflibmap -liberty $SEQ_LIB_FILE

# 1. Map flip-flops using only the Sequential library
dfflibmap -liberty $SEQ_LIB_FILE

# 2. Stitch ASAP7 combinational libraries into a single, valid Liberty file
puts "Merging ASAP7 combinational libraries safely for ABC..."
set MERGED_LIB "$ASAP7_LIB_MERGED/asap7_merged_combo.lib"
set out_fp [open $MERGED_LIB w]

set is_first 1
foreach lib $COMBO_LIB_FILES {
    set in_fp [open $lib r]
    set data [read $in_fp]
    close $in_fp
    
    # Split the file into individual lines
    set lines [split $data "\n"]
    
    # Find and delete the last closing brace of the file using Hex (\x7D) to avoid TCL parser errors
    for {set i [expr {[llength $lines] - 1}]} {$i >= 0} {incr i -1} {
        if {[string trim [lindex $lines $i]] == "\x7D"} {
            set lines [lreplace $lines $i $i]
            break
        }
    }
    
    if {$is_first} {
        # For the first file (SIMPLE), write everything (keeps the library header)
        foreach line $lines { puts $out_fp $line }
        set is_first 0
    } else {
        # For other files, skip the header and only write the 'cell (...)' blocks
        set in_cell 0
        foreach line $lines {
            if {[regexp {^[ \t]*cell[ \t]*\(} $line]} { set in_cell 1 }
            if {$in_cell} { puts $out_fp $line }
        }
    }
}
# Add the master closing brace at the very end of the merged file
puts $out_fp "\x7D"
close $out_fp

# 3. Read the beautifully merged file natively into Yosys
read_liberty -lib $MERGED_LIB

# 4. Run ABC! 
abc -liberty $MERGED_LIB \
    -script $ABC_SCRIPT \
    -constr $ABC_CONSTR_FILE \
    -D $clk_period

# map generic flip-flips to SKY130HD standard cells
#dfflibmap -liberty $LIB_FILE

# optimize and map combinational logic to SKY130HD cells
#abc -liberty $LIB_FILE -script $ABC_SCRIPT \
    -constr $ABC_CONSTR_FILE \
    -D $clk_period
#note: this wont touch the flip flops

# split multi nets into individual scalar nets
splitnets 
# a netlist cleanup pass to simplify LVS, debugging and netlist parsing

puts "CHECKPOINT 3"

#replace the constant logic with ASAP7 tie-high/tie-low cells
hilomap \
    -hicell TIEHIx1_ASAP7_75t_R H \
    -locell TIELOx1_ASAP7_75t_R L

#remove the unused cells and wires
clean

# structural check and report generation
tee -o $REPORT_DIR/struct_check_synth_tech.rpt check

# generate synthesys statistics
tee -o $REPORT_DIR/synth_stat.rpt stat

puts "CHECKPOINT 4"

#write synthesizable gate-level netlist
tee -o $REPORT_DIR/write_netlist_synth.rpt \
    write_verilog -noattr -norename $NETLIST_DIR/spi_top_synth.v

# save final image in report
show \
    -format png \
    -prefix "$REPORT_DIR/images/spi_top_synth"