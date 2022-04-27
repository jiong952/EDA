`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC283(
       A,
       B,
       Cin,
       S,
       Cout
    );
input  [3:0] A;
input  [3:0] B;
input  Cin;
output [3:0] S;
output Cout;

    wire GND, VCC, \S_1_0_0.N_12 , \S_1_0_0.N_14 , \S_1_0_0.N_15 , 
        \S_1_0_0.N_16 , \A_c[0] , \A_c[1] , \A_c[2] , \A_c[3] , 
        \B_c[0] , \B_c[1] , \B_c[2] , \B_c[3] , Cin_c, \S_c[3] , 
        \S_1_0_0.N_21_i_i , \S_1_0_0.N_22_i_i , \S_1_0_0.N_23_i_i ;
    
    INBUF \B_pad[3]  (.PAD(B[3]), .Y(\B_c[3] ));
    INBUF \B_pad[2]  (.PAD(B[2]), .Y(\B_c[2] ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I2_S_i_o3 (.A(\S_1_0_0.N_14 ), .B(
        \A_c[1] ), .C(\B_c[1] ), .Y(\S_1_0_0.N_15 ));
    OUTBUF \S_pad[3]  (.D(\S_c[3] ), .PAD(S[3]));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    VCC VCC_i (.Y(VCC));
    MAJ3 S_1_0_0_ADD_4x4_slow_I3_CO1_i_o3 (.A(\S_1_0_0.N_15 ), .B(
        \A_c[2] ), .C(\B_c[2] ), .Y(\S_1_0_0.N_16 ));
    XOR3 S_1_0_0_ADD_4x4_slow_I2_S_i_x3 (.A(\A_c[2] ), .B(\B_c[2] ), 
        .C(\S_1_0_0.N_15 ), .Y(\S_1_0_0.N_23_i_i ));
    XOR3 S_1_0_0_ADD_4x4_slow_I1_S_i_x3 (.A(\A_c[1] ), .B(\B_c[1] ), 
        .C(\S_1_0_0.N_14 ), .Y(\S_1_0_0.N_22_i_i ));
    INBUF \B_pad[1]  (.PAD(B[1]), .Y(\B_c[1] ));
    OUTBUF \S_pad[1]  (.D(\S_1_0_0.N_22_i_i ), .PAD(S[1]));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF Cout_pad (.D(\S_1_0_0.N_12 ), .PAD(Cout));
    OUTBUF \S_pad[0]  (.D(\S_1_0_0.N_21_i_i ), .PAD(S[0]));
    XOR3 S_1_0_0_ADD_4x4_slow_I3_S_i_x2 (.A(\A_c[3] ), .B(
        \S_1_0_0.N_16 ), .C(\B_c[3] ), .Y(\S_c[3] ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I3_CO1_i (.A(\A_c[3] ), .B(\B_c[3] ), .C(
        \S_1_0_0.N_16 ), .Y(\S_1_0_0.N_12 ));
    OUTBUF \S_pad[2]  (.D(\S_1_0_0.N_23_i_i ), .PAD(S[2]));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    XOR3 S_1_0_0_ADD_4x4_slow_I0_S_i_x3 (.A(Cin_c), .B(\B_c[0] ), .C(
        \A_c[0] ), .Y(\S_1_0_0.N_21_i_i ));
    INBUF Cin_pad (.PAD(Cin), .Y(Cin_c));
    INBUF \B_pad[0]  (.PAD(B[0]), .Y(\B_c[0] ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I1_S_i_o3 (.A(\A_c[0] ), .B(Cin_c), .C(
        \B_c[0] ), .Y(\S_1_0_0.N_14 ));
    
endmodule
