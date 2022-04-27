`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_74HC153(
       DateOut,
       DateIn,
       Sel,
       Enable
    );
output DateOut;
input  [3:0] DateIn;
input  [1:0] Sel;
input  Enable;

    wire DateOut_2_1_net_1, DateOut_2_2_net_1, DateOut_2, DateOut_c, 
        \DateIn_c[0] , \DateIn_c[1] , \DateIn_c[2] , \DateIn_c[3] , 
        \Sel_c[0] , \Sel_c[1] , Enable_c, \DateIn_pad[3]/U0/NET1 , 
        \Sel_pad[1]/U0/NET1 , \DateOut_pad/U0/NET1 , 
        \DateOut_pad/U0/NET2 , VCC, \DateIn_pad[1]/U0/NET1 , 
        \DateIn_pad[0]/U0/NET1 , \Sel_pad[0]/U0/NET1 , 
        \Enable_pad/U0/NET1 , \DateIn_pad[2]/U0/NET1 , GND, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \Sel_pad[0]/U0/U0  (.PAD(Sel[0]), .Y(\Sel_pad[0]/U0/NET1 )
        );
    MX2 DateOut_2_1 (.A(\DateIn_c[0] ), .B(\DateIn_c[2] ), .S(
        \Sel_c[1] ), .Y(DateOut_2_1_net_1));
    IOPAD_TRI \DateOut_pad/U0/U0  (.D(\DateOut_pad/U0/NET1 ), .E(
        \DateOut_pad/U0/NET2 ), .PAD(DateOut));
    IOIN_IB \Sel_pad[0]/U0/U1  (.YIN(\Sel_pad[0]/U0/NET1 ), .Y(
        \Sel_c[0] ));
    MX2 DateOut_2_3 (.A(DateOut_2_1_net_1), .B(DateOut_2_2_net_1), .S(
        \Sel_c[0] ), .Y(DateOut_2));
    IOPAD_IN \DateIn_pad[3]/U0/U0  (.PAD(DateIn[3]), .Y(
        \DateIn_pad[3]/U0/NET1 ));
    IOPAD_IN \Sel_pad[1]/U0/U0  (.PAD(Sel[1]), .Y(\Sel_pad[1]/U0/NET1 )
        );
    IOIN_IB \DateIn_pad[3]/U0/U1  (.YIN(\DateIn_pad[3]/U0/NET1 ), .Y(
        \DateIn_c[3] ));
    IOPAD_IN \DateIn_pad[2]/U0/U0  (.PAD(DateIn[2]), .Y(
        \DateIn_pad[2]/U0/NET1 ));
    IOIN_IB \DateIn_pad[2]/U0/U1  (.YIN(\DateIn_pad[2]/U0/NET1 ), .Y(
        \DateIn_c[2] ));
    IOIN_IB \Enable_pad/U0/U1  (.YIN(\Enable_pad/U0/NET1 ), .Y(
        Enable_c));
    IOTRI_OB_EB \DateOut_pad/U0/U1  (.D(DateOut_c), .E(VCC), .DOUT(
        \DateOut_pad/U0/NET1 ), .EOUT(\DateOut_pad/U0/NET2 ));
    MX2 DateOut_2_2 (.A(\DateIn_c[1] ), .B(\DateIn_c[3] ), .S(
        \Sel_c[1] ), .Y(DateOut_2_2_net_1));
    IOPAD_IN \DateIn_pad[1]/U0/U0  (.PAD(DateIn[1]), .Y(
        \DateIn_pad[1]/U0/NET1 ));
    IOIN_IB \Sel_pad[1]/U0/U1  (.YIN(\Sel_pad[1]/U0/NET1 ), .Y(
        \Sel_c[1] ));
    IOPAD_IN \DateIn_pad[0]/U0/U0  (.PAD(DateIn[0]), .Y(
        \DateIn_pad[0]/U0/NET1 ));
    IOPAD_IN \Enable_pad/U0/U0  (.PAD(Enable), .Y(\Enable_pad/U0/NET1 )
        );
    NOR2A DateOut_pad_RNO (.A(DateOut_2), .B(Enable_c), .Y(DateOut_c));
    IOIN_IB \DateIn_pad[1]/U0/U1  (.YIN(\DateIn_pad[1]/U0/NET1 ), .Y(
        \DateIn_c[1] ));
    IOIN_IB \DateIn_pad[0]/U0/U1  (.YIN(\DateIn_pad[0]/U0/NET1 ), .Y(
        \DateIn_c[0] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
