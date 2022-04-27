`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module zjh_74HC138(
       Q_net_0_0,
       Y38,
       Y29,
       Y20,
       g_c,
       f_c,
       f_c_i
    );
input  Q_net_0_0;
output Y38;
output Y29;
output Y20;
input  g_c;
output f_c;
output f_c_i;

    wire GND, VCC;
    
    OR2B \_l3.Y38  (.A(g_c), .B(Q_net_0_0), .Y(Y38));
    OR2A \_l1.Y20  (.A(Q_net_0_0), .B(g_c), .Y(Y20));
    INV f_c_i_inst_1 (.A(f_c), .Y(f_c_i));
    OR2A \_l2.Y29  (.A(g_c), .B(Q_net_0_0), .Y(Y29));
    VCC VCC_i (.Y(VCC));
    NOR2 \_l0.Y11  (.A(g_c), .B(Q_net_0_0), .Y(f_c));
    GND GND_i (.Y(GND));
    
endmodule


module newCore(
       Q_net_0_0,
       Q_net_0_i_0,
       g_c,
       Aclr_c,
       Clock_c
    );
output Q_net_0_0;
output Q_net_0_i_0;
output g_c;
input  Aclr_c;
input  Clock_c;

    wire INV_1_Y, INV_0_Y, GND, VCC;
    
    DFN1E1C0 DFN1E1C0_NU_1 (.D(INV_0_Y), .CLK(Clock_c), .CLR(Aclr_c), 
        .E(Q_net_0_0), .Q(g_c));
    DFN1C0 DFN1C0_NU_0 (.D(INV_1_Y), .CLK(Clock_c), .CLR(Aclr_c), .Q(
        Q_net_0_0));
    INV INV_0 (.A(g_c), .Y(INV_0_Y));
    VCC VCC_i (.Y(VCC));
    INV INV_1 (.A(Q_net_0_0), .Y(INV_1_Y));
    GND GND_i (.Y(GND));
    INV DFN1C0_NU_0_RNIR8TC (.A(Q_net_0_0), .Y(Q_net_0_i_0));
    
endmodule


module zjh_CE1(
       Aclr,
       Clock,
       Y1,
       Y2,
       Y3,
       Y4,
       a,
       b,
       c,
       d,
       e,
       f,
       g
    );
input  Aclr;
input  Clock;
output Y1;
output Y2;
output Y3;
output Y4;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

    wire \Q_net_0[0] , GND, \zjh_74HC138_0._l1.Y20 , 
        \zjh_74HC138_0._l2.Y29 , \zjh_74HC138_0._l3.Y38 , Aclr_c, 
        Clock_c, VCC, f_c, g_c, f_c_i, \Q_net_0_i[0] ;
    
    OUTBUF f_pad (.D(f_c), .PAD(f));
    INBUF Aclr_pad (.PAD(Aclr), .Y(Aclr_c));
    OUTBUF a_pad (.D(\zjh_74HC138_0._l1.Y20 ), .PAD(a));
    zjh_74HC138 zjh_74HC138_0 (.Q_net_0_0(\Q_net_0[0] ), .Y38(
        \zjh_74HC138_0._l3.Y38 ), .Y29(\zjh_74HC138_0._l2.Y29 ), .Y20(
        \zjh_74HC138_0._l1.Y20 ), .g_c(g_c), .f_c(f_c), .f_c_i(f_c_i));
    VCC VCC_i (.Y(VCC));
    OUTBUF Y3_pad (.D(\zjh_74HC138_0._l2.Y29 ), .PAD(Y3));
    OUTBUF c_pad (.D(\zjh_74HC138_0._l2.Y29 ), .PAD(c));
    OUTBUF b_pad (.D(VCC), .PAD(b));
    GND GND_i (.Y(GND));
    OUTBUF Y4_pad (.D(\zjh_74HC138_0._l3.Y38 ), .PAD(Y4));
    OUTBUF d_pad (.D(\zjh_74HC138_0._l1.Y20 ), .PAD(d));
    newCore Counter (.Q_net_0_0(\Q_net_0[0] ), .Q_net_0_i_0(
        \Q_net_0_i[0] ), .g_c(g_c), .Aclr_c(Aclr_c), .Clock_c(Clock_c));
    CLKBUF Clock_pad (.PAD(Clock), .Y(Clock_c));
    OUTBUF g_pad (.D(g_c), .PAD(g));
    OUTBUF e_pad (.D(\Q_net_0_i[0] ), .PAD(e));
    OUTBUF Y2_pad (.D(\zjh_74HC138_0._l1.Y20 ), .PAD(Y2));
    OUTBUF Y1_pad (.D(f_c_i), .PAD(Y1));
    
endmodule
