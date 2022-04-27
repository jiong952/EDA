`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CP3_0(
       DataA,
       DataB,
       ALB
    );
input  [3:0] DataA;
input  [3:0] DataB;
output ALB;

    wire OR2A_0_Y, AO1C_2_Y, AO1C_1_Y, OR2A_1_Y, AO1C_0_Y, NOR2A_0_Y, 
        AO1C_4_Y, AO1C_3_Y;
    
    AO1C AO1C_3 (.A(DataA[3]), .B(DataB[3]), .C(AO1C_4_Y), .Y(AO1C_3_Y)
        );
    AO1C AO1C_2 (.A(DataA[0]), .B(DataB[0]), .C(OR2A_0_Y), .Y(AO1C_2_Y)
        );
    AO1C AO1C_0 (.A(DataB[2]), .B(DataA[2]), .C(OR2A_1_Y), .Y(AO1C_0_Y)
        );
    AO1C AO1C_4 (.A(DataB[3]), .B(DataA[3]), .C(NOR2A_0_Y), .Y(
        AO1C_4_Y));
    OR2A OR2A_0 (.A(DataB[1]), .B(DataA[1]), .Y(OR2A_0_Y));
    AO1C AO1C_1 (.A(DataB[3]), .B(DataA[3]), .C(AO1C_2_Y), .Y(AO1C_1_Y)
        );
    NOR2A NOR2A_0 (.A(DataB[2]), .B(DataA[2]), .Y(NOR2A_0_Y));
    AO1D AO1D_ALB (.A(AO1C_1_Y), .B(AO1C_0_Y), .C(AO1C_3_Y), .Y(ALB));
    OR2A OR2A_1 (.A(DataA[1]), .B(DataB[1]), .Y(OR2A_1_Y));
    
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
// DESDIR:C:/D3120005043_zjh/smartgen\CP3_0
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:4
// REPRESENTATION:UNSIGNED
// GEQRHS_POLARITY:1
// ALB_POLARITY:1

// _End_Comments_

