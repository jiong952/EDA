`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC194(
       MR_N,
       S,
       D,
       Clk,
       In,
       Out
    );
input  MR_N;
input  [1:0] S;
input  [1:0] D;
input  Clk;
input  [0:3] In;
output [0:3] Out;

    wire Out30, \Out_11[3] , \Out_11[2] , \Out_11[1] , \Out_11[0] , 
        GND, VCC, N_6, N_7, N_8, N_9, Out_11_sn_N_2, MR_N_c, \S_c[0] , 
        \S_c[1] , \D_c[0] , \D_c[1] , Clk_c, \In_c[3] , \In_c[2] , 
        \In_c[1] , \In_c[0] , \Out_c[3] , \Out_c[2] , \Out_c[1] , 
        \Out_c[0] ;
    
    NOR2 \S_pad_RNIVNV7_0[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(Out30));
    MX2 \Out_RNO[0]  (.A(N_9), .B(\In_c[0] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[0] ));
    OUTBUF \Out_pad[1]  (.D(\Out_c[1] ), .PAD(Out[1]));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    MX2 \Out_RNO_0[1]  (.A(\Out_c[2] ), .B(\Out_c[0] ), .S(\S_c[0] ), 
        .Y(N_8));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    OUTBUF \Out_pad[2]  (.D(\Out_c[2] ), .PAD(Out[2]));
    DFN1E0C0 \Out[1]  (.D(\Out_11[1] ), .CLK(Clk_c), .CLR(MR_N_c), .E(
        Out30), .Q(\Out_c[1] ));
    VCC VCC_i (.Y(VCC));
    INBUF \S_pad[1]  (.PAD(S[1]), .Y(\S_c[1] ));
    INBUF \D_pad[0]  (.PAD(D[0]), .Y(\D_c[0] ));
    MX2 \Out_RNO_0[3]  (.A(\D_c[0] ), .B(\Out_c[2] ), .S(\S_c[0] ), .Y(
        N_6));
    DFN1E0C0 \Out[0]  (.D(\Out_11[0] ), .CLK(Clk_c), .CLR(MR_N_c), .E(
        Out30), .Q(\Out_c[0] ));
    GND GND_i (.Y(GND));
    INBUF \S_pad[0]  (.PAD(S[0]), .Y(\S_c[0] ));
    MX2 \Out_RNO[3]  (.A(N_6), .B(\In_c[3] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[3] ));
    DFN1E0C0 \Out[2]  (.D(\Out_11[2] ), .CLK(Clk_c), .CLR(MR_N_c), .E(
        Out30), .Q(\Out_c[2] ));
    INBUF \In_pad[3]  (.PAD(In[3]), .Y(\In_c[3] ));
    MX2 \Out_RNO[1]  (.A(N_8), .B(\In_c[1] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[1] ));
    INBUF \In_pad[1]  (.PAD(In[1]), .Y(\In_c[1] ));
    DFN1E0C0 \Out[3]  (.D(\Out_11[3] ), .CLK(Clk_c), .CLR(MR_N_c), .E(
        Out30), .Q(\Out_c[3] ));
    INBUF \In_pad[2]  (.PAD(In[2]), .Y(\In_c[2] ));
    MX2 \Out_RNO_0[0]  (.A(\Out_c[1] ), .B(\D_c[1] ), .S(\S_c[0] ), .Y(
        N_9));
    OUTBUF \Out_pad[0]  (.D(\Out_c[0] ), .PAD(Out[0]));
    MX2 \Out_RNO[2]  (.A(N_7), .B(\In_c[2] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[2] ));
    MX2 \Out_RNO_0[2]  (.A(\Out_c[3] ), .B(\Out_c[1] ), .S(\S_c[0] ), 
        .Y(N_7));
    NOR2B \S_pad_RNIVNV7[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(
        Out_11_sn_N_2));
    INBUF \In_pad[0]  (.PAD(In[0]), .Y(\In_c[0] ));
    INBUF MR_N_pad (.PAD(MR_N), .Y(MR_N_c));
    OUTBUF \Out_pad[3]  (.D(\Out_c[3] ), .PAD(Out[3]));
    
endmodule
