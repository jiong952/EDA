`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_74HC74(
       Sd,
       Rd,
       Clk,
       D,
       Q
    );
input  Sd;
input  Rd;
input  Clk;
input  D;
output Q;

    wire Q8_net_1, Sd_c, Rd_c, Clk_c, D_c, Q_c, Sd_c_i, 
        \Sd_pad/U0/NET1 , \Rd_pad/U0/NET1 , \Q_pad/U0/NET1 , 
        \Q_pad/U0/NET2 , VCC, \D_pad/U0/NET1 , \Clk_pad/U0/NET1 , GND, 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    INV Q_RNO (.A(Sd_c), .Y(Sd_c_i));
    DFN1P1C1 Q_inst_1 (.D(D_c), .CLK(Clk_c), .PRE(Sd_c_i), .CLR(
        Q8_net_1), .Q(Q_c));
    IOIN_IB \Sd_pad/U0/U1  (.YIN(\Sd_pad/U0/NET1 ), .Y(Sd_c));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOIN_IB \Rd_pad/U0/U1  (.YIN(\Rd_pad/U0/NET1 ), .Y(Rd_c));
    NOR2A Q8 (.A(Sd_c), .B(Rd_c), .Y(Q8_net_1));
    IOPAD_IN \D_pad/U0/U0  (.PAD(D), .Y(\D_pad/U0/NET1 ));
    IOPAD_IN \Sd_pad/U0/U0  (.PAD(Sd), .Y(\Sd_pad/U0/NET1 ));
    IOTRI_OB_EB \Q_pad/U0/U1  (.D(Q_c), .E(VCC), .DOUT(\Q_pad/U0/NET1 )
        , .EOUT(\Q_pad/U0/NET2 ));
    IOPAD_IN \Rd_pad/U0/U0  (.PAD(Rd), .Y(\Rd_pad/U0/NET1 ));
    IOPAD_TRI \Q_pad/U0/U0  (.D(\Q_pad/U0/NET1 ), .E(\Q_pad/U0/NET2 ), 
        .PAD(Q));
    IOIN_IB \D_pad/U0/U1  (.YIN(\D_pad/U0/NET1 ), .Y(D_c));
    IOIN_IB \Clk_pad/U0/U1  (.YIN(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
