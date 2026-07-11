import pya
import os

layout = pya.Layout()

# Read the standard cell GDS first so the cell geometries exist in memory
layout.read(os.environ.get('STD_CELL_GDS'))

# Load LEF files into the layout options so KLayout understands DEF vias and macros
opt = pya.LoadLayoutOptions()
opt.lefdef_config.lef_files = [os.environ.get('TECH_LEF'), os.environ.get('SC_LEF')]

# Read the DEF file. KLayout maps DEF components to existing GDS cells.
layout.read(os.environ.get('DEF_FILE'), opt)

# Write the final layout to GDS
layout.write(os.environ.get('GDS_FILE'))
print('GDS Streamout completed by KLayout!')
