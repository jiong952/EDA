`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module CP0(
       zjh_TF_CC_1_DataOut,
       zjh_TF_CC_0_DataOut,
       DataIn_0_c_0,
       DataIn_c_0,
       AEB_c
    );
input  [7:1] zjh_TF_CC_1_DataOut;
input  [7:1] zjh_TF_CC_0_DataOut;
input  DataIn_0_c_0;
input  DataIn_c_0;
output AEB_c;

    wire XNOR2_1_Y, XNOR2_6_Y, AND2_0_Y, AND3_1_Y, AND3_0_Y, XNOR2_7_Y, 
        XNOR2_2_Y, XNOR2_0_Y, XNOR2_4_Y, XNOR2_3_Y, XNOR2_5_Y, GND, 
        VCC;
    
    XNOR2 XNOR2_2 (.A(zjh_TF_CC_0_DataOut[7]), .B(
        zjh_TF_CC_1_DataOut[7]), .Y(XNOR2_2_Y));
    XNOR2 XNOR2_1 (.A(zjh_TF_CC_0_DataOut[4]), .B(
        zjh_TF_CC_1_DataOut[4]), .Y(XNOR2_1_Y));
    XNOR2 XNOR2_7 (.A(zjh_TF_CC_0_DataOut[3]), .B(
        zjh_TF_CC_1_DataOut[3]), .Y(XNOR2_7_Y));
    XNOR2 XNOR2_0 (.A(zjh_TF_CC_0_DataOut[2]), .B(
        zjh_TF_CC_1_DataOut[2]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_4 (.A(zjh_TF_CC_0_DataOut[1]), .B(
        zjh_TF_CC_1_DataOut[1]), .Y(XNOR2_4_Y));
    AND3 AND3_1 (.A(XNOR2_6_Y), .B(XNOR2_4_Y), .C(XNOR2_0_Y), .Y(
        AND3_1_Y));
    XNOR2 XNOR2_5 (.A(zjh_TF_CC_0_DataOut[6]), .B(
        zjh_TF_CC_1_DataOut[6]), .Y(XNOR2_5_Y));
    AND3 AND3_0 (.A(XNOR2_7_Y), .B(XNOR2_1_Y), .C(XNOR2_3_Y), .Y(
        AND3_0_Y));
    XNOR2 XNOR2_6 (.A(DataIn_c_0), .B(DataIn_0_c_0), .Y(XNOR2_6_Y));
    VCC VCC_i (.Y(VCC));
    XNOR2 XNOR2_3 (.A(zjh_TF_CC_0_DataOut[5]), .B(
        zjh_TF_CC_1_DataOut[5]), .Y(XNOR2_3_Y));
    AND3 AND3_AEB (.A(AND2_0_Y), .B(AND3_1_Y), .C(AND3_0_Y), .Y(AEB_c));
    AND2 AND2_0 (.A(XNOR2_5_Y), .B(XNOR2_2_Y), .Y(AND2_0_Y));
    GND GND_i (.Y(GND));
    
endmodule


module zjh_TF_CC_1(
       zjh_TF_CC_0_DataOut,
       DataIn_c
    );
output [7:1] zjh_TF_CC_0_DataOut;
input  [7:0] DataIn_c;

    wire N_7, N_5, \DWACT_FINC_E[0] , I_19, I_17, I_14, I_12, I_9, I_7, 
        I_5, \DWACT_FINC_E[2] , N_3, \DWACT_FINC_E[1] , N_4, N_6, GND, 
        VCC;
    
    XNOR2 un1_DataOut_I_17 (.A(DataIn_c[6]), .B(N_3), .Y(I_17));
    NOR2 un1_DataOut_I_15 (.A(DataIn_c[3]), .B(DataIn_c[4]), .Y(
        \DWACT_FINC_E[1] ));
    NOR3 un1_DataOut_I_10 (.A(DataIn_c[1]), .B(DataIn_c[0]), .C(
        DataIn_c[2]), .Y(\DWACT_FINC_E[0] ));
    MX2 \DataOut_1[6]  (.A(DataIn_c[6]), .B(I_17), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[6]));
    MX2 \DataOut_1[5]  (.A(DataIn_c[5]), .B(I_14), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[5]));
    MX2 \DataOut_1[4]  (.A(DataIn_c[4]), .B(I_12), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[4]));
    NOR3B un1_DataOut_I_16 (.A(\DWACT_FINC_E[1] ), .B(
        \DWACT_FINC_E[0] ), .C(DataIn_c[5]), .Y(N_3));
    NOR3 un1_DataOut_I_8 (.A(DataIn_c[1]), .B(DataIn_c[0]), .C(
        DataIn_c[2]), .Y(N_6));
    MX2 \DataOut_1[3]  (.A(DataIn_c[3]), .B(I_9), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[3]));
    VCC VCC_i (.Y(VCC));
    NOR2B \DataOut_1[7]  (.A(DataIn_c[7]), .B(I_19), .Y(
        zjh_TF_CC_0_DataOut[7]));
    NOR2 un1_DataOut_I_6 (.A(DataIn_c[0]), .B(DataIn_c[1]), .Y(N_7));
    XNOR2 un1_DataOut_I_14 (.A(DataIn_c[5]), .B(N_4), .Y(I_14));
    XNOR2 un1_DataOut_I_9 (.A(DataIn_c[3]), .B(N_6), .Y(I_9));
    NOR3 un1_DataOut_I_18 (.A(DataIn_c[4]), .B(DataIn_c[3]), .C(
        DataIn_c[5]), .Y(\DWACT_FINC_E[2] ));
    GND GND_i (.Y(GND));
    OR3B un1_DataOut_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(DataIn_c[6]), .Y(I_19));
    XOR2 un1_DataOut_I_5 (.A(DataIn_c[0]), .B(DataIn_c[1]), .Y(I_5));
    MX2 \DataOut_1[1]  (.A(DataIn_c[1]), .B(I_5), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[1]));
    NOR3A un1_DataOut_I_13 (.A(\DWACT_FINC_E[0] ), .B(DataIn_c[3]), .C(
        DataIn_c[4]), .Y(N_4));
    XNOR2 un1_DataOut_I_12 (.A(DataIn_c[4]), .B(N_5), .Y(I_12));
    MX2 \DataOut_1[2]  (.A(DataIn_c[2]), .B(I_7), .S(DataIn_c[7]), .Y(
        zjh_TF_CC_0_DataOut[2]));
    NOR2A un1_DataOut_I_11 (.A(\DWACT_FINC_E[0] ), .B(DataIn_c[3]), .Y(
        N_5));
    XNOR2 un1_DataOut_I_7 (.A(DataIn_c[2]), .B(N_7), .Y(I_7));
    
endmodule


module zjh_TF_CC_1_0(
       zjh_TF_CC_1_DataOut,
       DataIn_0_c
    );
output [7:1] zjh_TF_CC_1_DataOut;
input  [7:0] DataIn_0_c;

    wire N_7, N_5, \DWACT_FINC_E[0] , I_19_0, I_17_0, I_14_0, I_12_0, 
        I_9_0, I_7_0, I_5_0, \DWACT_FINC_E[2] , N_3, \DWACT_FINC_E[1] , 
        N_4, N_6, GND, VCC;
    
    XNOR2 un1_DataOut_I_17 (.A(DataIn_0_c[6]), .B(N_3), .Y(I_17_0));
    NOR2 un1_DataOut_I_15 (.A(DataIn_0_c[3]), .B(DataIn_0_c[4]), .Y(
        \DWACT_FINC_E[1] ));
    NOR3 un1_DataOut_I_10 (.A(DataIn_0_c[1]), .B(DataIn_0_c[0]), .C(
        DataIn_0_c[2]), .Y(\DWACT_FINC_E[0] ));
    MX2 \DataOut_1[6]  (.A(DataIn_0_c[6]), .B(I_17_0), .S(
        DataIn_0_c[7]), .Y(zjh_TF_CC_1_DataOut[6]));
    MX2 \DataOut_1[5]  (.A(DataIn_0_c[5]), .B(I_14_0), .S(
        DataIn_0_c[7]), .Y(zjh_TF_CC_1_DataOut[5]));
    MX2 \DataOut_1[4]  (.A(DataIn_0_c[4]), .B(I_12_0), .S(
        DataIn_0_c[7]), .Y(zjh_TF_CC_1_DataOut[4]));
    NOR3B un1_DataOut_I_16 (.A(\DWACT_FINC_E[1] ), .B(
        \DWACT_FINC_E[0] ), .C(DataIn_0_c[5]), .Y(N_3));
    NOR3 un1_DataOut_I_8 (.A(DataIn_0_c[1]), .B(DataIn_0_c[0]), .C(
        DataIn_0_c[2]), .Y(N_6));
    MX2 \DataOut_1[3]  (.A(DataIn_0_c[3]), .B(I_9_0), .S(DataIn_0_c[7])
        , .Y(zjh_TF_CC_1_DataOut[3]));
    VCC VCC_i (.Y(VCC));
    NOR2B \DataOut_1[7]  (.A(DataIn_0_c[7]), .B(I_19_0), .Y(
        zjh_TF_CC_1_DataOut[7]));
    NOR2 un1_DataOut_I_6 (.A(DataIn_0_c[0]), .B(DataIn_0_c[1]), .Y(N_7)
        );
    XNOR2 un1_DataOut_I_14 (.A(DataIn_0_c[5]), .B(N_4), .Y(I_14_0));
    XNOR2 un1_DataOut_I_9 (.A(DataIn_0_c[3]), .B(N_6), .Y(I_9_0));
    NOR3 un1_DataOut_I_18 (.A(DataIn_0_c[4]), .B(DataIn_0_c[3]), .C(
        DataIn_0_c[5]), .Y(\DWACT_FINC_E[2] ));
    GND GND_i (.Y(GND));
    OR3B un1_DataOut_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(DataIn_0_c[6]), .Y(I_19_0));
    XOR2 un1_DataOut_I_5 (.A(DataIn_0_c[0]), .B(DataIn_0_c[1]), .Y(
        I_5_0));
    MX2 \DataOut_1[1]  (.A(DataIn_0_c[1]), .B(I_5_0), .S(DataIn_0_c[7])
        , .Y(zjh_TF_CC_1_DataOut[1]));
    NOR3A un1_DataOut_I_13 (.A(\DWACT_FINC_E[0] ), .B(DataIn_0_c[3]), 
        .C(DataIn_0_c[4]), .Y(N_4));
    XNOR2 un1_DataOut_I_12 (.A(DataIn_0_c[4]), .B(N_5), .Y(I_12_0));
    MX2 \DataOut_1[2]  (.A(DataIn_0_c[2]), .B(I_7_0), .S(DataIn_0_c[7])
        , .Y(zjh_TF_CC_1_DataOut[2]));
    NOR2A un1_DataOut_I_11 (.A(\DWACT_FINC_E[0] ), .B(DataIn_0_c[3]), 
        .Y(N_5));
    XNOR2 un1_DataOut_I_7 (.A(DataIn_0_c[2]), .B(N_7), .Y(I_7_0));
    
endmodule


module CP2(
       DataIn_c_0,
       DataIn_0_c_0,
       zjh_TF_CC_1_DataOut,
       zjh_TF_CC_0_DataOut,
       AGB_c
    );
input  DataIn_c_0;
input  DataIn_0_c_0;
input  [7:1] zjh_TF_CC_1_DataOut;
input  [7:1] zjh_TF_CC_0_DataOut;
output AGB_c;

    wire U1, XNOR2_1_Y, OR2A_1_Y, le_OUT, AND3_0_Y, AO1D_0_Y, 
        NAND3A_0_Y, NOR3A_0_Y, OR2A_2_Y, NAND3A_1_Y, U2, XNOR2_2_Y, 
        XNOR2_0_Y, AO1C_1_Y, AO1C_0_Y, NOR2A_0_Y, OR2A_3_Y, OR2A_0_Y, 
        AO1C_4_Y, AO1C_2_Y, AO1C_5_Y, AO1C_3_Y, GND, VCC;
    
    AO1C AO1C_3 (.A(zjh_TF_CC_0_DataOut[3]), .B(zjh_TF_CC_1_DataOut[3])
        , .C(NOR2A_0_Y), .Y(AO1C_3_Y));
    AO1C AO1C_2 (.A(zjh_TF_CC_1_DataOut[3]), .B(zjh_TF_CC_0_DataOut[3])
        , .C(AO1C_3_Y), .Y(AO1C_2_Y));
    AO1C AO1C_5 (.A(zjh_TF_CC_0_DataOut[5]), .B(zjh_TF_CC_1_DataOut[5])
        , .C(zjh_TF_CC_0_DataOut[4]), .Y(AO1C_5_Y));
    NOR3A NOR3A_0 (.A(OR2A_3_Y), .B(AO1C_5_Y), .C(
        zjh_TF_CC_1_DataOut[4]), .Y(NOR3A_0_Y));
    AO1D AO1D_0 (.A(AO1C_1_Y), .B(AO1C_4_Y), .C(AO1C_2_Y), .Y(AO1D_0_Y)
        );
    AND2A AND_SIGN (.A(zjh_TF_CC_0_DataOut[7]), .B(
        zjh_TF_CC_1_DataOut[7]), .Y(U2));
    AO1C AO1C_0 (.A(DataIn_0_c_0), .B(DataIn_c_0), .C(OR2A_1_Y), .Y(
        AO1C_0_Y));
    AND3 AND3_0 (.A(XNOR2_1_Y), .B(XNOR2_0_Y), .C(XNOR2_2_Y), .Y(
        AND3_0_Y));
    VCC VCC_i (.Y(VCC));
    AO1C AO1C_4 (.A(zjh_TF_CC_0_DataOut[2]), .B(zjh_TF_CC_1_DataOut[2])
        , .C(OR2A_0_Y), .Y(AO1C_4_Y));
    OR2A OR2A_0 (.A(zjh_TF_CC_1_DataOut[1]), .B(zjh_TF_CC_0_DataOut[1])
        , .Y(OR2A_0_Y));
    NAND3A NAND3A_1 (.A(zjh_TF_CC_1_DataOut[5]), .B(
        zjh_TF_CC_0_DataOut[5]), .C(OR2A_3_Y), .Y(NAND3A_1_Y));
    OR2A OR2A_3 (.A(zjh_TF_CC_1_DataOut[6]), .B(zjh_TF_CC_0_DataOut[6])
        , .Y(OR2A_3_Y));
    NOR2A NOR2A_0 (.A(zjh_TF_CC_0_DataOut[2]), .B(
        zjh_TF_CC_1_DataOut[2]), .Y(NOR2A_0_Y));
    GND GND_i (.Y(GND));
    AO1C AO1C_1 (.A(zjh_TF_CC_0_DataOut[3]), .B(zjh_TF_CC_1_DataOut[3])
        , .C(AO1C_0_Y), .Y(AO1C_1_Y));
    XNOR2 XNOR2_0 (.A(zjh_TF_CC_1_DataOut[5]), .B(
        zjh_TF_CC_0_DataOut[5]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(zjh_TF_CC_1_DataOut[6]), .B(
        zjh_TF_CC_0_DataOut[6]), .Y(XNOR2_2_Y));
    OR2A OR2A_2 (.A(zjh_TF_CC_0_DataOut[6]), .B(zjh_TF_CC_1_DataOut[6])
        , .Y(OR2A_2_Y));
    NAND3A NAND3A_0 (.A(NOR3A_0_Y), .B(OR2A_2_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_0_Y));
    AO1 AO1_le_OUT (.A(AND3_0_Y), .B(AO1D_0_Y), .C(NAND3A_0_Y), .Y(
        le_OUT));
    AO1 AND_AO21 (.A(le_OUT), .B(U1), .C(U2), .Y(AGB_c));
    OR2A OR2A_1 (.A(zjh_TF_CC_0_DataOut[1]), .B(zjh_TF_CC_1_DataOut[1])
        , .Y(OR2A_1_Y));
    XNOR2 XNOR2_1 (.A(zjh_TF_CC_1_DataOut[4]), .B(
        zjh_TF_CC_0_DataOut[4]), .Y(XNOR2_1_Y));
    OR2A OR_SIGN (.A(zjh_TF_CC_0_DataOut[7]), .B(
        zjh_TF_CC_1_DataOut[7]), .Y(U1));
    
endmodule


module CP1(
       DataIn_0_c_0,
       DataIn_c_0,
       zjh_TF_CC_0_DataOut,
       zjh_TF_CC_1_DataOut,
       ALB_c
    );
input  DataIn_0_c_0;
input  DataIn_c_0;
input  [7:1] zjh_TF_CC_0_DataOut;
input  [7:1] zjh_TF_CC_1_DataOut;
output ALB_c;

    wire U1, XNOR2_1_Y, OR2A_1_Y, le_OUT, AND3_0_Y, AO1D_0_Y, 
        NAND3A_0_Y, NOR3A_0_Y, OR2A_2_Y, NAND3A_1_Y, U2, XNOR2_2_Y, 
        XNOR2_0_Y, AO1C_1_Y, AO1C_0_Y, NOR2A_0_Y, OR2A_3_Y, OR2A_0_Y, 
        AO1C_4_Y, AO1C_2_Y, AO1C_5_Y, AO1C_3_Y, GND, VCC;
    
    AO1C AO1C_3 (.A(zjh_TF_CC_1_DataOut[3]), .B(zjh_TF_CC_0_DataOut[3])
        , .C(NOR2A_0_Y), .Y(AO1C_3_Y));
    AO1C AO1C_2 (.A(zjh_TF_CC_0_DataOut[3]), .B(zjh_TF_CC_1_DataOut[3])
        , .C(AO1C_3_Y), .Y(AO1C_2_Y));
    AO1C AO1C_5 (.A(zjh_TF_CC_1_DataOut[5]), .B(zjh_TF_CC_0_DataOut[5])
        , .C(zjh_TF_CC_1_DataOut[4]), .Y(AO1C_5_Y));
    NOR3A NOR3A_0 (.A(OR2A_3_Y), .B(AO1C_5_Y), .C(
        zjh_TF_CC_0_DataOut[4]), .Y(NOR3A_0_Y));
    AO1D AO1D_0 (.A(AO1C_1_Y), .B(AO1C_4_Y), .C(AO1C_2_Y), .Y(AO1D_0_Y)
        );
    AND2A AND_SIGN (.A(zjh_TF_CC_1_DataOut[7]), .B(
        zjh_TF_CC_0_DataOut[7]), .Y(U2));
    AO1C AO1C_0 (.A(DataIn_c_0), .B(DataIn_0_c_0), .C(OR2A_1_Y), .Y(
        AO1C_0_Y));
    AND3 AND3_0 (.A(XNOR2_1_Y), .B(XNOR2_0_Y), .C(XNOR2_2_Y), .Y(
        AND3_0_Y));
    VCC VCC_i (.Y(VCC));
    AO1C AO1C_4 (.A(zjh_TF_CC_1_DataOut[2]), .B(zjh_TF_CC_0_DataOut[2])
        , .C(OR2A_0_Y), .Y(AO1C_4_Y));
    OR2A OR2A_0 (.A(zjh_TF_CC_0_DataOut[1]), .B(zjh_TF_CC_1_DataOut[1])
        , .Y(OR2A_0_Y));
    NAND3A NAND3A_1 (.A(zjh_TF_CC_0_DataOut[5]), .B(
        zjh_TF_CC_1_DataOut[5]), .C(OR2A_3_Y), .Y(NAND3A_1_Y));
    OR2A OR2A_3 (.A(zjh_TF_CC_0_DataOut[6]), .B(zjh_TF_CC_1_DataOut[6])
        , .Y(OR2A_3_Y));
    NOR2A NOR2A_0 (.A(zjh_TF_CC_1_DataOut[2]), .B(
        zjh_TF_CC_0_DataOut[2]), .Y(NOR2A_0_Y));
    GND GND_i (.Y(GND));
    AO1C AO1C_1 (.A(zjh_TF_CC_1_DataOut[3]), .B(zjh_TF_CC_0_DataOut[3])
        , .C(AO1C_0_Y), .Y(AO1C_1_Y));
    XNOR2 XNOR2_0 (.A(zjh_TF_CC_0_DataOut[5]), .B(
        zjh_TF_CC_1_DataOut[5]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(zjh_TF_CC_0_DataOut[6]), .B(
        zjh_TF_CC_1_DataOut[6]), .Y(XNOR2_2_Y));
    OR2A OR2A_2 (.A(zjh_TF_CC_1_DataOut[6]), .B(zjh_TF_CC_0_DataOut[6])
        , .Y(OR2A_2_Y));
    NAND3A NAND3A_0 (.A(NOR3A_0_Y), .B(OR2A_2_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_0_Y));
    AO1 AO1_le_OUT (.A(AND3_0_Y), .B(AO1D_0_Y), .C(NAND3A_0_Y), .Y(
        le_OUT));
    AO1 AND_AO21 (.A(le_OUT), .B(U1), .C(U2), .Y(ALB_c));
    OR2A OR2A_1 (.A(zjh_TF_CC_1_DataOut[1]), .B(zjh_TF_CC_0_DataOut[1])
        , .Y(OR2A_1_Y));
    XNOR2 XNOR2_1 (.A(zjh_TF_CC_0_DataOut[4]), .B(
        zjh_TF_CC_1_DataOut[4]), .Y(XNOR2_1_Y));
    OR2A OR_SIGN (.A(zjh_TF_CC_1_DataOut[7]), .B(
        zjh_TF_CC_0_DataOut[7]), .Y(U1));
    
endmodule


module zjh_CE4(
       DataIn,
       DataIn_0,
       AEB,
       AGB,
       ALB
    );
input  [7:0] DataIn;
input  [7:0] DataIn_0;
output AEB;
output AGB;
output ALB;

    wire \zjh_TF_CC_0_DataOut[1] , \zjh_TF_CC_0_DataOut[2] , 
        \zjh_TF_CC_0_DataOut[3] , \zjh_TF_CC_0_DataOut[4] , 
        \zjh_TF_CC_0_DataOut[5] , \zjh_TF_CC_0_DataOut[6] , 
        \zjh_TF_CC_0_DataOut[7] , \zjh_TF_CC_1_DataOut[1] , 
        \zjh_TF_CC_1_DataOut[2] , \zjh_TF_CC_1_DataOut[3] , 
        \zjh_TF_CC_1_DataOut[4] , \zjh_TF_CC_1_DataOut[5] , 
        \zjh_TF_CC_1_DataOut[6] , \zjh_TF_CC_1_DataOut[7] , GND, VCC, 
        \DataIn_c[0] , \DataIn_c[1] , \DataIn_c[2] , \DataIn_c[3] , 
        \DataIn_c[4] , \DataIn_c[5] , \DataIn_c[6] , \DataIn_c[7] , 
        \DataIn_0_c[0] , \DataIn_0_c[1] , \DataIn_0_c[2] , 
        \DataIn_0_c[3] , \DataIn_0_c[4] , \DataIn_0_c[5] , 
        \DataIn_0_c[6] , \DataIn_0_c[7] , AEB_c, AGB_c, ALB_c;
    
    INBUF \DataIn_pad[5]  (.PAD(DataIn[5]), .Y(\DataIn_c[5] ));
    INBUF \DataIn_pad[1]  (.PAD(DataIn[1]), .Y(\DataIn_c[1] ));
    INBUF \DataIn_pad[0]  (.PAD(DataIn[0]), .Y(\DataIn_c[0] ));
    INBUF \DataIn_0_pad[1]  (.PAD(DataIn_0[1]), .Y(\DataIn_0_c[1] ));
    INBUF \DataIn_pad[4]  (.PAD(DataIn[4]), .Y(\DataIn_c[4] ));
    INBUF \DataIn_0_pad[5]  (.PAD(DataIn_0[5]), .Y(\DataIn_0_c[5] ));
    INBUF \DataIn_0_pad[3]  (.PAD(DataIn_0[3]), .Y(\DataIn_0_c[3] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF AEB_pad (.D(AEB_c), .PAD(AEB));
    INBUF \DataIn_pad[2]  (.PAD(DataIn[2]), .Y(\DataIn_c[2] ));
    OUTBUF ALB_pad (.D(ALB_c), .PAD(ALB));
    GND GND_i (.Y(GND));
    CP0 CP0_0 (.zjh_TF_CC_1_DataOut({\zjh_TF_CC_1_DataOut[7] , 
        \zjh_TF_CC_1_DataOut[6] , \zjh_TF_CC_1_DataOut[5] , 
        \zjh_TF_CC_1_DataOut[4] , \zjh_TF_CC_1_DataOut[3] , 
        \zjh_TF_CC_1_DataOut[2] , \zjh_TF_CC_1_DataOut[1] }), 
        .zjh_TF_CC_0_DataOut({\zjh_TF_CC_0_DataOut[7] , 
        \zjh_TF_CC_0_DataOut[6] , \zjh_TF_CC_0_DataOut[5] , 
        \zjh_TF_CC_0_DataOut[4] , \zjh_TF_CC_0_DataOut[3] , 
        \zjh_TF_CC_0_DataOut[2] , \zjh_TF_CC_0_DataOut[1] }), 
        .DataIn_0_c_0(\DataIn_0_c[0] ), .DataIn_c_0(\DataIn_c[0] ), 
        .AEB_c(AEB_c));
    OUTBUF AGB_pad (.D(AGB_c), .PAD(AGB));
    zjh_TF_CC_1 zjh_TF_CC_0 (.zjh_TF_CC_0_DataOut({
        \zjh_TF_CC_0_DataOut[7] , \zjh_TF_CC_0_DataOut[6] , 
        \zjh_TF_CC_0_DataOut[5] , \zjh_TF_CC_0_DataOut[4] , 
        \zjh_TF_CC_0_DataOut[3] , \zjh_TF_CC_0_DataOut[2] , 
        \zjh_TF_CC_0_DataOut[1] }), .DataIn_c({\DataIn_c[7] , 
        \DataIn_c[6] , \DataIn_c[5] , \DataIn_c[4] , \DataIn_c[3] , 
        \DataIn_c[2] , \DataIn_c[1] , \DataIn_c[0] }));
    INBUF \DataIn_0_pad[7]  (.PAD(DataIn_0[7]), .Y(\DataIn_0_c[7] ));
    zjh_TF_CC_1_0 zjh_TF_CC_1 (.zjh_TF_CC_1_DataOut({
        \zjh_TF_CC_1_DataOut[7] , \zjh_TF_CC_1_DataOut[6] , 
        \zjh_TF_CC_1_DataOut[5] , \zjh_TF_CC_1_DataOut[4] , 
        \zjh_TF_CC_1_DataOut[3] , \zjh_TF_CC_1_DataOut[2] , 
        \zjh_TF_CC_1_DataOut[1] }), .DataIn_0_c({\DataIn_0_c[7] , 
        \DataIn_0_c[6] , \DataIn_0_c[5] , \DataIn_0_c[4] , 
        \DataIn_0_c[3] , \DataIn_0_c[2] , \DataIn_0_c[1] , 
        \DataIn_0_c[0] }));
    INBUF \DataIn_0_pad[2]  (.PAD(DataIn_0[2]), .Y(\DataIn_0_c[2] ));
    INBUF \DataIn_pad[6]  (.PAD(DataIn[6]), .Y(\DataIn_c[6] ));
    INBUF \DataIn_0_pad[6]  (.PAD(DataIn_0[6]), .Y(\DataIn_0_c[6] ));
    INBUF \DataIn_0_pad[4]  (.PAD(DataIn_0[4]), .Y(\DataIn_0_c[4] ));
    CP2 CP2_0 (.DataIn_c_0(\DataIn_c[0] ), .DataIn_0_c_0(
        \DataIn_0_c[0] ), .zjh_TF_CC_1_DataOut({
        \zjh_TF_CC_1_DataOut[7] , \zjh_TF_CC_1_DataOut[6] , 
        \zjh_TF_CC_1_DataOut[5] , \zjh_TF_CC_1_DataOut[4] , 
        \zjh_TF_CC_1_DataOut[3] , \zjh_TF_CC_1_DataOut[2] , 
        \zjh_TF_CC_1_DataOut[1] }), .zjh_TF_CC_0_DataOut({
        \zjh_TF_CC_0_DataOut[7] , \zjh_TF_CC_0_DataOut[6] , 
        \zjh_TF_CC_0_DataOut[5] , \zjh_TF_CC_0_DataOut[4] , 
        \zjh_TF_CC_0_DataOut[3] , \zjh_TF_CC_0_DataOut[2] , 
        \zjh_TF_CC_0_DataOut[1] }), .AGB_c(AGB_c));
    INBUF \DataIn_pad[3]  (.PAD(DataIn[3]), .Y(\DataIn_c[3] ));
    INBUF \DataIn_pad[7]  (.PAD(DataIn[7]), .Y(\DataIn_c[7] ));
    INBUF \DataIn_0_pad[0]  (.PAD(DataIn_0[0]), .Y(\DataIn_0_c[0] ));
    CP1 CP1_0 (.DataIn_0_c_0(\DataIn_0_c[0] ), .DataIn_c_0(
        \DataIn_c[0] ), .zjh_TF_CC_0_DataOut({\zjh_TF_CC_0_DataOut[7] , 
        \zjh_TF_CC_0_DataOut[6] , \zjh_TF_CC_0_DataOut[5] , 
        \zjh_TF_CC_0_DataOut[4] , \zjh_TF_CC_0_DataOut[3] , 
        \zjh_TF_CC_0_DataOut[2] , \zjh_TF_CC_0_DataOut[1] }), 
        .zjh_TF_CC_1_DataOut({\zjh_TF_CC_1_DataOut[7] , 
        \zjh_TF_CC_1_DataOut[6] , \zjh_TF_CC_1_DataOut[5] , 
        \zjh_TF_CC_1_DataOut[4] , \zjh_TF_CC_1_DataOut[3] , 
        \zjh_TF_CC_1_DataOut[2] , \zjh_TF_CC_1_DataOut[1] }), .ALB_c(
        ALB_c));
    
endmodule
