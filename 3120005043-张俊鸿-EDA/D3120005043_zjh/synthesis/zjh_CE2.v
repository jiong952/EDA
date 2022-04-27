`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC85(
       Q_net_0,
       B2_c,
       B1_c,
       B0_c,
       INV_0_Y,
       B3_c
    );
input  [3:0] Q_net_0;
input  B2_c;
input  B1_c;
input  B0_c;
output INV_0_Y;
input  B3_c;

    wire un1_A_NE_0_net_1, un1_A_2_net_1, un1_A_0_net_1, un1_A_1_net_1, 
        GND, VCC;
    
    XOR2 un1_A_1 (.A(B1_c), .B(Q_net_0[1]), .Y(un1_A_1_net_1));
    XOR2 un1_A_0 (.A(B0_c), .B(Q_net_0[0]), .Y(un1_A_0_net_1));
    VCC VCC_i (.Y(VCC));
    OR3 un1_A_NE (.A(un1_A_0_net_1), .B(un1_A_1_net_1), .C(
        un1_A_NE_0_net_1), .Y(INV_0_Y));
    XO1 un1_A_NE_0 (.A(Q_net_0[3]), .B(B3_c), .C(un1_A_2_net_1), .Y(
        un1_A_NE_0_net_1));
    XOR2 un1_A_2 (.A(B2_c), .B(Q_net_0[2]), .Y(un1_A_2_net_1));
    GND GND_i (.Y(GND));
    
endmodule


module zjh_74HC4511(
       L_2_i_6,
       L_2_i_3,
       L_2_i_0,
       L_2_i_2,
       L_2_i_5,
       Q_net_0,
       Q_c1,
       Q_c2,
       c_c,
       f_c
    );
output L_2_i_6;
output L_2_i_3;
output L_2_i_0;
output L_2_i_2;
output L_2_i_5;
input  [3:0] Q_net_0;
input  Q_c1;
input  Q_c2;
output c_c;
output f_c;

    wire \L_2_0_0[1]_net_1 , N_30, N_52, N_45, N_46, N_40, N_29, N_42, 
        N_41, N_34, N_36, N_35, N_45_1, N_27, N_39, N_44, GND, VCC;
    
    NOR2A \L_2_0_a2_1[1]  (.A(Q_net_0[3]), .B(Q_net_0[2]), .Y(N_52));
    OA1C \L_2_0_a4[4]  (.A(Q_net_0[2]), .B(Q_net_0[0]), .C(Q_net_0[1]), 
        .Y(N_42));
    NOR2 \L_2_i_a4[0]  (.A(N_27), .B(Q_net_0[2]), .Y(N_34));
    NOR3 \L_2_i[3]  (.A(N_40), .B(N_41), .C(Q_c2), .Y(L_2_i_3));
    NOR3B \L_2_i_a4_1[0]  (.A(Q_net_0[2]), .B(N_45_1), .C(Q_net_0[0]), 
        .Y(N_36));
    NOR2A \L_2_i_a4_0[2]  (.A(Q_net_0[0]), .B(Q_net_0[3]), .Y(N_39));
    VCC VCC_i (.Y(VCC));
    NOR2B \L_2_i_a4_0[6]  (.A(Q_c1), .B(N_52), .Y(N_46));
    NOR3B \L_2_i_a4_0[3]  (.A(Q_net_0[1]), .B(N_52), .C(Q_net_0[0]), 
        .Y(N_41));
    NOR3 \L_2_i[0]  (.A(N_34), .B(N_36), .C(N_35), .Y(L_2_i_0));
    NOR3C \L_2_i_a4[6]  (.A(Q_net_0[2]), .B(N_45_1), .C(Q_net_0[0]), 
        .Y(N_45));
    XA1B \L_2_i_a4[3]  (.A(Q_net_0[0]), .B(Q_net_0[2]), .C(N_27), .Y(
        N_40));
    OR3 \L_2_0[1]  (.A(N_30), .B(N_52), .C(\L_2_0_0[1]_net_1 ), .Y(f_c)
        );
    MX2A \L_2_0_m2[4]  (.A(Q_net_0[0]), .B(Q_net_0[3]), .S(Q_net_0[2]), 
        .Y(N_29));
    OA1C \L_2_0_0[1]  (.A(Q_net_0[1]), .B(Q_net_0[2]), .C(Q_net_0[0]), 
        .Y(\L_2_0_0[1]_net_1 ));
    GND GND_i (.Y(GND));
    AOI1 \L_2_i[5]  (.A(N_30), .B(Q_net_0[0]), .C(N_44), .Y(L_2_i_5));
    AXOI7 \L_2_0_o4[1]  (.A(Q_net_0[2]), .B(Q_net_0[1]), .C(Q_net_0[3])
        , .Y(N_30));
    NOR2A \L_2_i_a4_1[6]  (.A(Q_net_0[3]), .B(Q_net_0[1]), .Y(N_45_1));
    OR2 \L_2_i_o2[5]  (.A(Q_net_0[3]), .B(Q_net_0[1]), .Y(N_27));
    NOR3B \L_2_i_a4_0[5]  (.A(Q_net_0[2]), .B(N_27), .C(Q_net_0[0]), 
        .Y(N_44));
    NOR3 \L_2_i[6]  (.A(N_45), .B(N_46), .C(N_40), .Y(L_2_i_6));
    OA1B \L_2_i[2]  (.A(Q_net_0[1]), .B(N_29), .C(N_39), .Y(L_2_i_2));
    NOR2A \L_2_i_a4_0[0]  (.A(Q_c2), .B(Q_net_0[3]), .Y(N_35));
    OR3A \L_2_0[4]  (.A(N_29), .B(N_42), .C(N_52), .Y(c_c));
    
endmodule


module zjh_74HC161(
       Q_net_0,
       MR_c,
       Clk_c,
       A0_c,
       A3_c,
       Q_c2,
       A2_c,
       Q_c1,
       INV_0_Y,
       A1_c
    );
output [3:0] Q_net_0;
input  MR_c;
input  Clk_c;
input  A0_c;
input  A3_c;
output Q_c2;
input  A2_c;
output Q_c1;
input  INV_0_Y;
input  A1_c;

    wire N_8, N_10, N_12, Q_n0, Q_n1, Q_n2, Q_n3, GND, VCC;
    
    AX1C \Q_RNO[2]  (.A(INV_0_Y), .B(Q_c1), .C(N_10), .Y(Q_n2));
    NOR2B \Q_RNIGF491[2]  (.A(Q_c1), .B(Q_net_0[2]), .Y(Q_c2));
    DFN1C0 \Q[3]  (.D(Q_n3), .CLK(Clk_c), .CLR(MR_c), .Q(Q_net_0[3]));
    MX2B \Q_RNO[0]  (.A(A0_c), .B(Q_net_0[0]), .S(INV_0_Y), .Y(Q_n0));
    MX2 \Q_RNO_0[3]  (.A(A3_c), .B(Q_net_0[3]), .S(INV_0_Y), .Y(N_12));
    AX1C \Q_RNO[1]  (.A(Q_net_0[0]), .B(INV_0_Y), .C(N_8), .Y(Q_n1));
    DFN1C0 \Q[1]  (.D(Q_n1), .CLK(Clk_c), .CLR(MR_c), .Q(Q_net_0[1]));
    MX2 \Q_RNO_0[2]  (.A(A2_c), .B(Q_net_0[2]), .S(INV_0_Y), .Y(N_10));
    AX1C \Q_RNO[3]  (.A(INV_0_Y), .B(Q_c2), .C(N_12), .Y(Q_n3));
    DFN1C0 \Q[2]  (.D(Q_n2), .CLK(Clk_c), .CLR(MR_c), .Q(Q_net_0[2]));
    NOR2B \Q_RNIVJDR[1]  (.A(Q_net_0[1]), .B(Q_net_0[0]), .Y(Q_c1));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \Q[0]  (.D(Q_n0), .CLK(Clk_c), .CLR(MR_c), .Q(Q_net_0[0]));
    GND GND_i (.Y(GND));
    MX2 \Q_RNO_0[1]  (.A(A1_c), .B(Q_net_0[1]), .S(INV_0_Y), .Y(N_8));
    
endmodule


module zjh_CE2(
       A0,
       A1,
       A2,
       A3,
       B0,
       B1,
       B2,
       B3,
       Clk,
       MR,
       a,
       b,
       c,
       d,
       e,
       f,
       g
    );
input  A0;
input  A1;
input  A2;
input  A3;
input  B0;
input  B1;
input  B2;
input  B3;
input  Clk;
input  MR;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

    wire INV_0_Y, \Q_net_0[0] , \Q_net_0[1] , \Q_net_0[2] , 
        \Q_net_0[3] , GND, VCC, \L_2_i[0] , \L_2_i[2] , \L_2_i[3] , 
        \L_2_i[5] , \L_2_i[6] , A0_c, A1_c, A2_c, A3_c, B0_c, B1_c, 
        B2_c, B3_c, Clk_c, MR_c, c_c, f_c, \zjh_74HC161_0.Q_c2 , 
        \zjh_74HC161_0.Q_c1 ;
    
    OUTBUF f_pad (.D(f_c), .PAD(f));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    INBUF B0_pad (.PAD(B0), .Y(B0_c));
    INBUF B3_pad (.PAD(B3), .Y(B3_c));
    OUTBUF a_pad (.D(\L_2_i[6] ), .PAD(a));
    VCC VCC_i (.Y(VCC));
    OUTBUF c_pad (.D(c_c), .PAD(c));
    INBUF A2_pad (.PAD(A2), .Y(A2_c));
    INBUF A1_pad (.PAD(A1), .Y(A1_c));
    OUTBUF b_pad (.D(\L_2_i[5] ), .PAD(b));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    GND GND_i (.Y(GND));
    zjh_74HC85 zjh_74HC85_0 (.Q_net_0({\Q_net_0[3] , \Q_net_0[2] , 
        \Q_net_0[1] , \Q_net_0[0] }), .B2_c(B2_c), .B1_c(B1_c), .B0_c(
        B0_c), .INV_0_Y(INV_0_Y), .B3_c(B3_c));
    OUTBUF d_pad (.D(\L_2_i[3] ), .PAD(d));
    INBUF A0_pad (.PAD(A0), .Y(A0_c));
    INBUF A3_pad (.PAD(A3), .Y(A3_c));
    zjh_74HC4511 zjh_74HC4511_0 (.L_2_i_6(\L_2_i[6] ), .L_2_i_3(
        \L_2_i[3] ), .L_2_i_0(\L_2_i[0] ), .L_2_i_2(\L_2_i[2] ), 
        .L_2_i_5(\L_2_i[5] ), .Q_net_0({\Q_net_0[3] , \Q_net_0[2] , 
        \Q_net_0[1] , \Q_net_0[0] }), .Q_c1(\zjh_74HC161_0.Q_c1 ), 
        .Q_c2(\zjh_74HC161_0.Q_c2 ), .c_c(c_c), .f_c(f_c));
    INBUF B2_pad (.PAD(B2), .Y(B2_c));
    INBUF B1_pad (.PAD(B1), .Y(B1_c));
    zjh_74HC161 zjh_74HC161_0 (.Q_net_0({\Q_net_0[3] , \Q_net_0[2] , 
        \Q_net_0[1] , \Q_net_0[0] }), .MR_c(MR_c), .Clk_c(Clk_c), 
        .A0_c(A0_c), .A3_c(A3_c), .Q_c2(\zjh_74HC161_0.Q_c2 ), .A2_c(
        A2_c), .Q_c1(\zjh_74HC161_0.Q_c1 ), .INV_0_Y(INV_0_Y), .A1_c(
        A1_c));
    OUTBUF g_pad (.D(\L_2_i[0] ), .PAD(g));
    OUTBUF e_pad (.D(\L_2_i[2] ), .PAD(e));
    
endmodule
