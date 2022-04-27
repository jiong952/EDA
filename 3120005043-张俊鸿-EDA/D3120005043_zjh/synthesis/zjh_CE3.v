`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module Reg(
       newCore_0_Q,
       Reg_0_M_0
    );
input  [1:0] newCore_0_Q;
output Reg_0_M_0;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    OR2B un1_S_1 (.A(newCore_0_Q[1]), .B(newCore_0_Q[0]), .Y(Reg_0_M_0)
        );
    GND GND_i (.Y(GND));
    
endmodule


module newCore(
       newCore_0_Q,
       Aclr_c,
       Clock_c
    );
output [1:0] newCore_0_Q;
input  Aclr_c;
input  Clock_c;

    wire INV_1_Y, INV_0_Y, GND, VCC;
    
    DFN1E1C0 DFN1E1C0_NU_1 (.D(INV_0_Y), .CLK(Clock_c), .CLR(Aclr_c), 
        .E(newCore_0_Q[0]), .Q(newCore_0_Q[1]));
    DFN1C0 DFN1C0_NU_0 (.D(INV_1_Y), .CLK(Clock_c), .CLR(Aclr_c), .Q(
        newCore_0_Q[0]));
    INV INV_0 (.A(newCore_0_Q[1]), .Y(INV_0_Y));
    VCC VCC_i (.Y(VCC));
    INV INV_1 (.A(newCore_0_Q[0]), .Y(INV_1_Y));
    GND GND_i (.Y(GND));
    
endmodule


module zjh_74HC4511(
       L_2_i_a2_0,
       newCore_0_Q,
       b_c,
       g_c,
       g_c_i
    );
output L_2_i_a2_0;
input  [1:0] newCore_0_Q;
output b_c;
output g_c;
output g_c_i;

    wire GND, VCC;
    
    OR2 \L_2_0_1[5]  (.A(newCore_0_Q[1]), .B(newCore_0_Q[0]), .Y(b_c));
    OR2A \L_2_i_a2[3]  (.A(newCore_0_Q[1]), .B(newCore_0_Q[0]), .Y(
        L_2_i_a2_0));
    INV \L_2_0_RNITDFE[0]  (.A(g_c), .Y(g_c_i));
    VCC VCC_i (.Y(VCC));
    OR2A \L_2_0[0]  (.A(newCore_0_Q[0]), .B(newCore_0_Q[1]), .Y(g_c));
    GND GND_i (.Y(GND));
    
endmodule


module zjh_CE3(
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

    wire \newCore_0_Q[0] , \newCore_0_Q[1] , GND, g_c, \L_2_i_a2[3] , 
        Aclr_c, Clock_c, VCC, b_c, \Reg_0_M[1] , g_c_i;
    
    OUTBUF f_pad (.D(\Reg_0_M[1] ), .PAD(f));
    INBUF Aclr_pad (.PAD(Aclr), .Y(Aclr_c));
    Reg Reg_0 (.newCore_0_Q({\newCore_0_Q[1] , \newCore_0_Q[0] }), 
        .Reg_0_M_0(\Reg_0_M[1] ));
    newCore newCore_0 (.newCore_0_Q({\newCore_0_Q[1] , 
        \newCore_0_Q[0] }), .Aclr_c(Aclr_c), .Clock_c(Clock_c));
    OUTBUF a_pad (.D(\L_2_i_a2[3] ), .PAD(a));
    VCC VCC_i (.Y(VCC));
    OUTBUF Y3_pad (.D(VCC), .PAD(Y3));
    OUTBUF c_pad (.D(VCC), .PAD(c));
    OUTBUF b_pad (.D(b_c), .PAD(b));
    GND GND_i (.Y(GND));
    OUTBUF Y4_pad (.D(VCC), .PAD(Y4));
    OUTBUF d_pad (.D(\L_2_i_a2[3] ), .PAD(d));
    zjh_74HC4511 zjh_74HC4511_0 (.L_2_i_a2_0(\L_2_i_a2[3] ), 
        .newCore_0_Q({\newCore_0_Q[1] , \newCore_0_Q[0] }), .b_c(b_c), 
        .g_c(g_c), .g_c_i(g_c_i));
    CLKBUF Clock_pad (.PAD(Clock), .Y(Clock_c));
    OUTBUF g_pad (.D(g_c), .PAD(g));
    OUTBUF e_pad (.D(g_c_i), .PAD(e));
    OUTBUF Y2_pad (.D(VCC), .PAD(Y2));
    OUTBUF Y1_pad (.D(VCC), .PAD(Y1));
    
endmodule
