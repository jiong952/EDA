`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CP0(
       DataA,
       DataB,
       AEB
    );
input  [7:0] DataA;
input  [7:0] DataB;
output AEB;

    wire XNOR2_6_Y, XNOR2_4_Y, XNOR2_0_Y, XNOR2_7_Y, XNOR2_1_Y, 
        XNOR2_3_Y, XNOR2_5_Y, XNOR2_2_Y, AND3_1_Y, AND2_0_Y, AND3_0_Y;
    
    AND2 AND2_0 (.A(XNOR2_5_Y), .B(XNOR2_2_Y), .Y(AND2_0_Y));
    XNOR2 XNOR2_3 (.A(DataA[5]), .B(DataB[5]), .Y(XNOR2_3_Y));
    XNOR2 XNOR2_5 (.A(DataA[6]), .B(DataB[6]), .Y(XNOR2_5_Y));
    AND3 AND3_0 (.A(XNOR2_7_Y), .B(XNOR2_1_Y), .C(XNOR2_3_Y), .Y(
        AND3_0_Y));
    AND3 AND3_1 (.A(XNOR2_6_Y), .B(XNOR2_4_Y), .C(XNOR2_0_Y), .Y(
        AND3_1_Y));
    XNOR2 XNOR2_4 (.A(DataA[1]), .B(DataB[1]), .Y(XNOR2_4_Y));
    XNOR2 XNOR2_0 (.A(DataA[2]), .B(DataB[2]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(DataA[7]), .B(DataB[7]), .Y(XNOR2_2_Y));
    XNOR2 XNOR2_7 (.A(DataA[3]), .B(DataB[3]), .Y(XNOR2_7_Y));
    AND3 AND3_AEB (.A(AND2_0_Y), .B(AND3_1_Y), .C(AND3_0_Y), .Y(AEB));
    XNOR2 XNOR2_6 (.A(DataA[0]), .B(DataB[0]), .Y(XNOR2_6_Y));
    XNOR2 XNOR2_1 (.A(DataA[4]), .B(DataB[4]), .Y(XNOR2_1_Y));
    
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
// DESDIR:C:/D3120005043_zjh/smartgen\CP0
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:8
// REPRESENTATION:SIGNED
// GEQRHS_POLARITY:1
// AEB_POLARITY:1

// _End_Comments_

