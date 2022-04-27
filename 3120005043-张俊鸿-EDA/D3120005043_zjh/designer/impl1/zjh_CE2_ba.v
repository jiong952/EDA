`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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
        \Q_net_0[3] , \L_2_i[0] , \L_2_i[2] , \L_2_i[3] , \L_2_i[5] , 
        \L_2_i[6] , A0_c, A1_c, A2_c, A3_c, B0_c, B1_c, B2_c, B3_c, 
        Clk_c, MR_c, c_c, f_c, \zjh_74HC161_0.Q_c2 , 
        \zjh_74HC161_0.Q_c1 , \zjh_74HC85_0/un1_A_NE_0_net_1 , 
        \zjh_74HC85_0/un1_A_2_net_1 , \zjh_74HC85_0/un1_A_0_net_1 , 
        \zjh_74HC85_0/un1_A_1_net_1 , 
        \zjh_74HC4511_0/L_2_0_0[1]_net_1 , \zjh_74HC4511_0/N_30 , 
        \zjh_74HC4511_0/N_52 , \zjh_74HC4511_0/N_45 , 
        \zjh_74HC4511_0/N_46 , \zjh_74HC4511_0/N_40 , 
        \zjh_74HC4511_0/N_29 , \zjh_74HC4511_0/N_42 , 
        \zjh_74HC4511_0/N_41 , \zjh_74HC4511_0/N_34 , 
        \zjh_74HC4511_0/N_36 , \zjh_74HC4511_0/N_35 , 
        \zjh_74HC4511_0/N_45_1 , \zjh_74HC4511_0/N_27 , 
        \zjh_74HC4511_0/N_39 , \zjh_74HC4511_0/N_44 , 
        \zjh_74HC161_0/N_8 , \zjh_74HC161_0/N_10 , 
        \zjh_74HC161_0/N_12 , \zjh_74HC161_0/Q_n0 , 
        \zjh_74HC161_0/Q_n1 , \zjh_74HC161_0/Q_n2 , 
        \zjh_74HC161_0/Q_n3 , \c_pad/U0/NET1 , \c_pad/U0/NET2 , 
        \B3_pad/U0/NET1 , \e_pad/U0/NET1 , \e_pad/U0/NET2 , 
        \B2_pad/U0/NET1 , \B0_pad/U0/NET1 , \A1_pad/U0/NET1 , 
        \MR_pad/U0/NET1 , \d_pad/U0/NET1 , \d_pad/U0/NET2 , 
        \f_pad/U0/NET1 , \f_pad/U0/NET2 , \A3_pad/U0/NET1 , 
        \g_pad/U0/NET1 , \g_pad/U0/NET2 , \a_pad/U0/NET1 , 
        \a_pad/U0/NET2 , \b_pad/U0/NET1 , \b_pad/U0/NET2 , VCC, 
        \A2_pad/U0/NET1 , \A0_pad/U0/NET1 , \B1_pad/U0/NET1 , 
        \Clk_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    DFN1C0 \zjh_74HC161_0/Q[0]  (.D(\zjh_74HC161_0/Q_n0 ), .CLK(Clk_c), 
        .CLR(MR_c), .Q(\Q_net_0[0] ));
    IOIN_IB \B2_pad/U0/U1  (.YIN(\B2_pad/U0/NET1 ), .Y(B2_c));
    NOR2B \zjh_74HC4511_0/L_2_i_a4_0[6]  (.A(\zjh_74HC161_0.Q_c1 ), .B(
        \zjh_74HC4511_0/N_52 ), .Y(\zjh_74HC4511_0/N_46 ));
    XO1 \zjh_74HC85_0/un1_A_NE_0  (.A(\Q_net_0[3] ), .B(B3_c), .C(
        \zjh_74HC85_0/un1_A_2_net_1 ), .Y(
        \zjh_74HC85_0/un1_A_NE_0_net_1 ));
    NOR2B \zjh_74HC161_0/Q_RNIGF491[2]  (.A(\zjh_74HC161_0.Q_c1 ), .B(
        \Q_net_0[2] ), .Y(\zjh_74HC161_0.Q_c2 ));
    DFN1C0 \zjh_74HC161_0/Q[2]  (.D(\zjh_74HC161_0/Q_n2 ), .CLK(Clk_c), 
        .CLR(MR_c), .Q(\Q_net_0[2] ));
    AOI1 \zjh_74HC4511_0/L_2_i[5]  (.A(\zjh_74HC4511_0/N_30 ), .B(
        \Q_net_0[0] ), .C(\zjh_74HC4511_0/N_44 ), .Y(\L_2_i[5] ));
    AX1C \zjh_74HC161_0/Q_RNO[1]  (.A(\Q_net_0[0] ), .B(INV_0_Y), .C(
        \zjh_74HC161_0/N_8 ), .Y(\zjh_74HC161_0/Q_n1 ));
    IOTRI_OB_EB \a_pad/U0/U1  (.D(\L_2_i[6] ), .E(VCC), .DOUT(
        \a_pad/U0/NET1 ), .EOUT(\a_pad/U0/NET2 ));
    IOIN_IB \A2_pad/U0/U1  (.YIN(\A2_pad/U0/NET1 ), .Y(A2_c));
    XOR2 \zjh_74HC85_0/un1_A_1  (.A(B1_c), .B(\Q_net_0[1] ), .Y(
        \zjh_74HC85_0/un1_A_1_net_1 ));
    IOIN_IB \B1_pad/U0/U1  (.YIN(\B1_pad/U0/NET1 ), .Y(B1_c));
    NOR3C \zjh_74HC4511_0/L_2_i_a4[6]  (.A(\Q_net_0[2] ), .B(
        \zjh_74HC4511_0/N_45_1 ), .C(\Q_net_0[0] ), .Y(
        \zjh_74HC4511_0/N_45 ));
    IOPAD_TRI \f_pad/U0/U0  (.D(\f_pad/U0/NET1 ), .E(\f_pad/U0/NET2 ), 
        .PAD(f));
    NOR2B \zjh_74HC161_0/Q_RNIVJDR[1]  (.A(\Q_net_0[1] ), .B(
        \Q_net_0[0] ), .Y(\zjh_74HC161_0.Q_c1 ));
    MX2B \zjh_74HC161_0/Q_RNO[0]  (.A(A0_c), .B(\Q_net_0[0] ), .S(
        INV_0_Y), .Y(\zjh_74HC161_0/Q_n0 ));
    IOIN_IB \B3_pad/U0/U1  (.YIN(\B3_pad/U0/NET1 ), .Y(B3_c));
    IOPAD_TRI \a_pad/U0/U0  (.D(\a_pad/U0/NET1 ), .E(\a_pad/U0/NET2 ), 
        .PAD(a));
    IOIN_IB \A1_pad/U0/U1  (.YIN(\A1_pad/U0/NET1 ), .Y(A1_c));
    OR3 \zjh_74HC85_0/un1_A_NE  (.A(\zjh_74HC85_0/un1_A_0_net_1 ), .B(
        \zjh_74HC85_0/un1_A_1_net_1 ), .C(
        \zjh_74HC85_0/un1_A_NE_0_net_1 ), .Y(INV_0_Y));
    MX2A \zjh_74HC4511_0/L_2_0_m2[4]  (.A(\Q_net_0[0] ), .B(
        \Q_net_0[3] ), .S(\Q_net_0[2] ), .Y(\zjh_74HC4511_0/N_29 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOTRI_OB_EB \g_pad/U0/U1  (.D(\L_2_i[0] ), .E(VCC), .DOUT(
        \g_pad/U0/NET1 ), .EOUT(\g_pad/U0/NET2 ));
    IOTRI_OB_EB \f_pad/U0/U1  (.D(f_c), .E(VCC), .DOUT(\f_pad/U0/NET1 )
        , .EOUT(\f_pad/U0/NET2 ));
    NOR2A \zjh_74HC4511_0/L_2_i_a4_1[6]  (.A(\Q_net_0[3] ), .B(
        \Q_net_0[1] ), .Y(\zjh_74HC4511_0/N_45_1 ));
    IOPAD_TRI \g_pad/U0/U0  (.D(\g_pad/U0/NET1 ), .E(\g_pad/U0/NET2 ), 
        .PAD(g));
    IOIN_IB \A3_pad/U0/U1  (.YIN(\A3_pad/U0/NET1 ), .Y(A3_c));
    AX1C \zjh_74HC161_0/Q_RNO[2]  (.A(INV_0_Y), .B(
        \zjh_74HC161_0.Q_c1 ), .C(\zjh_74HC161_0/N_10 ), .Y(
        \zjh_74HC161_0/Q_n2 ));
    NOR2A \zjh_74HC4511_0/L_2_i_a4_0[2]  (.A(\Q_net_0[0] ), .B(
        \Q_net_0[3] ), .Y(\zjh_74HC4511_0/N_39 ));
    XA1B \zjh_74HC4511_0/L_2_i_a4[3]  (.A(\Q_net_0[0] ), .B(
        \Q_net_0[2] ), .C(\zjh_74HC4511_0/N_27 ), .Y(
        \zjh_74HC4511_0/N_40 ));
    IOIN_IB \B0_pad/U0/U1  (.YIN(\B0_pad/U0/NET1 ), .Y(B0_c));
    AXOI7 \zjh_74HC4511_0/L_2_0_o4[1]  (.A(\Q_net_0[2] ), .B(
        \Q_net_0[1] ), .C(\Q_net_0[3] ), .Y(\zjh_74HC4511_0/N_30 ));
    MX2 \zjh_74HC161_0/Q_RNO_0[3]  (.A(A3_c), .B(\Q_net_0[3] ), .S(
        INV_0_Y), .Y(\zjh_74HC161_0/N_12 ));
    IOIN_IB \A0_pad/U0/U1  (.YIN(\A0_pad/U0/NET1 ), .Y(A0_c));
    OA1C \zjh_74HC4511_0/L_2_0_0[1]  (.A(\Q_net_0[1] ), .B(
        \Q_net_0[2] ), .C(\Q_net_0[0] ), .Y(
        \zjh_74HC4511_0/L_2_0_0[1]_net_1 ));
    NOR3B \zjh_74HC4511_0/L_2_i_a4_0[5]  (.A(\Q_net_0[2] ), .B(
        \zjh_74HC4511_0/N_27 ), .C(\Q_net_0[0] ), .Y(
        \zjh_74HC4511_0/N_44 ));
    MX2 \zjh_74HC161_0/Q_RNO_0[2]  (.A(A2_c), .B(\Q_net_0[2] ), .S(
        INV_0_Y), .Y(\zjh_74HC161_0/N_10 ));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    OR2 \zjh_74HC4511_0/L_2_i_o2[5]  (.A(\Q_net_0[3] ), .B(
        \Q_net_0[1] ), .Y(\zjh_74HC4511_0/N_27 ));
    DFN1C0 \zjh_74HC161_0/Q[1]  (.D(\zjh_74HC161_0/Q_n1 ), .CLK(Clk_c), 
        .CLR(MR_c), .Q(\Q_net_0[1] ));
    IOPAD_IN \B1_pad/U0/U0  (.PAD(B1), .Y(\B1_pad/U0/NET1 ));
    IOTRI_OB_EB \c_pad/U0/U1  (.D(c_c), .E(VCC), .DOUT(\c_pad/U0/NET1 )
        , .EOUT(\c_pad/U0/NET2 ));
    IOPAD_TRI \c_pad/U0/U0  (.D(\c_pad/U0/NET1 ), .E(\c_pad/U0/NET2 ), 
        .PAD(c));
    OR3A \zjh_74HC4511_0/L_2_0[4]  (.A(\zjh_74HC4511_0/N_29 ), .B(
        \zjh_74HC4511_0/N_42 ), .C(\zjh_74HC4511_0/N_52 ), .Y(c_c));
    NOR2A \zjh_74HC4511_0/L_2_0_a2_1[1]  (.A(\Q_net_0[3] ), .B(
        \Q_net_0[2] ), .Y(\zjh_74HC4511_0/N_52 ));
    IOPAD_IN \A1_pad/U0/U0  (.PAD(A1), .Y(\A1_pad/U0/NET1 ));
    IOPAD_IN \B2_pad/U0/U0  (.PAD(B2), .Y(\B2_pad/U0/NET1 ));
    IOPAD_TRI \e_pad/U0/U0  (.D(\e_pad/U0/NET1 ), .E(\e_pad/U0/NET2 ), 
        .PAD(e));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    NOR3B \zjh_74HC4511_0/L_2_i_a4_1[0]  (.A(\Q_net_0[2] ), .B(
        \zjh_74HC4511_0/N_45_1 ), .C(\Q_net_0[0] ), .Y(
        \zjh_74HC4511_0/N_36 ));
    OR3 \zjh_74HC4511_0/L_2_0[1]  (.A(\zjh_74HC4511_0/N_30 ), .B(
        \zjh_74HC4511_0/N_52 ), .C(\zjh_74HC4511_0/L_2_0_0[1]_net_1 ), 
        .Y(f_c));
    IOPAD_IN \A2_pad/U0/U0  (.PAD(A2), .Y(\A2_pad/U0/NET1 ));
    IOTRI_OB_EB \e_pad/U0/U1  (.D(\L_2_i[2] ), .E(VCC), .DOUT(
        \e_pad/U0/NET1 ), .EOUT(\e_pad/U0/NET2 ));
    NOR2A \zjh_74HC4511_0/L_2_i_a4_0[0]  (.A(\zjh_74HC161_0.Q_c2 ), .B(
        \Q_net_0[3] ), .Y(\zjh_74HC4511_0/N_35 ));
    IOPAD_TRI \b_pad/U0/U0  (.D(\b_pad/U0/NET1 ), .E(\b_pad/U0/NET2 ), 
        .PAD(b));
    NOR2 \zjh_74HC4511_0/L_2_i_a4[0]  (.A(\zjh_74HC4511_0/N_27 ), .B(
        \Q_net_0[2] ), .Y(\zjh_74HC4511_0/N_34 ));
    DFN1C0 \zjh_74HC161_0/Q[3]  (.D(\zjh_74HC161_0/Q_n3 ), .CLK(Clk_c), 
        .CLR(MR_c), .Q(\Q_net_0[3] ));
    OA1B \zjh_74HC4511_0/L_2_i[2]  (.A(\Q_net_0[1] ), .B(
        \zjh_74HC4511_0/N_29 ), .C(\zjh_74HC4511_0/N_39 ), .Y(
        \L_2_i[2] ));
    NOR3 \zjh_74HC4511_0/L_2_i[0]  (.A(\zjh_74HC4511_0/N_34 ), .B(
        \zjh_74HC4511_0/N_36 ), .C(\zjh_74HC4511_0/N_35 ), .Y(
        \L_2_i[0] ));
    XOR2 \zjh_74HC85_0/un1_A_2  (.A(B2_c), .B(\Q_net_0[2] ), .Y(
        \zjh_74HC85_0/un1_A_2_net_1 ));
    IOPAD_IN \B3_pad/U0/U0  (.PAD(B3), .Y(\B3_pad/U0/NET1 ));
    XOR2 \zjh_74HC85_0/un1_A_0  (.A(B0_c), .B(\Q_net_0[0] ), .Y(
        \zjh_74HC85_0/un1_A_0_net_1 ));
    NOR3B \zjh_74HC4511_0/L_2_i_a4_0[3]  (.A(\Q_net_0[1] ), .B(
        \zjh_74HC4511_0/N_52 ), .C(\Q_net_0[0] ), .Y(
        \zjh_74HC4511_0/N_41 ));
    MX2 \zjh_74HC161_0/Q_RNO_0[1]  (.A(A1_c), .B(\Q_net_0[1] ), .S(
        INV_0_Y), .Y(\zjh_74HC161_0/N_8 ));
    IOTRI_OB_EB \b_pad/U0/U1  (.D(\L_2_i[5] ), .E(VCC), .DOUT(
        \b_pad/U0/NET1 ), .EOUT(\b_pad/U0/NET2 ));
    IOPAD_IN \B0_pad/U0/U0  (.PAD(B0), .Y(\B0_pad/U0/NET1 ));
    IOPAD_IN \A3_pad/U0/U0  (.PAD(A3), .Y(\A3_pad/U0/NET1 ));
    NOR3 \zjh_74HC4511_0/L_2_i[6]  (.A(\zjh_74HC4511_0/N_45 ), .B(
        \zjh_74HC4511_0/N_46 ), .C(\zjh_74HC4511_0/N_40 ), .Y(
        \L_2_i[6] ));
    AX1C \zjh_74HC161_0/Q_RNO[3]  (.A(INV_0_Y), .B(
        \zjh_74HC161_0.Q_c2 ), .C(\zjh_74HC161_0/N_12 ), .Y(
        \zjh_74HC161_0/Q_n3 ));
    IOPAD_TRI \d_pad/U0/U0  (.D(\d_pad/U0/NET1 ), .E(\d_pad/U0/NET2 ), 
        .PAD(d));
    NOR3 \zjh_74HC4511_0/L_2_i[3]  (.A(\zjh_74HC4511_0/N_40 ), .B(
        \zjh_74HC4511_0/N_41 ), .C(\zjh_74HC161_0.Q_c2 ), .Y(
        \L_2_i[3] ));
    IOTRI_OB_EB \d_pad/U0/U1  (.D(\L_2_i[3] ), .E(VCC), .DOUT(
        \d_pad/U0/NET1 ), .EOUT(\d_pad/U0/NET2 ));
    OA1C \zjh_74HC4511_0/L_2_0_a4[4]  (.A(\Q_net_0[2] ), .B(
        \Q_net_0[0] ), .C(\Q_net_0[1] ), .Y(\zjh_74HC4511_0/N_42 ));
    IOPAD_IN \A0_pad/U0/U0  (.PAD(A0), .Y(\A0_pad/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
