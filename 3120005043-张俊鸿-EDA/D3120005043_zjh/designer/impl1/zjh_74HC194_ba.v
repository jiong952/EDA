`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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
        N_6, N_7, N_8, N_9, Out_11_sn_N_2, MR_N_c, \S_c[0] , \S_c[1] , 
        \D_c[0] , \D_c[1] , Clk_c, \In_c[3] , \In_c[2] , \In_c[1] , 
        \In_c[0] , \Out_c[3] , \Out_c[2] , \Out_c[1] , \Out_c[0] , 
        \Out_pad[1]/U0/NET1 , \Out_pad[1]/U0/NET2 , \Clk_pad/U0/NET1 , 
        \D_pad[1]/U0/NET1 , \Out_pad[2]/U0/NET1 , \Out_pad[2]/U0/NET2 , 
        \S_pad[1]/U0/NET1 , \D_pad[0]/U0/NET1 , \S_pad[0]/U0/NET1 , 
        \In_pad[3]/U0/NET1 , \In_pad[1]/U0/NET1 , \In_pad[2]/U0/NET1 , 
        \Out_pad[0]/U0/NET1 , \Out_pad[0]/U0/NET2 , 
        \In_pad[0]/U0/NET1 , \MR_N_pad/U0/NET1 , \Out_pad[3]/U0/NET1 , 
        \Out_pad[3]/U0/NET2 , VCC, \Out[3]/Y , \Out[2]/Y , \Out[1]/Y , 
        \Out[0]/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \Out_pad[2]/U0/U0  (.D(\Out_pad[2]/U0/NET1 ), .E(
        \Out_pad[2]/U0/NET2 ), .PAD(Out[2]));
    IOIN_IB \In_pad[1]/U0/U1  (.YIN(\In_pad[1]/U0/NET1 ), .Y(\In_c[1] )
        );
    MX2 \Out_RNO[1]  (.A(N_8), .B(\In_c[1] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[1] ));
    IOPAD_TRI \Out_pad[1]/U0/U0  (.D(\Out_pad[1]/U0/NET1 ), .E(
        \Out_pad[1]/U0/NET2 ), .PAD(Out[1]));
    IOPAD_IN \In_pad[3]/U0/U0  (.PAD(In[3]), .Y(\In_pad[3]/U0/NET1 ));
    MX2 \Out_RNO[0]  (.A(N_9), .B(\In_c[0] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[0] ));
    DFN1C0 \Out[3]/U1  (.D(\Out[3]/Y ), .CLK(Clk_c), .CLR(MR_N_c), .Q(
        \Out_c[3] ));
    MX2 \Out[3]/U0  (.A(\Out_11[3] ), .B(\Out_c[3] ), .S(Out30), .Y(
        \Out[3]/Y ));
    IOTRI_OB_EB \Out_pad[0]/U0/U1  (.D(\Out_c[0] ), .E(VCC), .DOUT(
        \Out_pad[0]/U0/NET1 ), .EOUT(\Out_pad[0]/U0/NET2 ));
    IOPAD_IN \MR_N_pad/U0/U0  (.PAD(MR_N), .Y(\MR_N_pad/U0/NET1 ));
    IOTRI_OB_EB \Out_pad[3]/U0/U1  (.D(\Out_c[3] ), .E(VCC), .DOUT(
        \Out_pad[3]/U0/NET1 ), .EOUT(\Out_pad[3]/U0/NET2 ));
    IOIN_IB \In_pad[3]/U0/U1  (.YIN(\In_pad[3]/U0/NET1 ), .Y(\In_c[3] )
        );
    MX2 \Out_RNO_0[1]  (.A(\Out_c[2] ), .B(\Out_c[0] ), .S(\S_c[0] ), 
        .Y(N_8));
    IOIN_IB \D_pad[1]/U0/U1  (.YIN(\D_pad[1]/U0/NET1 ), .Y(\D_c[1] ));
    IOPAD_TRI \Out_pad[0]/U0/U0  (.D(\Out_pad[0]/U0/NET1 ), .E(
        \Out_pad[0]/U0/NET2 ), .PAD(Out[0]));
    DFN1C0 \Out[2]/U1  (.D(\Out[2]/Y ), .CLK(Clk_c), .CLR(MR_N_c), .Q(
        \Out_c[2] ));
    IOPAD_IN \In_pad[2]/U0/U0  (.PAD(In[2]), .Y(\In_pad[2]/U0/NET1 ));
    MX2 \Out[0]/U0  (.A(\Out_11[0] ), .B(\Out_c[0] ), .S(Out30), .Y(
        \Out[0]/Y ));
    MX2 \Out_RNO[3]  (.A(N_6), .B(\In_c[3] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[3] ));
    DFN1C0 \Out[0]/U1  (.D(\Out[0]/Y ), .CLK(Clk_c), .CLR(MR_N_c), .Q(
        \Out_c[0] ));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    IOPAD_TRI \Out_pad[3]/U0/U0  (.D(\Out_pad[3]/U0/NET1 ), .E(
        \Out_pad[3]/U0/NET2 ), .PAD(Out[3]));
    IOIN_IB \D_pad[0]/U0/U1  (.YIN(\D_pad[0]/U0/NET1 ), .Y(\D_c[0] ));
    IOIN_IB \S_pad[1]/U0/U1  (.YIN(\S_pad[1]/U0/NET1 ), .Y(\S_c[1] ));
    DFN1C0 \Out[1]/U1  (.D(\Out[1]/Y ), .CLK(Clk_c), .CLR(MR_N_c), .Q(
        \Out_c[1] ));
    MX2 \Out[1]/U0  (.A(\Out_11[1] ), .B(\Out_c[1] ), .S(Out30), .Y(
        \Out[1]/Y ));
    IOIN_IB \In_pad[2]/U0/U1  (.YIN(\In_pad[2]/U0/NET1 ), .Y(\In_c[2] )
        );
    MX2 \Out_RNO_0[2]  (.A(\Out_c[3] ), .B(\Out_c[1] ), .S(\S_c[0] ), 
        .Y(N_7));
    IOIN_IB \S_pad[0]/U0/U1  (.YIN(\S_pad[0]/U0/NET1 ), .Y(\S_c[0] ));
    IOPAD_IN \In_pad[0]/U0/U0  (.PAD(In[0]), .Y(\In_pad[0]/U0/NET1 ));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOPAD_IN \D_pad[1]/U0/U0  (.PAD(D[1]), .Y(\D_pad[1]/U0/NET1 ));
    MX2 \Out_RNO[2]  (.A(N_7), .B(\In_c[2] ), .S(Out_11_sn_N_2), .Y(
        \Out_11[2] ));
    MX2 \Out[2]/U0  (.A(\Out_11[2] ), .B(\Out_c[2] ), .S(Out30), .Y(
        \Out[2]/Y ));
    NOR2 \S_pad_RNIVNV7_0[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(Out30));
    IOIN_IB \In_pad[0]/U0/U1  (.YIN(\In_pad[0]/U0/NET1 ), .Y(\In_c[0] )
        );
    IOTRI_OB_EB \Out_pad[2]/U0/U1  (.D(\Out_c[2] ), .E(VCC), .DOUT(
        \Out_pad[2]/U0/NET1 ), .EOUT(\Out_pad[2]/U0/NET2 ));
    MX2 \Out_RNO_0[3]  (.A(\D_c[0] ), .B(\Out_c[2] ), .S(\S_c[0] ), .Y(
        N_6));
    MX2 \Out_RNO_0[0]  (.A(\Out_c[1] ), .B(\D_c[1] ), .S(\S_c[0] ), .Y(
        N_9));
    IOPAD_IN \In_pad[1]/U0/U0  (.PAD(In[1]), .Y(\In_pad[1]/U0/NET1 ));
    IOIN_IB \MR_N_pad/U0/U1  (.YIN(\MR_N_pad/U0/NET1 ), .Y(MR_N_c));
    IOPAD_IN \D_pad[0]/U0/U0  (.PAD(D[0]), .Y(\D_pad[0]/U0/NET1 ));
    IOPAD_IN \S_pad[1]/U0/U0  (.PAD(S[1]), .Y(\S_pad[1]/U0/NET1 ));
    IOTRI_OB_EB \Out_pad[1]/U0/U1  (.D(\Out_c[1] ), .E(VCC), .DOUT(
        \Out_pad[1]/U0/NET1 ), .EOUT(\Out_pad[1]/U0/NET2 ));
    NOR2B \S_pad_RNIVNV7[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(
        Out_11_sn_N_2));
    IOPAD_IN \S_pad[0]/U0/U0  (.PAD(S[0]), .Y(\S_pad[0]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
