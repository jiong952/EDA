`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_74HC112(
       Set_N,
       Rst_N,
       Clk_N,
       J,
       K,
       Q,
       Qn
    );
input  Set_N;
input  Rst_N;
input  Clk_N;
input  J;
input  K;
output Q;
output Qn;

    wire Q_RNO_net_1, N_21_mux, Set_N_c, Rst_N_c, Clk_N_c, J_c, K_c, 
        Q_c, Q_c_i_net_1, Set_N_c_i, \Q_pad/U0/NET1 , \Q_pad/U0/NET2 , 
        \Rst_N_pad/U0/NET1 , \Clk_N_pad/U0/NET1 , \Qn_pad/U0/NET1 , 
        \Qn_pad/U0/NET2 , VCC, \J_pad/U0/NET1 , \Set_N_pad/U0/NET1 , 
        \K_pad/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \J_pad/U0/U1  (.YIN(\J_pad/U0/NET1 ), .Y(J_c));
    NOR2A Q_RNO (.A(Set_N_c), .B(Rst_N_c), .Y(Q_RNO_net_1));
    MX2B Q_0 (.A(J_c), .B(K_c), .S(Q_c), .Y(N_21_mux));
    IOPAD_TRI \Qn_pad/U0/U0  (.D(\Qn_pad/U0/NET1 ), .E(
        \Qn_pad/U0/NET2 ), .PAD(Qn));
    IOPAD_IN \Clk_N_pad/U0/U0  (.PAD(Clk_N), .Y(\Clk_N_pad/U0/NET1 ));
    IOPAD_IN \J_pad/U0/U0  (.PAD(J), .Y(\J_pad/U0/NET1 ));
    DFN0P1C1 Q_inst_1 (.D(N_21_mux), .CLK(Clk_N_c), .PRE(Set_N_c_i), 
        .CLR(Q_RNO_net_1), .Q(Q_c));
    IOIN_IB \K_pad/U0/U1  (.YIN(\K_pad/U0/NET1 ), .Y(K_c));
    IOIN_IB \Rst_N_pad/U0/U1  (.YIN(\Rst_N_pad/U0/NET1 ), .Y(Rst_N_c));
    IOIN_IB \Set_N_pad/U0/U1  (.YIN(\Set_N_pad/U0/NET1 ), .Y(Set_N_c));
    INV Q_c_i (.A(Q_c), .Y(Q_c_i_net_1));
    IOPAD_IN \K_pad/U0/U0  (.PAD(K), .Y(\K_pad/U0/NET1 ));
    IOTRI_OB_EB \Qn_pad/U0/U1  (.D(Q_c_i_net_1), .E(VCC), .DOUT(
        \Qn_pad/U0/NET1 ), .EOUT(\Qn_pad/U0/NET2 ));
    IOPAD_IN \Set_N_pad/U0/U0  (.PAD(Set_N), .Y(\Set_N_pad/U0/NET1 ));
    IOPAD_IN \Rst_N_pad/U0/U0  (.PAD(Rst_N), .Y(\Rst_N_pad/U0/NET1 ));
    IOTRI_OB_EB \Q_pad/U0/U1  (.D(Q_c), .E(VCC), .DOUT(\Q_pad/U0/NET1 )
        , .EOUT(\Q_pad/U0/NET2 ));
    IOPAD_TRI \Q_pad/U0/U0  (.D(\Q_pad/U0/NET1 ), .E(\Q_pad/U0/NET2 ), 
        .PAD(Q));
    IOIN_IB \Clk_N_pad/U0/U1  (.YIN(\Clk_N_pad/U0/NET1 ), .Y(Clk_N_c));
    INV Q_RNO_0 (.A(Set_N_c), .Y(Set_N_c_i));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
