`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CP2(
       DataA,
       DataB,
       AGB
    );
input  [7:0] DataA;
input  [7:0] DataB;
output AGB;

    wire le_OUT, U1, U2, AND3_0_Y, NAND3A_0_Y, AO1D_0_Y, OR2A_1_Y, 
        AO1C_0_Y, AO1C_1_Y, OR2A_0_Y, AO1C_4_Y, NOR2A_0_Y, AO1C_3_Y, 
        AO1C_2_Y, OR2A_3_Y, AO1C_5_Y, NOR3A_0_Y, OR2A_2_Y, NAND3A_1_Y, 
        XNOR2_1_Y, XNOR2_0_Y, XNOR2_2_Y;
    
    AO1C AO1C_3 (.A(DataA[3]), .B(DataB[3]), .C(NOR2A_0_Y), .Y(
        AO1C_3_Y));
    AO1C AO1C_2 (.A(DataB[3]), .B(DataA[3]), .C(AO1C_3_Y), .Y(AO1C_2_Y)
        );
    AO1C AO1C_5 (.A(DataA[5]), .B(DataB[5]), .C(DataA[4]), .Y(AO1C_5_Y)
        );
    NOR3A NOR3A_0 (.A(OR2A_3_Y), .B(AO1C_5_Y), .C(DataB[4]), .Y(
        NOR3A_0_Y));
    AO1D AO1D_0 (.A(AO1C_1_Y), .B(AO1C_4_Y), .C(AO1C_2_Y), .Y(AO1D_0_Y)
        );
    AND2A AND_SIGN (.A(DataA[7]), .B(DataB[7]), .Y(U2));
    AO1C AO1C_0 (.A(DataB[0]), .B(DataA[0]), .C(OR2A_1_Y), .Y(AO1C_0_Y)
        );
    AND3 AND3_0 (.A(XNOR2_1_Y), .B(XNOR2_0_Y), .C(XNOR2_2_Y), .Y(
        AND3_0_Y));
    AO1C AO1C_4 (.A(DataA[2]), .B(DataB[2]), .C(OR2A_0_Y), .Y(AO1C_4_Y)
        );
    OR2A OR2A_0 (.A(DataB[1]), .B(DataA[1]), .Y(OR2A_0_Y));
    NAND3A NAND3A_1 (.A(DataB[5]), .B(DataA[5]), .C(OR2A_3_Y), .Y(
        NAND3A_1_Y));
    OR2A OR2A_3 (.A(DataB[6]), .B(DataA[6]), .Y(OR2A_3_Y));
    NOR2A NOR2A_0 (.A(DataA[2]), .B(DataB[2]), .Y(NOR2A_0_Y));
    AO1C AO1C_1 (.A(DataA[3]), .B(DataB[3]), .C(AO1C_0_Y), .Y(AO1C_1_Y)
        );
    XNOR2 XNOR2_0 (.A(DataB[5]), .B(DataA[5]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(DataB[6]), .B(DataA[6]), .Y(XNOR2_2_Y));
    OR2A OR2A_2 (.A(DataA[6]), .B(DataB[6]), .Y(OR2A_2_Y));
    AO1 AND_AO21 (.A(le_OUT), .B(U1), .C(U2), .Y(AGB));
    NAND3A NAND3A_0 (.A(NOR3A_0_Y), .B(OR2A_2_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_0_Y));
    AO1 AO1_le_OUT (.A(AND3_0_Y), .B(AO1D_0_Y), .C(NAND3A_0_Y), .Y(
        le_OUT));
    OR2A OR2A_1 (.A(DataA[1]), .B(DataB[1]), .Y(OR2A_1_Y));
    XNOR2 XNOR2_1 (.A(DataB[4]), .B(DataA[4]), .Y(XNOR2_1_Y));
    OR2A OR_SIGN (.A(DataA[7]), .B(DataB[7]), .Y(U1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_COMPARE
// LPM_HINT:MAGCOMP
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/D3120005043_zjh/smartgen\CP2
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:8
// REPRESENTATION:SIGNED
// GEQRHS_POLARITY:1
// AGB_POLARITY:1

// _End_Comments_

