quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/Libero-work/h_kaohe"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "D:/Software/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/xulie.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testbench.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.testbench
add wave /testbench/*
run 1000ns
