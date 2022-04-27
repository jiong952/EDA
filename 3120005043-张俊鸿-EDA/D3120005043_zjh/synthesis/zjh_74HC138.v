`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC138(
       E,
       A,
       Y
    );
input  [2:0] E;
input  [2:0] A;
output [7:0] Y;

    wire GND, VCC, Y78_net_1, \Y_2[0]_net_1 , \Y_2[2]_net_1 , 
        \Y_1[3]_net_1 , \E_c[0] , \E_c[1] , \E_c[2] , \A_c[0] , 
        \A_c[1] , \A_c[2] , \Y_c[0] , \Y_c[1] , \Y_c[2] , \Y_c[3] , 
        \Y_c[4] , \Y_c[5] , \Y_c[6] , \Y_c[7] , \Y_0[6]_net_1 ;
    
    OR3B \Y[5]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\Y_2[0]_net_1 ), .Y(
        \Y_c[5] ));
    OR3 \Y[6]  (.A(\A_c[0] ), .B(Y78_net_1), .C(\Y_0[6]_net_1 ), .Y(
        \Y_c[6] ));
    OR3A \Y[4]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\Y_2[0]_net_1 ), .Y(
        \Y_c[4] ));
    OR2 \Y_2[0]  (.A(Y78_net_1), .B(\A_c[1] ), .Y(\Y_2[0]_net_1 ));
    OR2B \Y_1[3]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[3]_net_1 ));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    OUTBUF \Y_pad[6]  (.D(\Y_c[6] ), .PAD(Y[6]));
    VCC VCC_i (.Y(VCC));
    OR3 \Y[0]  (.A(\A_c[2] ), .B(\Y_2[0]_net_1 ), .C(\A_c[0] ), .Y(
        \Y_c[0] ));
    OUTBUF \Y_pad[7]  (.D(\Y_c[7] ), .PAD(Y[7]));
    OR2B \Y_0[6]  (.A(\A_c[2] ), .B(\A_c[1] ), .Y(\Y_0[6]_net_1 ));
    INBUF \E_pad[0]  (.PAD(E[0]), .Y(\E_c[0] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \E_pad[1]  (.PAD(E[1]), .Y(\E_c[1] ));
    OR3A \Y[7]  (.A(\A_c[2] ), .B(Y78_net_1), .C(\Y_1[3]_net_1 ), .Y(
        \Y_c[7] ));
    OUTBUF \Y_pad[4]  (.D(\Y_c[4] ), .PAD(Y[4]));
    OUTBUF \Y_pad[0]  (.D(\Y_c[0] ), .PAD(Y[0]));
    INBUF \E_pad[2]  (.PAD(E[2]), .Y(\E_c[2] ));
    OR2 \Y_2[2]  (.A(Y78_net_1), .B(\A_c[2] ), .Y(\Y_2[2]_net_1 ));
    OR3A \Y[1]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(\Y_2[0]_net_1 ), .Y(
        \Y_c[1] ));
    OR3A Y78 (.A(\E_c[2] ), .B(\E_c[1] ), .C(\E_c[0] ), .Y(Y78_net_1));
    OUTBUF \Y_pad[5]  (.D(\Y_c[5] ), .PAD(Y[5]));
    OR2 \Y[3]  (.A(\Y_2[2]_net_1 ), .B(\Y_1[3]_net_1 ), .Y(\Y_c[3] ));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    OUTBUF \Y_pad[1]  (.D(\Y_c[1] ), .PAD(Y[1]));
    OR3A \Y[2]  (.A(\A_c[1] ), .B(\A_c[0] ), .C(\Y_2[2]_net_1 ), .Y(
        \Y_c[2] ));
    OUTBUF \Y_pad[2]  (.D(\Y_c[2] ), .PAD(Y[2]));
    OUTBUF \Y_pad[3]  (.D(\Y_c[3] ), .PAD(Y[3]));
    
endmodule
