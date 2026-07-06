drc off
gds readonly true
gds rescale false
gds read /home/agnibha/OpenROAD-flow-scripts/flow/platforms/sky130hd/gds/sky130_fd_sc_hd.gds
lef read /home/agnibha/OpenROAD-flow-scripts/flow/platforms/sky130hd/lef/sky130_fd_sc_hd.tlef
lef read /home/agnibha/OpenROAD-flow-scripts/flow/platforms/sky130hd/lef/sky130_fd_sc_hd_merged.lef
def read /home/agnibha/Documents/Projects/RTL_GDS_SPI/netlists/spi_final.def
load spi_top
gds write /home/agnibha/Documents/Projects/RTL_GDS_SPI/netlists/GDSII/spi_top.gds
quit -noprompt
