`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire \newCore_0_Q[0] , \newCore_0_Q[1] , \Reg_0_M[1] , un1_A_6, 
        un1_A_7, un1_A_8, Aclr_c, Clock_c, \zjh_74HC138_0.un1_A_7_i , 
        \newCore_0/INV_1_Y , \newCore_0/INV_0_Y , \f_pad/U0/NET1 , 
        \f_pad/U0/NET2 , \Aclr_pad/U0/NET1 , \a_pad/U0/NET1 , 
        \a_pad/U0/NET2 , \Y3_pad/U0/NET1 , \Y3_pad/U0/NET2 , 
        \c_pad/U0/NET1 , \c_pad/U0/NET2 , \b_pad/U0/NET1 , 
        \b_pad/U0/NET2 , \Y4_pad/U0/NET1 , \Y4_pad/U0/NET2 , 
        \d_pad/U0/NET1 , \d_pad/U0/NET2 , \Clock_pad/U0/NET1 , 
        \g_pad/U0/NET1 , \g_pad/U0/NET2 , \e_pad/U0/NET1 , 
        \e_pad/U0/NET2 , \Y2_pad/U0/NET1 , \Y2_pad/U0/NET2 , 
        \Y1_pad/U0/NET1 , \Y1_pad/U0/NET2 , VCC, 
        \newCore_0/DFN1E1C0_NU_1/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    OR2 \zjh_74HC138_0/un1_A_8  (.A(\newCore_0_Q[1] ), .B(
        \newCore_0_Q[0] ), .Y(un1_A_8));
    IOTRI_OB_EB \a_pad/U0/U1  (.D(un1_A_6), .E(VCC), .DOUT(
        \a_pad/U0/NET1 ), .EOUT(\a_pad/U0/NET2 ));
    IOPAD_TRI \f_pad/U0/U0  (.D(\f_pad/U0/NET1 ), .E(\f_pad/U0/NET2 ), 
        .PAD(f));
    IOPAD_TRI \a_pad/U0/U0  (.D(\a_pad/U0/NET1 ), .E(\a_pad/U0/NET2 ), 
        .PAD(a));
    IOTRI_OB_EB \g_pad/U0/U1  (.D(\zjh_74HC138_0.un1_A_7_i ), .E(VCC), 
        .DOUT(\g_pad/U0/NET1 ), .EOUT(\g_pad/U0/NET2 ));
    IOTRI_OB_EB \f_pad/U0/U1  (.D(\Reg_0_M[1] ), .E(VCC), .DOUT(
        \f_pad/U0/NET1 ), .EOUT(\f_pad/U0/NET2 ));
    IOPAD_TRI \Y1_pad/U0/U0  (.D(\Y1_pad/U0/NET1 ), .E(
        \Y1_pad/U0/NET2 ), .PAD(Y1));
    IOPAD_TRI \g_pad/U0/U0  (.D(\g_pad/U0/NET1 ), .E(\g_pad/U0/NET2 ), 
        .PAD(g));
    NOR2A \zjh_74HC138_0/un1_A_7  (.A(\newCore_0_Q[0] ), .B(
        \newCore_0_Q[1] ), .Y(un1_A_7));
    IOPAD_TRI \Y2_pad/U0/U0  (.D(\Y2_pad/U0/NET1 ), .E(
        \Y2_pad/U0/NET2 ), .PAD(Y2));
    IOTRI_OB_EB \Y4_pad/U0/U1  (.D(\Reg_0_M[1] ), .E(VCC), .DOUT(
        \Y4_pad/U0/NET1 ), .EOUT(\Y4_pad/U0/NET2 ));
    OR2B \Reg_0/un1_S_1  (.A(\newCore_0_Q[1] ), .B(\newCore_0_Q[0] ), 
        .Y(\Reg_0_M[1] ));
    INV \zjh_74HC138_0/un1_A_7_i  (.A(un1_A_7), .Y(
        \zjh_74HC138_0.un1_A_7_i ));
    INV \newCore_0/INV_1  (.A(\newCore_0_Q[0] ), .Y(
        \newCore_0/INV_1_Y ));
    IOIN_IB \Aclr_pad/U0/U1  (.YIN(\Aclr_pad/U0/NET1 ), .Y(Aclr_c));
    DFN1C0 \newCore_0/DFN1E1C0_NU_1/U1  (.D(
        \newCore_0/DFN1E1C0_NU_1/Y ), .CLK(Clock_c), .CLR(Aclr_c), .Q(
        \newCore_0_Q[1] ));
    CLKIO \Clock_pad/U0/U1  (.A(\Clock_pad/U0/NET1 ), .Y(Clock_c));
    IOPAD_TRI \Y3_pad/U0/U0  (.D(\Y3_pad/U0/NET1 ), .E(
        \Y3_pad/U0/NET2 ), .PAD(Y3));
    IOTRI_OB_EB \c_pad/U0/U1  (.D(VCC), .E(VCC), .DOUT(\c_pad/U0/NET1 )
        , .EOUT(\c_pad/U0/NET2 ));
    IOPAD_TRI \c_pad/U0/U0  (.D(\c_pad/U0/NET1 ), .E(\c_pad/U0/NET2 ), 
        .PAD(c));
    IOPAD_IN \Clock_pad/U0/U0  (.PAD(Clock), .Y(\Clock_pad/U0/NET1 ));
    OR2A \zjh_74HC138_0/un1_A_6  (.A(\newCore_0_Q[1] ), .B(
        \newCore_0_Q[0] ), .Y(un1_A_6));
    IOPAD_TRI \e_pad/U0/U0  (.D(\e_pad/U0/NET1 ), .E(\e_pad/U0/NET2 ), 
        .PAD(e));
    MX2 \newCore_0/DFN1E1C0_NU_1/U0  (.A(\newCore_0_Q[1] ), .B(
        \newCore_0/INV_0_Y ), .S(\newCore_0_Q[0] ), .Y(
        \newCore_0/DFN1E1C0_NU_1/Y ));
    IOTRI_OB_EB \e_pad/U0/U1  (.D(un1_A_7), .E(VCC), .DOUT(
        \e_pad/U0/NET1 ), .EOUT(\e_pad/U0/NET2 ));
    IOTRI_OB_EB \Y2_pad/U0/U1  (.D(\zjh_74HC138_0.un1_A_7_i ), .E(VCC), 
        .DOUT(\Y2_pad/U0/NET1 ), .EOUT(\Y2_pad/U0/NET2 ));
    IOPAD_TRI \b_pad/U0/U0  (.D(\b_pad/U0/NET1 ), .E(\b_pad/U0/NET2 ), 
        .PAD(b));
    IOPAD_TRI \Y4_pad/U0/U0  (.D(\Y4_pad/U0/NET1 ), .E(
        \Y4_pad/U0/NET2 ), .PAD(Y4));
    IOTRI_OB_EB \Y1_pad/U0/U1  (.D(un1_A_8), .E(VCC), .DOUT(
        \Y1_pad/U0/NET1 ), .EOUT(\Y1_pad/U0/NET2 ));
    IOTRI_OB_EB \b_pad/U0/U1  (.D(un1_A_8), .E(VCC), .DOUT(
        \b_pad/U0/NET1 ), .EOUT(\b_pad/U0/NET2 ));
    IOTRI_OB_EB \Y3_pad/U0/U1  (.D(un1_A_6), .E(VCC), .DOUT(
        \Y3_pad/U0/NET1 ), .EOUT(\Y3_pad/U0/NET2 ));
    INV \newCore_0/INV_0  (.A(\newCore_0_Q[1] ), .Y(
        \newCore_0/INV_0_Y ));
    IOPAD_IN \Aclr_pad/U0/U0  (.PAD(Aclr), .Y(\Aclr_pad/U0/NET1 ));
    DFN1C0 \newCore_0/DFN1C0_NU_0  (.D(\newCore_0/INV_1_Y ), .CLK(
        Clock_c), .CLR(Aclr_c), .Q(\newCore_0_Q[0] ));
    IOPAD_TRI \d_pad/U0/U0  (.D(\d_pad/U0/NET1 ), .E(\d_pad/U0/NET2 ), 
        .PAD(d));
    IOTRI_OB_EB \d_pad/U0/U1  (.D(un1_A_6), .E(VCC), .DOUT(
        \d_pad/U0/NET1 ), .EOUT(\d_pad/U0/NET2 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
