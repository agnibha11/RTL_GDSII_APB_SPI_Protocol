#!/bin/bash

############################################################
# Project    : RTL to GDS of SPI Protocol
# Author     : Agnibha Sarkar
# Stage      : Design-for-Test (DFT)
############################################################

set -e

echo "=============================================="
echo "        FAULT DFT FLOW STARTED"
echo "=============================================="

##############################
# Configuration
##############################

TOP=spi_top

CLOCK=PCLK
RESET=PRESETn
RESET_OPT=--activeLow

PROJECT=/workspace

NETLIST_DIR=$PROJECT/netlists
REPORT_DIR=$PROJECT/reports

LIBERTY=/OpenROAD-flow-scripts/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

SYNTH_NETLIST=$NETLIST_DIR/${TOP}_synth.v
SCAN_NETLIST=$NETLIST_DIR/${TOP}_scan.v
JTAG_NETLIST=$NETLIST_DIR/${TOP}_jtag.v
CUT_NETLIST=$NETLIST_DIR/${TOP}_cut.v
BENCH_NETLIST=$NETLIST_DIR/${TOP}.bench

mkdir -p "$NETLIST_DIR"
mkdir -p "$REPORT_DIR"

############################################################
echo
echo "[1/5] Scan Chain Insertion"
############################################################

fault chain \
    --clock $CLOCK \
    --reset $RESET \
    $RESET_OPT \
    --skipSynth \
    -l $LIBERTY \
    -o $SCAN_NETLIST \
    $SYNTH_NETLIST

echo "✓ Scan chain inserted."

############################################################
echo
echo "[2/5] JTAG TAP Insertion"
############################################################

fault tap \
    --clock $CLOCK \
    --reset $RESET \
    $RESET_OPT \
    --skipSynth \
    -l $LIBERTY \
    -o $JTAG_NETLIST \
    $SCAN_NETLIST

echo "✓ JTAG inserted."

############################################################
echo
echo "[3/5] Netlist Cutting"
############################################################

fault cut \
    -o $CUT_NETLIST \
    $SCAN_NETLIST

echo "✓ Sequential elements removed."

############################################################
echo
echo "[4/5] BENCH Conversion"
############################################################

nl2bench \
    -l $LIBERTY \
    -o $BENCH_NETLIST \
    $CUT_NETLIST

echo "✓ BENCH netlist generated."

############################################################
echo
echo "[5/5] ATPG / Fault Simulation"
############################################################

echo
echo "Skipping ATPG."
echo "A SKY130 functional Verilog cell library is still required"
echo "for simulation (-c option)."

#
# Uncomment once the SKY130 functional cell models are available.
#
# CELL_MODEL=/path/to/sky130_fd_sc_hd.v
#
# fault \
#     -c $CELL_MODEL \
#     -v 100 \
#     -r 50 \
#     -m 95 \
#     --ceiling 1000 \
#     $CUT_NETLIST \
#     --clock $CLOCK \
#     --reset $RESET \
#     $RESET_OPT
#

############################################################

echo
echo "=============================================="
echo "          DFT FLOW COMPLETED"
echo "=============================================="

echo
echo "Generated files:"
echo "----------------------------------------------"
echo "$SCAN_NETLIST"
echo "$JTAG_NETLIST"
echo "$CUT_NETLIST"
echo "$BENCH_NETLIST"
echo "----------------------------------------------"