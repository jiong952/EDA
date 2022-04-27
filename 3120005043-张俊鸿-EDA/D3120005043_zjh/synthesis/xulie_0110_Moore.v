`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module xulie_0110_Moore(
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
        \current_state_RNO[4]_net_1 , \current_state_ns[0] , 
        \current_state_ns[1] , GND, VCC, N_17_mux, Reset_c, Clk_c, 
        Din_c, Dout_d_c, m3_0, m11_2, m7_0, m5_0;
    
    NOR2 \current_state_RNIQ0QQ[0]  (.A(\current_state[0]_net_1 ), .B(
        Dout_d_c), .Y(N_17_mux));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    NOR2 \current_state_RNO[1]  (.A(\current_state[3]_net_1 ), .B(
        Din_c), .Y(\current_state_ns[1] ));
    DFN1C1 \current_state[3]  (.D(\current_state_RNO[3]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[3]_net_1 ));
    NOR2A \current_state_RNO_0[2]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(m5_0));
    NOR3A \current_state_RNO_0[4]  (.A(\current_state[3]_net_1 ), .B(
        Din_c), .C(\current_state[2]_net_1 ), .Y(m11_2));
    NOR3B \current_state_RNO[4]  (.A(N_17_mux), .B(m11_2), .C(
        \current_state[1]_net_1 ), .Y(\current_state_RNO[4]_net_1 ));
    DFN1C1 \current_state[1]  (.D(\current_state_ns[1] ), .CLK(Clk_c), 
        .CLR(Reset_c), .Q(\current_state[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1C1 \current_state[4]  (.D(\current_state_RNO[4]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(Dout_d_c));
    NOR3C \current_state_RNO[2]  (.A(N_17_mux), .B(m3_0), .C(m5_0), .Y(
        \current_state_RNO[2]_net_1 ));
    GND GND_i (.Y(GND));
    INBUF Reset_pad (.PAD(Reset), .Y(Reset_c));
    NOR3A \current_state_RNO[0]  (.A(Din_c), .B(
        \current_state[2]_net_1 ), .C(\current_state[1]_net_1 ), .Y(
        \current_state_ns[0] ));
    DFN1C1 \current_state[2]  (.D(\current_state_RNO[2]_net_1 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\current_state[2]_net_1 ));
    DFN1P1 \current_state[0]  (.D(\current_state_ns[0] ), .CLK(Clk_c), 
        .PRE(Reset_c), .Q(\current_state[0]_net_1 ));
    NOR2A \current_state_RNITH2I[3]  (.A(Din_c), .B(
        \current_state[3]_net_1 ), .Y(m3_0));
    OUTBUF Dout_pad (.D(Dout_d_c), .PAD(Dout));
    NOR2A \current_state_RNO_0[3]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(m7_0));
    INBUF Din_pad (.PAD(Din), .Y(Din_c));
    NOR3C \current_state_RNO[3]  (.A(N_17_mux), .B(m3_0), .C(m7_0), .Y(
        \current_state_RNO[3]_net_1 ));
    
endmodule
