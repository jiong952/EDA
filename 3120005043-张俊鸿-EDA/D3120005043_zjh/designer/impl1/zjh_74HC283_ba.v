`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_74HC283(
       A,
       B,
       Cin,
       S,
       Cout
    );
input  [3:0] A;
input  [3:0] B;
input  Cin;
output [3:0] S;
output Cout;

    wire \S_1_0_0.N_12 , \S_1_0_0.N_14 , \S_1_0_0.N_15 , 
        \S_1_0_0.N_16 , \A_c[0] , \A_c[1] , \A_c[2] , \A_c[3] , 
        \B_c[0] , \B_c[1] , \B_c[2] , \B_c[3] , Cin_c, \S_c[3] , 
        \S_1_0_0.N_21_i_i , \S_1_0_0.N_22_i_i , \S_1_0_0.N_23_i_i , 
        \B_pad[3]/U0/NET1 , \B_pad[2]/U0/NET1 , \S_pad[3]/U0/NET1 , 
        \S_pad[3]/U0/NET2 , \A_pad[0]/U0/NET1 , \B_pad[1]/U0/NET1 , 
        \S_pad[1]/U0/NET1 , \S_pad[1]/U0/NET2 , \A_pad[2]/U0/NET1 , 
        \A_pad[3]/U0/NET1 , \Cout_pad/U0/NET1 , \Cout_pad/U0/NET2 , 
        \S_pad[0]/U0/NET1 , \S_pad[0]/U0/NET2 , \S_pad[2]/U0/NET1 , 
        \S_pad[2]/U0/NET2 , VCC, \A_pad[1]/U0/NET1 , \Cin_pad/U0/NET1 , 
        \B_pad[0]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XOR3 S_1_0_0_ADD_4x4_slow_I3_S_i_x2 (.A(\A_c[3] ), .B(
        \S_1_0_0.N_16 ), .C(\B_c[3] ), .Y(\S_c[3] ));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    IOIN_IB \B_pad[1]/U0/U1  (.YIN(\B_pad[1]/U0/NET1 ), .Y(\B_c[1] ));
    IOTRI_OB_EB \Cout_pad/U0/U1  (.D(\S_1_0_0.N_12 ), .E(VCC), .DOUT(
        \Cout_pad/U0/NET1 ), .EOUT(\Cout_pad/U0/NET2 ));
    IOIN_IB \B_pad[3]/U0/U1  (.YIN(\B_pad[3]/U0/NET1 ), .Y(\B_c[3] ));
    IOPAD_TRI \S_pad[2]/U0/U0  (.D(\S_pad[2]/U0/NET1 ), .E(
        \S_pad[2]/U0/NET2 ), .PAD(S[2]));
    IOPAD_TRI \Cout_pad/U0/U0  (.D(\Cout_pad/U0/NET1 ), .E(
        \Cout_pad/U0/NET2 ), .PAD(Cout));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    IOPAD_IN \B_pad[0]/U0/U0  (.PAD(B[0]), .Y(\B_pad[0]/U0/NET1 ));
    IOPAD_IN \Cin_pad/U0/U0  (.PAD(Cin), .Y(\Cin_pad/U0/NET1 ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I2_S_i_o3 (.A(\S_1_0_0.N_14 ), .B(
        \A_c[1] ), .C(\B_c[1] ), .Y(\S_1_0_0.N_15 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    IOIN_IB \B_pad[2]/U0/U1  (.YIN(\B_pad[2]/U0/NET1 ), .Y(\B_c[2] ));
    IOPAD_IN \B_pad[1]/U0/U0  (.PAD(B[1]), .Y(\B_pad[1]/U0/NET1 ));
    IOPAD_IN \B_pad[3]/U0/U0  (.PAD(B[3]), .Y(\B_pad[3]/U0/NET1 ));
    IOTRI_OB_EB \S_pad[3]/U0/U1  (.D(\S_c[3] ), .E(VCC), .DOUT(
        \S_pad[3]/U0/NET1 ), .EOUT(\S_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \S_pad[1]/U0/U1  (.D(\S_1_0_0.N_22_i_i ), .E(VCC), 
        .DOUT(\S_pad[1]/U0/NET1 ), .EOUT(\S_pad[1]/U0/NET2 ));
    IOIN_IB \Cin_pad/U0/U1  (.YIN(\Cin_pad/U0/NET1 ), .Y(Cin_c));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \S_pad[0]/U0/U1  (.D(\S_1_0_0.N_21_i_i ), .E(VCC), 
        .DOUT(\S_pad[0]/U0/NET1 ), .EOUT(\S_pad[0]/U0/NET2 ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    XOR3 S_1_0_0_ADD_4x4_slow_I0_S_i_x3 (.A(Cin_c), .B(\B_c[0] ), .C(
        \A_c[0] ), .Y(\S_1_0_0.N_21_i_i ));
    IOTRI_OB_EB \S_pad[2]/U0/U1  (.D(\S_1_0_0.N_23_i_i ), .E(VCC), 
        .DOUT(\S_pad[2]/U0/NET1 ), .EOUT(\S_pad[2]/U0/NET2 ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I1_S_i_o3 (.A(\A_c[0] ), .B(Cin_c), .C(
        \B_c[0] ), .Y(\S_1_0_0.N_14 ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I3_CO1_i_o3 (.A(\S_1_0_0.N_15 ), .B(
        \A_c[2] ), .C(\B_c[2] ), .Y(\S_1_0_0.N_16 ));
    MAJ3 S_1_0_0_ADD_4x4_slow_I3_CO1_i (.A(\A_c[3] ), .B(\B_c[3] ), .C(
        \S_1_0_0.N_16 ), .Y(\S_1_0_0.N_12 ));
    IOPAD_IN \B_pad[2]/U0/U0  (.PAD(B[2]), .Y(\B_pad[2]/U0/NET1 ));
    XOR3 S_1_0_0_ADD_4x4_slow_I1_S_i_x3 (.A(\A_c[1] ), .B(\B_c[1] ), 
        .C(\S_1_0_0.N_14 ), .Y(\S_1_0_0.N_22_i_i ));
    IOPAD_TRI \S_pad[3]/U0/U0  (.D(\S_pad[3]/U0/NET1 ), .E(
        \S_pad[3]/U0/NET2 ), .PAD(S[3]));
    XOR3 S_1_0_0_ADD_4x4_slow_I2_S_i_x3 (.A(\A_c[2] ), .B(\B_c[2] ), 
        .C(\S_1_0_0.N_15 ), .Y(\S_1_0_0.N_23_i_i ));
    IOPAD_TRI \S_pad[1]/U0/U0  (.D(\S_pad[1]/U0/NET1 ), .E(
        \S_pad[1]/U0/NET2 ), .PAD(S[1]));
    IOIN_IB \B_pad[0]/U0/U1  (.YIN(\B_pad[0]/U0/NET1 ), .Y(\B_c[0] ));
    IOPAD_TRI \S_pad[0]/U0/U0  (.D(\S_pad[0]/U0/NET1 ), .E(
        \S_pad[0]/U0/NET2 ), .PAD(S[0]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
