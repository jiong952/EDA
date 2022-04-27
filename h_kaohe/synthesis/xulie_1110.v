`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


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
        \current_state_RNO[4]_net_1 , \current_state_ns[0] , GND, VCC, 
        N_15_mux, Reset_c, Clk_c, Din_c, Dout_d_c, m13_0, m5_0, m10_0, 
        m8_0, Din_c_i;
    
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    INV \current_state_RNO[1]  (.A(Din_c), .Y(Din_c_i));
    DFN1C1 \current_state[3]  (.D(\current_state_RNO[3]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[3]_net_1 ));
    NOR2A \current_state_RNO_0[2]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(m5_0));
    NOR2A \current_state_RNO_0[4]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(m10_0));
    NOR3B \current_state_RNO[4]  (.A(N_15_mux), .B(m10_0), .C(
        \current_state[1]_net_1 ), .Y(\current_state_RNO[4]_net_1 ));
    DFN1C1 \current_state[1]  (.D(Din_c_i), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\current_state[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1C1 \current_state[4]  (.D(\current_state_RNO[4]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(Dout_d_c));
    NOR3B \current_state_RNO[2]  (.A(N_15_mux), .B(m5_0), .C(
        \current_state[2]_net_1 ), .Y(\current_state_RNO[2]_net_1 ));
    GND GND_i (.Y(GND));
    NOR2A \current_state_RNO_0[0]  (.A(Din_c), .B(
        \current_state[1]_net_1 ), .Y(m13_0));
    INBUF Reset_pad (.PAD(Reset), .Y(Reset_c));
    NOR3A \current_state_RNO[0]  (.A(m13_0), .B(
        \current_state[3]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        \current_state_ns[0] ));
    DFN1C1 \current_state[2]  (.D(\current_state_RNO[2]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[2]_net_1 ));
    DFN1P1 \current_state[0]  (.D(\current_state_ns[0] ), .CLK(Clk_c), 
        .PRE(Reset_c), .Q(\current_state[0]_net_1 ));
    NOR3A \current_state_RNI9HFV[0]  (.A(Din_c), .B(
        \current_state[0]_net_1 ), .C(Dout_d_c), .Y(N_15_mux));
    OUTBUF Dout_pad (.D(Dout_d_c), .PAD(Dout));
    NOR2A \current_state_RNO_0[3]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(m8_0));
    INBUF Din_pad (.PAD(Din), .Y(Din_c));
    NOR3B \current_state_RNO[3]  (.A(N_15_mux), .B(m8_0), .C(
        \current_state[1]_net_1 ), .Y(\current_state_RNO[3]_net_1 ));
    
endmodule
