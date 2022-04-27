# Created by Microsemi Libero Software 11.9.0.4
# Tue Dec 31 20:00:42 2019

# (OPEN DESIGN)

open_design "xulie_1110.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "xulie_1110_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Libero-work\h_kaohe\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/xulie_1110.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {xulie_1110_compile_report.txt}
report -type "pin" -listby "name" {xulie_1110_report_pin_byname.txt}
report -type "pin" -listby "number" {xulie_1110_report_pin_bynumber.txt}

save_design
