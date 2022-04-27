# Created by Microsemi Libero Software 11.9.0.4
# Tue Dec 28 17:01:46 2021

# (OPEN DESIGN)

open_design "zjh_CE2.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "zjh_CE2_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\D3120005043_zjh\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
