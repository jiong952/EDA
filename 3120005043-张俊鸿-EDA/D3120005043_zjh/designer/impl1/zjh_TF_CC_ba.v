`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_TF_CC(
       A,
       B
    );
input  [3:0] A;
output [3:0] B;

    wire I_5, I_7, I_8, \A_c[1] , \A_c[2] , \A_c[3] , \A_c_c[0] , 
        \B_c[1] , \B_c[2] , \B_c[3] , \B_pad[3]/U0/NET1 , 
        \B_pad[3]/U0/NET2 , \B_pad[2]/U0/NET1 , \B_pad[2]/U0/NET2 , 
        \A_pad[0]/U0/NET1 , \B_pad[1]/U0/NET1 , \B_pad[1]/U0/NET2 , 
        \A_pad[2]/U0/NET1 , \A_pad[3]/U0/NET1 , \A_pad[1]/U0/NET1 , 
        \B_pad[0]/U0/NET1 , \B_pad[0]/U0/NET2 , VCC, GND, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOTRI_OB_EB \B_pad[3]/U0/U1  (.D(\B_c[3] ), .E(VCC), .DOUT(
        \B_pad[3]/U0/NET1 ), .EOUT(\B_pad[3]/U0/NET2 ));
    IOPAD_TRI \B_pad[2]/U0/U0  (.D(\B_pad[2]/U0/NET1 ), .E(
        \B_pad[2]/U0/NET2 ), .PAD(B[2]));
    IOPAD_TRI \B_pad[1]/U0/U0  (.D(\B_pad[1]/U0/NET1 ), .E(
        \B_pad[1]/U0/NET2 ), .PAD(B[1]));
    MX2 \B_pad_RNO[1]  (.A(\A_c[1] ), .B(I_5), .S(\A_c[3] ), .Y(
        \B_c[1] ));
    AX1D un2_B_I_7 (.A(\A_c_c[0] ), .B(\A_c[1] ), .C(\A_c[2] ), .Y(I_7)
        );
    IOTRI_OB_EB \B_pad[2]/U0/U1  (.D(\B_c[2] ), .E(VCC), .DOUT(
        \B_pad[2]/U0/NET1 ), .EOUT(\B_pad[2]/U0/NET2 ));
    IOTRI_OB_EB \B_pad[1]/U0/U1  (.D(\B_c[1] ), .E(VCC), .DOUT(
        \B_pad[1]/U0/NET1 ), .EOUT(\B_pad[1]/U0/NET2 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    OR3 un2_B_I_8 (.A(\A_c_c[0] ), .B(\A_c[2] ), .C(\A_c[1] ), .Y(I_8));
    IOPAD_TRI \B_pad[0]/U0/U0  (.D(\B_pad[0]/U0/NET1 ), .E(
        \B_pad[0]/U0/NET2 ), .PAD(B[0]));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    NOR2B \B_pad_RNO[3]  (.A(\A_c[3] ), .B(I_8), .Y(\B_c[3] ));
    IOTRI_OB_EB \B_pad[0]/U0/U1  (.D(\A_c_c[0] ), .E(VCC), .DOUT(
        \B_pad[0]/U0/NET1 ), .EOUT(\B_pad[0]/U0/NET2 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    XOR2 un2_B_I_5 (.A(\A_c_c[0] ), .B(\A_c[1] ), .Y(I_5));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOPAD_TRI \B_pad[3]/U0/U0  (.D(\B_pad[3]/U0/NET1 ), .E(
        \B_pad[3]/U0/NET2 ), .PAD(B[3]));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c_c[0] ));
    MX2 \B_pad_RNO[2]  (.A(\A_c[2] ), .B(I_7), .S(\A_c[3] ), .Y(
        \B_c[2] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
