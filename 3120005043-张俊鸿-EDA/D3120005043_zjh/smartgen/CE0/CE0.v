`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CE0(
       DataA,
       DataB,
       ANEB
    );
input  [3:0] DataA;
input  [3:0] DataB;
output ANEB;

    wire XNOR2_3_Y, XNOR2_2_Y, XNOR2_0_Y, XNOR2_1_Y, AND3_0_Y;
    
    XNOR2 XNOR2_3 (.A(DataA[0]), .B(DataB[0]), .Y(XNOR2_3_Y));
    AND3 AND3_0 (.A(XNOR2_3_Y), .B(XNOR2_2_Y), .C(XNOR2_0_Y), .Y(
        AND3_0_Y));
    XNOR2 XNOR2_0 (.A(DataA[2]), .B(DataB[2]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(DataA[1]), .B(DataB[1]), .Y(XNOR2_2_Y));
    XNOR2 XNOR2_1 (.A(DataA[3]), .B(DataB[3]), .Y(XNOR2_1_Y));
    AND2 AND2_ANEB (.A(AND3_0_Y), .B(XNOR2_1_Y), .Y(ANEB));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_COMPARE
// LPM_HINT:EQCOMP
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/D3120005043_zjh/smartgen\CE0
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:4
// REPRESENTATION:UNSIGNED
// GEQRHS_POLARITY:1
// ANEB_POLARITY:0

// _End_Comments_

