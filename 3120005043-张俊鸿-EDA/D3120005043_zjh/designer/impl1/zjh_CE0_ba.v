`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire Clk_c, MR_c, C_c, Q0_c, Q1_c, Q2_c, Q3_c, 
        \zjh_74HC161_0/Q_n3_net_1 , \zjh_74HC161_0/Q_8_0_net_1 , 
        \zjh_74HC161_0/Q_n2_net_1 , \zjh_74HC161_0/Q_c1_net_1 , 
        \zjh_74HC161_0/Q_n1_net_1 , \zjh_74HC161_0/Q_n0_net_1 , 
        \Clk_pad/U0/NET1 , \Q2_pad/U0/NET1 , \Q2_pad/U0/NET2 , 
        \Q1_pad/U0/NET1 , \Q1_pad/U0/NET2 , \C_pad/U0/NET1 , 
        \C_pad/U0/NET2 , \MR_pad/U0/NET1 , \Q0_pad/U0/NET1 , 
        \Q0_pad/U0/NET2 , \Q3_pad/U0/NET1 , \Q3_pad/U0/NET2 , VCC, 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    DFN1C0 \zjh_74HC161_0/Q[0]  (.D(\zjh_74HC161_0/Q_n0_net_1 ), .CLK(
        Clk_c), .CLR(MR_c), .Q(Q0_c));
    IOPAD_TRI \Q0_pad/U0/U0  (.D(\Q0_pad/U0/NET1 ), .E(
        \Q0_pad/U0/NET2 ), .PAD(Q0));
    XA1B \zjh_74HC161_0/Q_n2  (.A(Q2_c), .B(\zjh_74HC161_0/Q_c1_net_1 )
        , .C(C_c), .Y(\zjh_74HC161_0/Q_n2_net_1 ));
    DFN1C0 \zjh_74HC161_0/Q[2]  (.D(\zjh_74HC161_0/Q_n2_net_1 ), .CLK(
        Clk_c), .CLR(MR_c), .Q(Q2_c));
    XA1B \zjh_74HC161_0/Q_n3  (.A(Q3_c), .B(
        \zjh_74HC161_0/Q_8_0_net_1 ), .C(C_c), .Y(
        \zjh_74HC161_0/Q_n3_net_1 ));
    IOTRI_OB_EB \Q2_pad/U0/U1  (.D(Q2_c), .E(VCC), .DOUT(
        \Q2_pad/U0/NET1 ), .EOUT(\Q2_pad/U0/NET2 ));
    NOR2 \zjh_74HC161_0/Q_n0  (.A(Q0_c), .B(C_c), .Y(
        \zjh_74HC161_0/Q_n0_net_1 ));
    IOTRI_OB_EB \Q1_pad/U0/U1  (.D(Q1_c), .E(VCC), .DOUT(
        \Q1_pad/U0/NET1 ), .EOUT(\Q1_pad/U0/NET2 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOTRI_OB_EB \Q3_pad/U0/U1  (.D(Q3_c), .E(VCC), .DOUT(
        \Q3_pad/U0/NET1 ), .EOUT(\Q3_pad/U0/NET2 ));
    NOR2B \zjh_74HC161_0/Q_c1  (.A(Q0_c), .B(Q1_c), .Y(
        \zjh_74HC161_0/Q_c1_net_1 ));
    AND3 AND3_0 (.A(Q3_c), .B(Q2_c), .C(Q0_c), .Y(C_c));
    XA1B \zjh_74HC161_0/Q_n1  (.A(Q0_c), .B(Q1_c), .C(C_c), .Y(
        \zjh_74HC161_0/Q_n1_net_1 ));
    IOTRI_OB_EB \Q0_pad/U0/U1  (.D(Q0_c), .E(VCC), .DOUT(
        \Q0_pad/U0/NET1 ), .EOUT(\Q0_pad/U0/NET2 ));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    DFN1C0 \zjh_74HC161_0/Q[1]  (.D(\zjh_74HC161_0/Q_n1_net_1 ), .CLK(
        Clk_c), .CLR(MR_c), .Q(Q1_c));
    IOTRI_OB_EB \C_pad/U0/U1  (.D(C_c), .E(VCC), .DOUT(\C_pad/U0/NET1 )
        , .EOUT(\C_pad/U0/NET2 ));
    IOPAD_TRI \C_pad/U0/U0  (.D(\C_pad/U0/NET1 ), .E(\C_pad/U0/NET2 ), 
        .PAD(C));
    IOPAD_TRI \Q1_pad/U0/U0  (.D(\Q1_pad/U0/NET1 ), .E(
        \Q1_pad/U0/NET2 ), .PAD(Q1));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOPAD_TRI \Q2_pad/U0/U0  (.D(\Q2_pad/U0/NET1 ), .E(
        \Q2_pad/U0/NET2 ), .PAD(Q2));
    DFN1C0 \zjh_74HC161_0/Q[3]  (.D(\zjh_74HC161_0/Q_n3_net_1 ), .CLK(
        Clk_c), .CLR(MR_c), .Q(Q3_c));
    IOPAD_TRI \Q3_pad/U0/U0  (.D(\Q3_pad/U0/NET1 ), .E(
        \Q3_pad/U0/NET2 ), .PAD(Q3));
    NOR2B \zjh_74HC161_0/Q_8_0  (.A(Q2_c), .B(
        \zjh_74HC161_0/Q_c1_net_1 ), .Y(\zjh_74HC161_0/Q_8_0_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
