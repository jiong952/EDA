`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CP1_0(
       DataA,
       AEB
    );
input  [3:0] DataA;
output AEB;

    wire \Temp[0] , \Temp[1] , Vcc;
    wire VCC_power_net1;
    assign Vcc = VCC_power_net1;
    
    AND3C \AND3C_Temp[0]  (.A(DataA[0]), .B(DataA[1]), .C(DataA[2]), 
        .Y(\Temp[0] ));
    AND2A \AND2A_Temp[1]  (.A(DataA[3]), .B(Vcc), .Y(\Temp[1] ));
    NAND2 NAND2_AEB (.A(\Temp[0] ), .B(\Temp[1] ), .Y(AEB));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_COMPARE
// LPM_HINT:PndgenCdec
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/D3120005043_zjh/smartgen\CP1_0
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:4
// B_VALUE:0
// RADIX:HEX
// AEB_POLARITY:0

// _End_Comments_

