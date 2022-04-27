`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC161(
       MR_c,
       Clk_c,
       Q1_c,
       Q0_c,
       Q2_c,
       C_c,
       Q3_c
    );
input  MR_c;
input  Clk_c;
output Q1_c;
output Q0_c;
output Q2_c;
input  C_c;
output Q3_c;

    wire Q_n3_net_1, Q_8_0_net_1, Q_n2_net_1, Q_c1_net_1, Q_n1_net_1, 
        Q_n0_net_1, GND, VCC;
    
    NOR2 Q_n0 (.A(Q0_c), .B(C_c), .Y(Q_n0_net_1));
    DFN1C0 \Q[3]  (.D(Q_n3_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(Q3_c));
    NOR2B Q_c1 (.A(Q0_c), .B(Q1_c), .Y(Q_c1_net_1));
    XA1B Q_n2 (.A(Q2_c), .B(Q_c1_net_1), .C(C_c), .Y(Q_n2_net_1));
    DFN1C0 \Q[1]  (.D(Q_n1_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(Q1_c));
    DFN1C0 \Q[2]  (.D(Q_n2_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(Q2_c));
    VCC VCC_i (.Y(VCC));
    NOR2B Q_8_0 (.A(Q2_c), .B(Q_c1_net_1), .Y(Q_8_0_net_1));
    XA1B Q_n3 (.A(Q3_c), .B(Q_8_0_net_1), .C(C_c), .Y(Q_n3_net_1));
    DFN1C0 \Q[0]  (.D(Q_n0_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(Q0_c));
    GND GND_i (.Y(GND));
    XA1B Q_n1 (.A(Q0_c), .B(Q1_c), .C(C_c), .Y(Q_n1_net_1));
    
endmodule


module zjh_CE0(
       Clk,
       MR,
       C,
       Q0,
       Q1,
       Q2,
       Q3
    );
input  Clk;
input  MR;
output C;
output Q0;
output Q1;
output Q2;
output Q3;

    wire VCC, GND, Clk_c, MR_c, C_c, Q0_c, Q1_c, Q2_c, Q3_c;
    
    OUTBUF Q0_pad (.D(Q0_c), .PAD(Q0));
    OUTBUF C_pad (.D(C_c), .PAD(C));
    zjh_74HC161 zjh_74HC161_0 (.MR_c(MR_c), .Clk_c(Clk_c), .Q1_c(Q1_c), 
        .Q0_c(Q0_c), .Q2_c(Q2_c), .C_c(C_c), .Q3_c(Q3_c));
    AND3 AND3_0 (.A(Q3_c), .B(Q2_c), .C(Q0_c), .Y(C_c));
    VCC VCC_i (.Y(VCC));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    OUTBUF Q3_pad (.D(Q3_c), .PAD(Q3));
    GND GND_i (.Y(GND));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    
endmodule
