# Created by Microsemi Libero Software 11.9.0.4
# Tue Jan 04 15:45:52 2022

# (OPEN DESIGN)

open_design "zjh_CE4.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "zjh_CE4_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\D3120005043_zjh\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
