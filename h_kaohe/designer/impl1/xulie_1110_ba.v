`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module xulie_1110(
       Reset,
       Clk,
       Din,
       Dout
    );
input  Reset;
input  Clk;
input  Din;
output Dout;

    wire \current_state[0]_net_1 , \current_state[1]_net_1 , 
        \current_state[2]_net_1 , \current_state[3]_net_1 , 
        \current_state_RNO[2]_net_1 , \current_state_RNO[3]_net_1 , 
        \current_state_RNO[4]_net_1 , \current_state_ns[0] , N_15_mux, 
        Reset_c, Clk_c, Din_c, Dout_d_c, m13_0, m5_0, m10_0, m8_0, 
        Din_c_i, \Clk_pad/U0/NET1 , \Reset_pad/U0/NET1 , 
        \Dout_pad/U0/NET1 , \Dout_pad/U0/NET2 , VCC, \Din_pad/U0/NET1 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    INV \current_state_RNO[1]  (.A(Din_c), .Y(Din_c_i));
    DFN1C1 \current_state[3]  (.D(\current_state_RNO[3]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[3]_net_1 ));
    NOR2A \current_state_RNO_0[2]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(m5_0));
    NOR2A \current_state_RNO_0[4]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(m10_0));
    IOTRI_OB_EB \Dout_pad/U0/U1  (.D(Dout_d_c), .E(VCC), .DOUT(
        \Dout_pad/U0/NET1 ), .EOUT(\Dout_pad/U0/NET2 ));
    IOPAD_IN \Din_pad/U0/U0  (.PAD(Din), .Y(\Din_pad/U0/NET1 ));
    NOR3B \current_state_RNO[4]  (.A(N_15_mux), .B(m10_0), .C(
        \current_state[1]_net_1 ), .Y(\current_state_RNO[4]_net_1 ));
    DFN1C1 \current_state[1]  (.D(Din_c_i), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\current_state[1]_net_1 ));
    IOPAD_TRI \Dout_pad/U0/U0  (.D(\Dout_pad/U0/NET1 ), .E(
        \Dout_pad/U0/NET2 ), .PAD(Dout));
    IOPAD_IN \Reset_pad/U0/U0  (.PAD(Reset), .Y(\Reset_pad/U0/NET1 ));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOIN_IB \Reset_pad/U0/U1  (.YIN(\Reset_pad/U0/NET1 ), .Y(Reset_c));
    DFN1C1 \current_state[4]  (.D(\current_state_RNO[4]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(Dout_d_c));
    NOR3B \current_state_RNO[2]  (.A(N_15_mux), .B(m5_0), .C(
        \current_state[2]_net_1 ), .Y(\current_state_RNO[2]_net_1 ));
    NOR2A \current_state_RNO_0[0]  (.A(Din_c), .B(
        \current_state[1]_net_1 ), .Y(m13_0));
    NOR3A \current_state_RNO[0]  (.A(m13_0), .B(
        \current_state[3]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        \current_state_ns[0] ));
    DFN1C1 \current_state[2]  (.D(\current_state_RNO[2]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[2]_net_1 ));
    DFN1P1 \current_state[0]  (.D(\current_state_ns[0] ), .CLK(Clk_c), 
        .PRE(Reset_c), .Q(\current_state[0]_net_1 ));
    NOR3A \current_state_RNI9HFV[0]  (.A(Din_c), .B(
        \current_state[0]_net_1 ), .C(Dout_d_c), .Y(N_15_mux));
    IOIN_IB \Din_pad/U0/U1  (.YIN(\Din_pad/U0/NET1 ), .Y(Din_c));
    NOR2A \current_state_RNO_0[3]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(m8_0));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    NOR3B \current_state_RNO[3]  (.A(N_15_mux), .B(m8_0), .C(
        \current_state[1]_net_1 ), .Y(\current_state_RNO[3]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
