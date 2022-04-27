`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module zjh_CE4(
       DataIn,
       DataIn_0,
       AEB,
       AGB,
       ALB
    );
input  [7:0] DataIn;
input  [7:0] DataIn_0;
output AEB;
output AGB;
output ALB;

    wire \zjh_TF_CC_0_DataOut[1] , \zjh_TF_CC_0_DataOut[2] , 
        \zjh_TF_CC_0_DataOut[3] , \zjh_TF_CC_0_DataOut[4] , 
        \zjh_TF_CC_0_DataOut[5] , \zjh_TF_CC_0_DataOut[6] , 
        \zjh_TF_CC_0_DataOut[7] , \zjh_TF_CC_1_DataOut[1] , 
        \zjh_TF_CC_1_DataOut[2] , \zjh_TF_CC_1_DataOut[3] , 
        \zjh_TF_CC_1_DataOut[4] , \zjh_TF_CC_1_DataOut[5] , 
        \zjh_TF_CC_1_DataOut[6] , \zjh_TF_CC_1_DataOut[7] , 
        \DataIn_c[0] , \DataIn_c[1] , \DataIn_c[2] , \DataIn_c[3] , 
        \DataIn_c[4] , \DataIn_c[5] , \DataIn_c[6] , \DataIn_c[7] , 
        \DataIn_0_c[0] , \DataIn_0_c[1] , \DataIn_0_c[2] , 
        \DataIn_0_c[3] , \DataIn_0_c[4] , \DataIn_0_c[5] , 
        \DataIn_0_c[6] , \DataIn_0_c[7] , AEB_c, AGB_c, ALB_c, 
        \CP0_0/XNOR2_1_Y , \CP0_0/XNOR2_6_Y , \CP0_0/AND2_0_Y , 
        \CP0_0/AND3_1_Y , \CP0_0/AND3_0_Y , \CP0_0/XNOR2_7_Y , 
        \CP0_0/XNOR2_2_Y , \CP0_0/XNOR2_0_Y , \CP0_0/XNOR2_4_Y , 
        \CP0_0/XNOR2_3_Y , \zjh_TF_CC_0/DWACT_FINC_E[0] , 
        \zjh_TF_CC_0/I_19 , \zjh_TF_CC_0/I_17 , \zjh_TF_CC_0/I_14 , 
        \zjh_TF_CC_0/I_12 , \zjh_TF_CC_0/I_9 , \zjh_TF_CC_0/I_7 , 
        \zjh_TF_CC_0/I_5 , \zjh_TF_CC_0/DWACT_FINC_E[2] , 
        \zjh_TF_CC_0/N_3 , \zjh_TF_CC_0/DWACT_FINC_E[1] , 
        \zjh_TF_CC_0/N_4 , \zjh_TF_CC_0/N_6 , 
        \zjh_TF_CC_1/DWACT_FINC_E[0] , \zjh_TF_CC_1/I_19_0 , 
        \zjh_TF_CC_1/I_17_0 , \zjh_TF_CC_1/I_14_0 , 
        \zjh_TF_CC_1/I_12_0 , \zjh_TF_CC_1/I_9_0 , \zjh_TF_CC_1/I_7_0 , 
        \zjh_TF_CC_1/I_5_0 , \zjh_TF_CC_1/DWACT_FINC_E[2] , 
        \zjh_TF_CC_1/N_3 , \zjh_TF_CC_1/DWACT_FINC_E[1] , 
        \zjh_TF_CC_1/N_4 , \zjh_TF_CC_1/N_6 , \CP2_0/U1 , 
        \CP2_0/XNOR2_1_Y , \CP2_0/OR2A_1_Y , \CP2_0/le_OUT , 
        \CP2_0/AND3_0_Y , \CP2_0/AO1D_0_Y , \CP2_0/NAND3A_0_Y , 
        \CP2_0/NOR3A_0_Y , \CP2_0/OR2A_2_Y , \CP2_0/NAND3A_1_Y , 
        \CP2_0/U2 , \CP2_0/XNOR2_2_Y , \CP2_0/XNOR2_0_Y , 
        \CP2_0/AO1C_1_Y , \CP2_0/AO1C_0_Y , \CP2_0/NOR2A_0_Y , 
        \CP2_0/OR2A_3_Y , \CP2_0/OR2A_0_Y , \CP2_0/AO1C_4_Y , 
        \CP2_0/AO1C_2_Y , \CP2_0/AO1C_5_Y , \CP2_0/AO1C_3_Y , 
        \CP1_0/U1 , \CP1_0/XNOR2_1_Y , \CP1_0/OR2A_1_Y , 
        \CP1_0/le_OUT , \CP1_0/AND3_0_Y , \CP1_0/AO1D_0_Y , 
        \CP1_0/NAND3A_0_Y , \CP1_0/NOR3A_0_Y , \CP1_0/OR2A_2_Y , 
        \CP1_0/NAND3A_1_Y , \CP1_0/U2 , \CP1_0/XNOR2_2_Y , 
        \CP1_0/XNOR2_0_Y , \CP1_0/AO1C_1_Y , \CP1_0/AO1C_0_Y , 
        \CP1_0/NOR2A_0_Y , \CP1_0/OR2A_3_Y , \CP1_0/OR2A_0_Y , 
        \CP1_0/AO1C_4_Y , \CP1_0/AO1C_2_Y , \CP1_0/AO1C_5_Y , 
        \CP1_0/AO1C_3_Y , \DataIn_pad[4]/U0/NET1 , 
        \DataIn_0_pad[2]/U0/NET1 , \DataIn_pad[5]/U0/NET1 , 
        \DataIn_pad[7]/U0/NET1 , \AGB_pad/U0/NET1 , \AGB_pad/U0/NET2 , 
        \DataIn_pad[2]/U0/NET1 , \DataIn_0_pad[1]/U0/NET1 , 
        \DataIn_0_pad[3]/U0/NET1 , \DataIn_0_pad[5]/U0/NET1 , 
        \DataIn_0_pad[0]/U0/NET1 , \DataIn_0_pad[7]/U0/NET1 , 
        \DataIn_0_pad[4]/U0/NET1 , \DataIn_pad[0]/U0/NET1 , 
        \AEB_pad/U0/NET1 , \AEB_pad/U0/NET2 , \DataIn_pad[1]/U0/NET1 , 
        \DataIn_pad[6]/U0/NET1 , \DataIn_pad[3]/U0/NET1 , 
        \ALB_pad/U0/NET1 , \ALB_pad/U0/NET2 , VCC, 
        \DataIn_0_pad[6]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XNOR2 \CP2_0/XNOR2_2  (.A(\zjh_TF_CC_1_DataOut[6] ), .B(
        \zjh_TF_CC_0_DataOut[6] ), .Y(\CP2_0/XNOR2_2_Y ));
    OR2A \CP2_0/OR2A_0  (.A(\zjh_TF_CC_1_DataOut[1] ), .B(
        \zjh_TF_CC_0_DataOut[1] ), .Y(\CP2_0/OR2A_0_Y ));
    IOPAD_IN \DataIn_0_pad[3]/U0/U0  (.PAD(DataIn_0[3]), .Y(
        \DataIn_0_pad[3]/U0/NET1 ));
    IOIN_IB \DataIn_pad[4]/U0/U1  (.YIN(\DataIn_pad[4]/U0/NET1 ), .Y(
        \DataIn_c[4] ));
    AO1 \CP2_0/AO1_le_OUT  (.A(\CP2_0/AND3_0_Y ), .B(\CP2_0/AO1D_0_Y ), 
        .C(\CP2_0/NAND3A_0_Y ), .Y(\CP2_0/le_OUT ));
    XNOR2 \CP0_0/XNOR2_7  (.A(\zjh_TF_CC_0_DataOut[3] ), .B(
        \zjh_TF_CC_1_DataOut[3] ), .Y(\CP0_0/XNOR2_7_Y ));
    MX2 \zjh_TF_CC_1/DataOut_1[6]  (.A(\DataIn_0_c[6] ), .B(
        \zjh_TF_CC_1/I_17_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[6] ));
    IOPAD_IN \DataIn_0_pad[6]/U0/U0  (.PAD(DataIn_0[6]), .Y(
        \DataIn_0_pad[6]/U0/NET1 ));
    AO1C \CP1_0/AO1C_0  (.A(\DataIn_c[0] ), .B(\DataIn_0_c[0] ), .C(
        \CP1_0/OR2A_1_Y ), .Y(\CP1_0/AO1C_0_Y ));
    MX2 \zjh_TF_CC_0/DataOut_1[5]  (.A(\DataIn_c[5] ), .B(
        \zjh_TF_CC_0/I_14 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[5] ));
    IOPAD_IN \DataIn_pad[1]/U0/U0  (.PAD(DataIn[1]), .Y(
        \DataIn_pad[1]/U0/NET1 ));
    IOIN_IB \DataIn_pad[0]/U0/U1  (.YIN(\DataIn_pad[0]/U0/NET1 ), .Y(
        \DataIn_c[0] ));
    IOIN_IB \DataIn_0_pad[1]/U0/U1  (.YIN(\DataIn_0_pad[1]/U0/NET1 ), 
        .Y(\DataIn_0_c[1] ));
    XNOR2 \CP2_0/XNOR2_1  (.A(\zjh_TF_CC_1_DataOut[4] ), .B(
        \zjh_TF_CC_0_DataOut[4] ), .Y(\CP2_0/XNOR2_1_Y ));
    NAND3A \CP1_0/NAND3A_1  (.A(\zjh_TF_CC_0_DataOut[5] ), .B(
        \zjh_TF_CC_1_DataOut[5] ), .C(\CP1_0/OR2A_3_Y ), .Y(
        \CP1_0/NAND3A_1_Y ));
    IOPAD_IN \DataIn_0_pad[4]/U0/U0  (.PAD(DataIn_0[4]), .Y(
        \DataIn_0_pad[4]/U0/NET1 ));
    XNOR2 \CP2_0/XNOR2_0  (.A(\zjh_TF_CC_1_DataOut[5] ), .B(
        \zjh_TF_CC_0_DataOut[5] ), .Y(\CP2_0/XNOR2_0_Y ));
    IOPAD_IN \DataIn_pad[7]/U0/U0  (.PAD(DataIn[7]), .Y(
        \DataIn_pad[7]/U0/NET1 ));
    AND3 \CP0_0/AND3_AEB  (.A(\CP0_0/AND2_0_Y ), .B(\CP0_0/AND3_1_Y ), 
        .C(\CP0_0/AND3_0_Y ), .Y(AEB_c));
    AND3 \CP2_0/AND3_0  (.A(\CP2_0/XNOR2_1_Y ), .B(\CP2_0/XNOR2_0_Y ), 
        .C(\CP2_0/XNOR2_2_Y ), .Y(\CP2_0/AND3_0_Y ));
    XNOR2 \CP0_0/XNOR2_1  (.A(\zjh_TF_CC_0_DataOut[4] ), .B(
        \zjh_TF_CC_1_DataOut[4] ), .Y(\CP0_0/XNOR2_1_Y ));
    XNOR2 \zjh_TF_CC_0/un1_DataOut_I_9  (.A(\DataIn_c[3] ), .B(
        \zjh_TF_CC_0/N_6 ), .Y(\zjh_TF_CC_0/I_9 ));
    AO1C \CP2_0/AO1C_2  (.A(\zjh_TF_CC_1_DataOut[3] ), .B(
        \zjh_TF_CC_0_DataOut[3] ), .C(\CP2_0/AO1C_3_Y ), .Y(
        \CP2_0/AO1C_2_Y ));
    AO1C \CP2_0/AO1C_4  (.A(\zjh_TF_CC_0_DataOut[2] ), .B(
        \zjh_TF_CC_1_DataOut[2] ), .C(\CP2_0/OR2A_0_Y ), .Y(
        \CP2_0/AO1C_4_Y ));
    OR2A \CP1_0/OR2A_0  (.A(\zjh_TF_CC_0_DataOut[1] ), .B(
        \zjh_TF_CC_1_DataOut[1] ), .Y(\CP1_0/OR2A_0_Y ));
    NOR2A \CP1_0/NOR2A_0  (.A(\zjh_TF_CC_1_DataOut[2] ), .B(
        \zjh_TF_CC_0_DataOut[2] ), .Y(\CP1_0/NOR2A_0_Y ));
    MX2 \zjh_TF_CC_1/DataOut_1[3]  (.A(\DataIn_0_c[3] ), .B(
        \zjh_TF_CC_1/I_9_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[3] ));
    AX1A \zjh_TF_CC_1/un1_DataOut_I_12  (.A(\DataIn_0_c[3] ), .B(
        \zjh_TF_CC_1/DWACT_FINC_E[0] ), .C(\DataIn_0_c[4] ), .Y(
        \zjh_TF_CC_1/I_12_0 ));
    XNOR2 \CP1_0/XNOR2_2  (.A(\zjh_TF_CC_0_DataOut[6] ), .B(
        \zjh_TF_CC_1_DataOut[6] ), .Y(\CP1_0/XNOR2_2_Y ));
    IOIN_IB \DataIn_0_pad[5]/U0/U1  (.YIN(\DataIn_0_pad[5]/U0/NET1 ), 
        .Y(\DataIn_0_c[5] ));
    OR2A \CP2_0/OR2A_2  (.A(\zjh_TF_CC_0_DataOut[6] ), .B(
        \zjh_TF_CC_1_DataOut[6] ), .Y(\CP2_0/OR2A_2_Y ));
    IOPAD_IN \DataIn_pad[2]/U0/U0  (.PAD(DataIn[2]), .Y(
        \DataIn_pad[2]/U0/NET1 ));
    XOR2 \zjh_TF_CC_1/un1_DataOut_I_5  (.A(\DataIn_0_c[0] ), .B(
        \DataIn_0_c[1] ), .Y(\zjh_TF_CC_1/I_5_0 ));
    IOPAD_IN \DataIn_pad[5]/U0/U0  (.PAD(DataIn[5]), .Y(
        \DataIn_pad[5]/U0/NET1 ));
    AO1 \CP1_0/AO1_le_OUT  (.A(\CP1_0/AND3_0_Y ), .B(\CP1_0/AO1D_0_Y ), 
        .C(\CP1_0/NAND3A_0_Y ), .Y(\CP1_0/le_OUT ));
    AO1C \CP2_0/AO1C_5  (.A(\zjh_TF_CC_0_DataOut[5] ), .B(
        \zjh_TF_CC_1_DataOut[5] ), .C(\zjh_TF_CC_0_DataOut[4] ), .Y(
        \CP2_0/AO1C_5_Y ));
    IOPAD_IN \DataIn_pad[4]/U0/U0  (.PAD(DataIn[4]), .Y(
        \DataIn_pad[4]/U0/NET1 ));
    AO1C \CP2_0/AO1C_1  (.A(\zjh_TF_CC_0_DataOut[3] ), .B(
        \zjh_TF_CC_1_DataOut[3] ), .C(\CP2_0/AO1C_0_Y ), .Y(
        \CP2_0/AO1C_1_Y ));
    IOPAD_IN \DataIn_0_pad[1]/U0/U0  (.PAD(DataIn_0[1]), .Y(
        \DataIn_0_pad[1]/U0/NET1 ));
    AX1D \zjh_TF_CC_1/un1_DataOut_I_7  (.A(\DataIn_0_c[0] ), .B(
        \DataIn_0_c[1] ), .C(\DataIn_0_c[2] ), .Y(\zjh_TF_CC_1/I_7_0 ));
    OR2A \CP2_0/OR_SIGN  (.A(\zjh_TF_CC_0_DataOut[7] ), .B(
        \zjh_TF_CC_1_DataOut[7] ), .Y(\CP2_0/U1 ));
    IOIN_IB \DataIn_pad[6]/U0/U1  (.YIN(\DataIn_pad[6]/U0/NET1 ), .Y(
        \DataIn_c[6] ));
    OR2A \CP2_0/OR2A_3  (.A(\zjh_TF_CC_1_DataOut[6] ), .B(
        \zjh_TF_CC_0_DataOut[6] ), .Y(\CP2_0/OR2A_3_Y ));
    IOPAD_IN \DataIn_pad[0]/U0/U0  (.PAD(DataIn[0]), .Y(
        \DataIn_pad[0]/U0/NET1 ));
    AO1C \CP2_0/AO1C_0  (.A(\DataIn_0_c[0] ), .B(\DataIn_c[0] ), .C(
        \CP2_0/OR2A_1_Y ), .Y(\CP2_0/AO1C_0_Y ));
    NOR3 \zjh_TF_CC_0/un1_DataOut_I_8  (.A(\DataIn_c[1] ), .B(
        \DataIn_c[0] ), .C(\DataIn_c[2] ), .Y(\zjh_TF_CC_0/N_6 ));
    AO1C \CP1_0/AO1C_3  (.A(\zjh_TF_CC_1_DataOut[3] ), .B(
        \zjh_TF_CC_0_DataOut[3] ), .C(\CP1_0/NOR2A_0_Y ), .Y(
        \CP1_0/AO1C_3_Y ));
    AX1A \zjh_TF_CC_0/un1_DataOut_I_12  (.A(\DataIn_c[3] ), .B(
        \zjh_TF_CC_0/DWACT_FINC_E[0] ), .C(\DataIn_c[4] ), .Y(
        \zjh_TF_CC_0/I_12 ));
    AO1 \CP2_0/AND_AO21  (.A(\CP2_0/le_OUT ), .B(\CP2_0/U1 ), .C(
        \CP2_0/U2 ), .Y(AGB_c));
    IOPAD_TRI \AGB_pad/U0/U0  (.D(\AGB_pad/U0/NET1 ), .E(
        \AGB_pad/U0/NET2 ), .PAD(AGB));
    OR2A \CP1_0/OR_SIGN  (.A(\zjh_TF_CC_1_DataOut[7] ), .B(
        \zjh_TF_CC_0_DataOut[7] ), .Y(\CP1_0/U1 ));
    IOIN_IB \DataIn_0_pad[7]/U0/U1  (.YIN(\DataIn_0_pad[7]/U0/NET1 ), 
        .Y(\DataIn_0_c[7] ));
    OR2A \CP1_0/OR2A_2  (.A(\zjh_TF_CC_1_DataOut[6] ), .B(
        \zjh_TF_CC_0_DataOut[6] ), .Y(\CP1_0/OR2A_2_Y ));
    NOR3A \CP2_0/NOR3A_0  (.A(\CP2_0/OR2A_3_Y ), .B(\CP2_0/AO1C_5_Y ), 
        .C(\zjh_TF_CC_1_DataOut[4] ), .Y(\CP2_0/NOR3A_0_Y ));
    NOR3B \zjh_TF_CC_1/un1_DataOut_I_16  (.A(
        \zjh_TF_CC_1/DWACT_FINC_E[1] ), .B(
        \zjh_TF_CC_1/DWACT_FINC_E[0] ), .C(\DataIn_0_c[5] ), .Y(
        \zjh_TF_CC_1/N_3 ));
    XOR2 \zjh_TF_CC_0/un1_DataOut_I_5  (.A(\DataIn_c[0] ), .B(
        \DataIn_c[1] ), .Y(\zjh_TF_CC_0/I_5 ));
    IOPAD_IN \DataIn_0_pad[5]/U0/U0  (.PAD(DataIn_0[5]), .Y(
        \DataIn_0_pad[5]/U0/NET1 ));
    MX2 \zjh_TF_CC_0/DataOut_1[1]  (.A(\DataIn_c[1] ), .B(
        \zjh_TF_CC_0/I_5 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[1] ));
    XNOR2 \CP0_0/XNOR2_2  (.A(\zjh_TF_CC_0_DataOut[7] ), .B(
        \zjh_TF_CC_1_DataOut[7] ), .Y(\CP0_0/XNOR2_2_Y ));
    IOPAD_TRI \AEB_pad/U0/U0  (.D(\AEB_pad/U0/NET1 ), .E(
        \AEB_pad/U0/NET2 ), .PAD(AEB));
    XNOR2 \CP1_0/XNOR2_1  (.A(\zjh_TF_CC_0_DataOut[4] ), .B(
        \zjh_TF_CC_1_DataOut[4] ), .Y(\CP1_0/XNOR2_1_Y ));
    XNOR2 \CP0_0/XNOR2_6  (.A(\DataIn_c[0] ), .B(\DataIn_0_c[0] ), .Y(
        \CP0_0/XNOR2_6_Y ));
    MX2 \zjh_TF_CC_1/DataOut_1[5]  (.A(\DataIn_0_c[5] ), .B(
        \zjh_TF_CC_1/I_14_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[5] ));
    MX2 \zjh_TF_CC_1/DataOut_1[1]  (.A(\DataIn_0_c[1] ), .B(
        \zjh_TF_CC_1/I_5_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[1] ));
    AX1D \zjh_TF_CC_0/un1_DataOut_I_7  (.A(\DataIn_c[0] ), .B(
        \DataIn_c[1] ), .C(\DataIn_c[2] ), .Y(\zjh_TF_CC_0/I_7 ));
    IOIN_IB \DataIn_0_pad[2]/U0/U1  (.YIN(\DataIn_0_pad[2]/U0/NET1 ), 
        .Y(\DataIn_0_c[2] ));
    IOTRI_OB_EB \AGB_pad/U0/U1  (.D(AGB_c), .E(VCC), .DOUT(
        \AGB_pad/U0/NET1 ), .EOUT(\AGB_pad/U0/NET2 ));
    AND3 \CP0_0/AND3_1  (.A(\CP0_0/XNOR2_6_Y ), .B(\CP0_0/XNOR2_4_Y ), 
        .C(\CP0_0/XNOR2_0_Y ), .Y(\CP0_0/AND3_1_Y ));
    XNOR2 \zjh_TF_CC_1/un1_DataOut_I_17  (.A(\DataIn_0_c[6] ), .B(
        \zjh_TF_CC_1/N_3 ), .Y(\zjh_TF_CC_1/I_17_0 ));
    IOPAD_TRI \ALB_pad/U0/U0  (.D(\ALB_pad/U0/NET1 ), .E(
        \ALB_pad/U0/NET2 ), .PAD(ALB));
    NOR2 \zjh_TF_CC_1/un1_DataOut_I_15  (.A(\DataIn_0_c[3] ), .B(
        \DataIn_0_c[4] ), .Y(\zjh_TF_CC_1/DWACT_FINC_E[1] ));
    OR2A \CP2_0/OR2A_1  (.A(\zjh_TF_CC_0_DataOut[1] ), .B(
        \zjh_TF_CC_1_DataOut[1] ), .Y(\CP2_0/OR2A_1_Y ));
    AND2A \CP1_0/AND_SIGN  (.A(\zjh_TF_CC_1_DataOut[7] ), .B(
        \zjh_TF_CC_0_DataOut[7] ), .Y(\CP1_0/U2 ));
    MX2 \zjh_TF_CC_1/DataOut_1[4]  (.A(\DataIn_0_c[4] ), .B(
        \zjh_TF_CC_1/I_12_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[4] ));
    OR2A \CP1_0/OR2A_3  (.A(\zjh_TF_CC_0_DataOut[6] ), .B(
        \zjh_TF_CC_1_DataOut[6] ), .Y(\CP1_0/OR2A_3_Y ));
    AO1D \CP1_0/AO1D_0  (.A(\CP1_0/AO1C_1_Y ), .B(\CP1_0/AO1C_4_Y ), 
        .C(\CP1_0/AO1C_2_Y ), .Y(\CP1_0/AO1D_0_Y ));
    NOR3 \zjh_TF_CC_1/un1_DataOut_I_10  (.A(\DataIn_0_c[1] ), .B(
        \DataIn_0_c[0] ), .C(\DataIn_0_c[2] ), .Y(
        \zjh_TF_CC_1/DWACT_FINC_E[0] ));
    XNOR2 \CP0_0/XNOR2_4  (.A(\zjh_TF_CC_0_DataOut[1] ), .B(
        \zjh_TF_CC_1_DataOut[1] ), .Y(\CP0_0/XNOR2_4_Y ));
    NOR3 \zjh_TF_CC_1/un1_DataOut_I_18  (.A(\DataIn_0_c[4] ), .B(
        \DataIn_0_c[3] ), .C(\DataIn_0_c[5] ), .Y(
        \zjh_TF_CC_1/DWACT_FINC_E[2] ));
    MX2 \zjh_TF_CC_1/DataOut_1[2]  (.A(\DataIn_0_c[2] ), .B(
        \zjh_TF_CC_1/I_7_0 ), .S(\DataIn_0_c[7] ), .Y(
        \zjh_TF_CC_1_DataOut[2] ));
    XNOR2 \zjh_TF_CC_1/un1_DataOut_I_9  (.A(\DataIn_0_c[3] ), .B(
        \zjh_TF_CC_1/N_6 ), .Y(\zjh_TF_CC_1/I_9_0 ));
    IOTRI_OB_EB \AEB_pad/U0/U1  (.D(AEB_c), .E(VCC), .DOUT(
        \AEB_pad/U0/NET1 ), .EOUT(\AEB_pad/U0/NET2 ));
    XA1A \CP0_0/AND2_0  (.A(\zjh_TF_CC_0_DataOut[6] ), .B(
        \zjh_TF_CC_1_DataOut[6] ), .C(\CP0_0/XNOR2_2_Y ), .Y(
        \CP0_0/AND2_0_Y ));
    MX2 \zjh_TF_CC_0/DataOut_1[2]  (.A(\DataIn_c[2] ), .B(
        \zjh_TF_CC_0/I_7 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[2] ));
    NAND3A \CP2_0/NAND3A_0  (.A(\CP2_0/NOR3A_0_Y ), .B(
        \CP2_0/OR2A_2_Y ), .C(\CP2_0/NAND3A_1_Y ), .Y(
        \CP2_0/NAND3A_0_Y ));
    AO1 \CP1_0/AND_AO21  (.A(\CP1_0/le_OUT ), .B(\CP1_0/U1 ), .C(
        \CP1_0/U2 ), .Y(ALB_c));
    IOIN_IB \DataIn_0_pad[0]/U0/U1  (.YIN(\DataIn_0_pad[0]/U0/NET1 ), 
        .Y(\DataIn_0_c[0] ));
    IOTRI_OB_EB \ALB_pad/U0/U1  (.D(ALB_c), .E(VCC), .DOUT(
        \ALB_pad/U0/NET1 ), .EOUT(\ALB_pad/U0/NET2 ));
    NOR3B \zjh_TF_CC_0/un1_DataOut_I_16  (.A(
        \zjh_TF_CC_0/DWACT_FINC_E[1] ), .B(
        \zjh_TF_CC_0/DWACT_FINC_E[0] ), .C(\DataIn_c[5] ), .Y(
        \zjh_TF_CC_0/N_3 ));
    IOPAD_IN \DataIn_pad[6]/U0/U0  (.PAD(DataIn[6]), .Y(
        \DataIn_pad[6]/U0/NET1 ));
    IOIN_IB \DataIn_pad[3]/U0/U1  (.YIN(\DataIn_pad[3]/U0/NET1 ), .Y(
        \DataIn_c[3] ));
    IOPAD_IN \DataIn_0_pad[7]/U0/U0  (.PAD(DataIn_0[7]), .Y(
        \DataIn_0_pad[7]/U0/NET1 ));
    XNOR2 \CP0_0/XNOR2_3  (.A(\zjh_TF_CC_0_DataOut[5] ), .B(
        \zjh_TF_CC_1_DataOut[5] ), .Y(\CP0_0/XNOR2_3_Y ));
    OR3B \zjh_TF_CC_1/un1_DataOut_I_19  (.A(
        \zjh_TF_CC_1/DWACT_FINC_E[0] ), .B(
        \zjh_TF_CC_1/DWACT_FINC_E[2] ), .C(\DataIn_0_c[6] ), .Y(
        \zjh_TF_CC_1/I_19_0 ));
    XNOR2 \zjh_TF_CC_0/un1_DataOut_I_17  (.A(\DataIn_c[6] ), .B(
        \zjh_TF_CC_0/N_3 ), .Y(\zjh_TF_CC_0/I_17 ));
    NOR2A \CP2_0/NOR2A_0  (.A(\zjh_TF_CC_0_DataOut[2] ), .B(
        \zjh_TF_CC_1_DataOut[2] ), .Y(\CP2_0/NOR2A_0_Y ));
    XNOR2 \CP1_0/XNOR2_0  (.A(\zjh_TF_CC_0_DataOut[5] ), .B(
        \zjh_TF_CC_1_DataOut[5] ), .Y(\CP1_0/XNOR2_0_Y ));
    OR2A \CP1_0/OR2A_1  (.A(\zjh_TF_CC_1_DataOut[1] ), .B(
        \zjh_TF_CC_0_DataOut[1] ), .Y(\CP1_0/OR2A_1_Y ));
    NOR2 \zjh_TF_CC_0/un1_DataOut_I_15  (.A(\DataIn_c[3] ), .B(
        \DataIn_c[4] ), .Y(\zjh_TF_CC_0/DWACT_FINC_E[1] ));
    AO1C \CP2_0/AO1C_3  (.A(\zjh_TF_CC_0_DataOut[3] ), .B(
        \zjh_TF_CC_1_DataOut[3] ), .C(\CP2_0/NOR2A_0_Y ), .Y(
        \CP2_0/AO1C_3_Y ));
    NOR3 \zjh_TF_CC_0/un1_DataOut_I_10  (.A(\DataIn_c[1] ), .B(
        \DataIn_c[0] ), .C(\DataIn_c[2] ), .Y(
        \zjh_TF_CC_0/DWACT_FINC_E[0] ));
    AND3 \CP1_0/AND3_0  (.A(\CP1_0/XNOR2_1_Y ), .B(\CP1_0/XNOR2_0_Y ), 
        .C(\CP1_0/XNOR2_2_Y ), .Y(\CP1_0/AND3_0_Y ));
    NOR3 \zjh_TF_CC_0/un1_DataOut_I_18  (.A(\DataIn_c[4] ), .B(
        \DataIn_c[3] ), .C(\DataIn_c[5] ), .Y(
        \zjh_TF_CC_0/DWACT_FINC_E[2] ));
    XNOR2 \zjh_TF_CC_1/un1_DataOut_I_14  (.A(\DataIn_0_c[5] ), .B(
        \zjh_TF_CC_1/N_4 ), .Y(\zjh_TF_CC_1/I_14_0 ));
    IOPAD_IN \DataIn_0_pad[2]/U0/U0  (.PAD(DataIn_0[2]), .Y(
        \DataIn_0_pad[2]/U0/NET1 ));
    XNOR2 \CP0_0/XNOR2_0  (.A(\zjh_TF_CC_0_DataOut[2] ), .B(
        \zjh_TF_CC_1_DataOut[2] ), .Y(\CP0_0/XNOR2_0_Y ));
    NOR3A \zjh_TF_CC_1/un1_DataOut_I_13  (.A(
        \zjh_TF_CC_1/DWACT_FINC_E[0] ), .B(\DataIn_0_c[3] ), .C(
        \DataIn_0_c[4] ), .Y(\zjh_TF_CC_1/N_4 ));
    IOIN_IB \DataIn_0_pad[3]/U0/U1  (.YIN(\DataIn_0_pad[3]/U0/NET1 ), 
        .Y(\DataIn_0_c[3] ));
    MX2 \zjh_TF_CC_0/DataOut_1[3]  (.A(\DataIn_c[3] ), .B(
        \zjh_TF_CC_0/I_9 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[3] ));
    IOIN_IB \DataIn_pad[1]/U0/U1  (.YIN(\DataIn_pad[1]/U0/NET1 ), .Y(
        \DataIn_c[1] ));
    IOIN_IB \DataIn_0_pad[6]/U0/U1  (.YIN(\DataIn_0_pad[6]/U0/NET1 ), 
        .Y(\DataIn_0_c[6] ));
    IOIN_IB \DataIn_pad[7]/U0/U1  (.YIN(\DataIn_pad[7]/U0/NET1 ), .Y(
        \DataIn_c[7] ));
    NAND3A \CP1_0/NAND3A_0  (.A(\CP1_0/NOR3A_0_Y ), .B(
        \CP1_0/OR2A_2_Y ), .C(\CP1_0/NAND3A_1_Y ), .Y(
        \CP1_0/NAND3A_0_Y ));
    AO1C \CP1_0/AO1C_2  (.A(\zjh_TF_CC_0_DataOut[3] ), .B(
        \zjh_TF_CC_1_DataOut[3] ), .C(\CP1_0/AO1C_3_Y ), .Y(
        \CP1_0/AO1C_2_Y ));
    IOIN_IB \DataIn_0_pad[4]/U0/U1  (.YIN(\DataIn_0_pad[4]/U0/NET1 ), 
        .Y(\DataIn_0_c[4] ));
    MX2 \zjh_TF_CC_0/DataOut_1[4]  (.A(\DataIn_c[4] ), .B(
        \zjh_TF_CC_0/I_12 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[4] ));
    AO1C \CP1_0/AO1C_4  (.A(\zjh_TF_CC_1_DataOut[2] ), .B(
        \zjh_TF_CC_0_DataOut[2] ), .C(\CP1_0/OR2A_0_Y ), .Y(
        \CP1_0/AO1C_4_Y ));
    AO1D \CP2_0/AO1D_0  (.A(\CP2_0/AO1C_1_Y ), .B(\CP2_0/AO1C_4_Y ), 
        .C(\CP2_0/AO1C_2_Y ), .Y(\CP2_0/AO1D_0_Y ));
    NAND3A \CP2_0/NAND3A_1  (.A(\zjh_TF_CC_1_DataOut[5] ), .B(
        \zjh_TF_CC_0_DataOut[5] ), .C(\CP2_0/OR2A_3_Y ), .Y(
        \CP2_0/NAND3A_1_Y ));
    IOPAD_IN \DataIn_0_pad[0]/U0/U0  (.PAD(DataIn_0[0]), .Y(
        \DataIn_0_pad[0]/U0/NET1 ));
    OR3B \zjh_TF_CC_0/un1_DataOut_I_19  (.A(
        \zjh_TF_CC_0/DWACT_FINC_E[0] ), .B(
        \zjh_TF_CC_0/DWACT_FINC_E[2] ), .C(\DataIn_c[6] ), .Y(
        \zjh_TF_CC_0/I_19 ));
    NOR3 \zjh_TF_CC_1/un1_DataOut_I_8  (.A(\DataIn_0_c[1] ), .B(
        \DataIn_0_c[0] ), .C(\DataIn_0_c[2] ), .Y(\zjh_TF_CC_1/N_6 ));
    NOR2B \zjh_TF_CC_0/DataOut_1[7]  (.A(\DataIn_c[7] ), .B(
        \zjh_TF_CC_0/I_19 ), .Y(\zjh_TF_CC_0_DataOut[7] ));
    NOR3A \CP1_0/NOR3A_0  (.A(\CP1_0/OR2A_3_Y ), .B(\CP1_0/AO1C_5_Y ), 
        .C(\zjh_TF_CC_0_DataOut[4] ), .Y(\CP1_0/NOR3A_0_Y ));
    NOR2B \zjh_TF_CC_1/DataOut_1[7]  (.A(\DataIn_0_c[7] ), .B(
        \zjh_TF_CC_1/I_19_0 ), .Y(\zjh_TF_CC_1_DataOut[7] ));
    XNOR2 \zjh_TF_CC_0/un1_DataOut_I_14  (.A(\DataIn_c[5] ), .B(
        \zjh_TF_CC_0/N_4 ), .Y(\zjh_TF_CC_0/I_14 ));
    IOPAD_IN \DataIn_pad[3]/U0/U0  (.PAD(DataIn[3]), .Y(
        \DataIn_pad[3]/U0/NET1 ));
    NOR3A \zjh_TF_CC_0/un1_DataOut_I_13  (.A(
        \zjh_TF_CC_0/DWACT_FINC_E[0] ), .B(\DataIn_c[3] ), .C(
        \DataIn_c[4] ), .Y(\zjh_TF_CC_0/N_4 ));
    IOIN_IB \DataIn_pad[2]/U0/U1  (.YIN(\DataIn_pad[2]/U0/NET1 ), .Y(
        \DataIn_c[2] ));
    IOIN_IB \DataIn_pad[5]/U0/U1  (.YIN(\DataIn_pad[5]/U0/NET1 ), .Y(
        \DataIn_c[5] ));
    MX2 \zjh_TF_CC_0/DataOut_1[6]  (.A(\DataIn_c[6] ), .B(
        \zjh_TF_CC_0/I_17 ), .S(\DataIn_c[7] ), .Y(
        \zjh_TF_CC_0_DataOut[6] ));
    AO1C \CP1_0/AO1C_5  (.A(\zjh_TF_CC_1_DataOut[5] ), .B(
        \zjh_TF_CC_0_DataOut[5] ), .C(\zjh_TF_CC_1_DataOut[4] ), .Y(
        \CP1_0/AO1C_5_Y ));
    AND2A \CP2_0/AND_SIGN  (.A(\zjh_TF_CC_0_DataOut[7] ), .B(
        \zjh_TF_CC_1_DataOut[7] ), .Y(\CP2_0/U2 ));
    AND3 \CP0_0/AND3_0  (.A(\CP0_0/XNOR2_7_Y ), .B(\CP0_0/XNOR2_1_Y ), 
        .C(\CP0_0/XNOR2_3_Y ), .Y(\CP0_0/AND3_0_Y ));
    AO1C \CP1_0/AO1C_1  (.A(\zjh_TF_CC_1_DataOut[3] ), .B(
        \zjh_TF_CC_0_DataOut[3] ), .C(\CP1_0/AO1C_0_Y ), .Y(
        \CP1_0/AO1C_1_Y ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
