`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_TF_CC(
       A,
       B
    );
input  [3:0] A;
output [3:0] B;

    wire I_5, I_7, I_8, VCC, GND, \un2_B.N_3 , \A_c[1] , \A_c[2] , 
        \A_c[3] , \A_c_c[0] , \B_c[1] , \B_c[2] , \B_c[3] ;
    
    OUTBUF \B_pad[3]  (.D(\B_c[3] ), .PAD(B[3]));
    OUTBUF \B_pad[2]  (.D(\B_c[2] ), .PAD(B[2]));
    MX2 \B_pad_RNO[1]  (.A(\A_c[1] ), .B(I_5), .S(\A_c[3] ), .Y(
        \B_c[1] ));
    XNOR2 un2_B_I_7 (.A(\A_c[2] ), .B(\un2_B.N_3 ), .Y(I_7));
    OR3 un2_B_I_8 (.A(\A_c_c[0] ), .B(\A_c[2] ), .C(\A_c[1] ), .Y(I_8));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c_c[0] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF \B_pad[1]  (.D(\B_c[1] ), .PAD(B[1]));
    NOR2B \B_pad_RNO[3]  (.A(\A_c[3] ), .B(I_8), .Y(\B_c[3] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    XOR2 un2_B_I_5 (.A(\A_c_c[0] ), .B(\A_c[1] ), .Y(I_5));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    NOR2 un2_B_I_6 (.A(\A_c_c[0] ), .B(\A_c[1] ), .Y(\un2_B.N_3 ));
    OUTBUF \B_pad[0]  (.D(\A_c_c[0] ), .PAD(B[0]));
    MX2 \B_pad_RNO[2]  (.A(\A_c[2] ), .B(I_7), .S(\A_c[3] ), .Y(
        \B_c[2] ));
    
endmodule
