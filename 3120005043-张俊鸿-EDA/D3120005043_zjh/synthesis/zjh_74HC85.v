`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC85(
       A,
       B,
       IAGB,
       IASB,
       IAEB,
       QAGB,
       QASB,
       QAEB
    );
input  [3:0] A;
input  [3:0] B;
input  IAGB;
input  IASB;
input  IAEB;
output QAGB;
output QASB;
output QAEB;

    wire QAGB16, QAGB17, un1_A_0, un1_A_2, GND, VCC, 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \A_c[0] , \A_c[1] , \A_c[2] , \A_c[3] , \B_c[0] , \B_c[1] , 
        \B_c[2] , \B_c[3] , IAGB_c, IASB_c, IAEB_c, QAGB_c, QASB_c, 
        QAEB_c, un1_A_NE_0, un1_A_NE_1, QASB_0_a3_0, QAGB_0_a3_0;
    
    AND2A QAGB17_0_I_3 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    OR2A QAGB17_0_I_5 (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ));
    INBUF \B_pad[3]  (.PAD(B[3]), .Y(\B_c[3] ));
    OR2A QAGB17_0_I_2 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    NOR3 QAGB_pad_RNO_0 (.A(un1_A_NE_0), .B(un1_A_NE_1), .C(IASB_c), 
        .Y(QAGB_0_a3_0));
    AO1A QAGB_pad_RNO (.A(IAEB_c), .B(QAGB_0_a3_0), .C(QAGB16), .Y(
        QAGB_c));
    INBUF IASB_pad (.PAD(IASB), .Y(IASB_c));
    OR2A QAGB16_0_I_9 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    NOR2A QAGB16_0_I_7 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    VCC VCC_i (.Y(VCC));
    XOR2 \A_pad_RNIV4P7[2]  (.A(\A_c[2] ), .B(\B_c[2] ), .Y(un1_A_2));
    OR2A QAGB16_0_I_2 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    OUTBUF QAGB_pad (.D(QAGB_c), .PAD(QAGB));
    NOR2A QAGB16_0_I_1 (.A(\A_c[0] ), .B(\B_c[0] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    INBUF \B_pad[2]  (.PAD(B[2]), .Y(\B_c[2] ));
    AOI1A QAGB17_0_I_11 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB17));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    INBUF IAGB_pad (.PAD(IAGB), .Y(IAGB_c));
    OUTBUF QASB_pad (.D(QASB_c), .PAD(QASB));
    OR2A QAGB17_0_I_9 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A QAGB17_0_I_4 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    XOR2 \A_pad_RNIR0P7[0]  (.A(\A_c[0] ), .B(\B_c[0] ), .Y(un1_A_0));
    INBUF \B_pad[1]  (.PAD(B[1]), .Y(\B_c[1] ));
    NOR3A QAEB_pad_RNO (.A(IAEB_c), .B(un1_A_NE_0), .C(un1_A_NE_1), .Y(
        QAEB_c));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    GND GND_i (.Y(GND));
    XO1 \A_pad_RNI0CIF[3]  (.A(\B_c[3] ), .B(\A_c[3] ), .C(un1_A_2), 
        .Y(un1_A_NE_1));
    AO1A QASB_pad_RNO (.A(IAEB_c), .B(QASB_0_a3_0), .C(QAGB17), .Y(
        QASB_c));
    AOI1A QAGB17_0_I_10 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    NOR2A QAGB17_0_I_6 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    AOI1A QAGB16_0_I_11 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB16));
    INBUF \B_pad[0]  (.PAD(B[0]), .Y(\B_c[0] ));
    OR2A QAGB16_0_I_5 (.A(\A_c[2] ), .B(\B_c[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ));
    XO1 \A_pad_RNIO3IF[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .C(un1_A_0), 
        .Y(un1_A_NE_0));
    NOR2A QAGB16_0_I_6 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    INBUF IAEB_pad (.PAD(IAEB), .Y(IAEB_c));
    OUTBUF QAEB_pad (.D(QAEB_c), .PAD(QAEB));
    NOR3 QASB_pad_RNO_0 (.A(un1_A_NE_0), .B(un1_A_NE_1), .C(IAGB_c), 
        .Y(QASB_0_a3_0));
    AND2A QAGB16_0_I_3 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    NOR2A QAGB17_0_I_7 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    NOR2A QAGB17_0_I_1 (.A(\B_c[0] ), .B(\A_c[0] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    AOI1A QAGB16_0_I_4 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    AOI1A QAGB16_0_I_10 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    NOR2A QAGB17_0_I_8 (.A(\A_c[2] ), .B(\B_c[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    NOR2A QAGB16_0_I_8 (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    
endmodule
