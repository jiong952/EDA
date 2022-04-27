//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Dec 24 09:41:49 2021
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// zjh_CE1
module zjh_CE1(
    // Inputs
    Aclr,
    Clock,
    // Outputs
    Y1,
    Y2,
    Y3,
    Y4,
    a,
    b,
    c,
    d,
    e,
    f,
    g
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  Aclr;
input  Clock;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output Y1;
output Y2;
output Y3;
output Y4;
output a;
output b;
output c;
output d;
output e;
output f;
output g;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [6:6] a_net_0;
wire         Aclr;
wire   [5:5] b_net_0;
wire   [4:4] c_net_0;
wire         Clock;
wire   [3:3] d_net_0;
wire   [2:2] e_net_0;
wire   [1:1] f_net_0;
wire   [0:0] g_net_0;
wire   [0:0] newCore_0_Q0to0;
wire   [1:1] newCore_0_Q1to1;
wire   [0:0] Y1_net_0;
wire   [1:1] Y2_net_0;
wire   [2:2] Y3_net_0;
wire   [3:3] Y4_net_0;
wire         g_net_1;
wire         f_net_1;
wire         b_net_1;
wire         d_net_1;
wire         a_net_1;
wire         c_net_1;
wire         e_net_1;
wire         Y1_net_1;
wire         Y3_net_1;
wire         Y2_net_1;
wire         Y4_net_1;
wire   [4:4] Y_slice_0;
wire   [5:5] Y_slice_1;
wire   [6:6] Y_slice_2;
wire   [7:7] Y_slice_3;
wire   [1:0] Q_net_0;
wire   [2:0] E_net_0;
wire   [2:0] A_net_0;
wire   [7:0] Y_net_0;
wire   [3:0] D_net_0;
wire   [6:0] L_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net    = 1'b0;
assign VCC_net    = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign g_net_1  = g_net_0[0];
assign g        = g_net_1;
assign f_net_1  = f_net_0[1];
assign f        = f_net_1;
assign b_net_1  = b_net_0[5];
assign b        = b_net_1;
assign d_net_1  = d_net_0[3];
assign d        = d_net_1;
assign a_net_1  = a_net_0[6];
assign a        = a_net_1;
assign c_net_1  = c_net_0[4];
assign c        = c_net_1;
assign e_net_1  = e_net_0[2];
assign e        = e_net_1;
assign Y1_net_1 = Y1_net_0[0];
assign Y1       = Y1_net_1;
assign Y3_net_1 = Y3_net_0[2];
assign Y3       = Y3_net_1;
assign Y2_net_1 = Y2_net_0[1];
assign Y2       = Y2_net_1;
assign Y4_net_1 = Y4_net_0[3];
assign Y4       = Y4_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign a_net_0[6]         = L_net_0[6:6];
assign b_net_0[5]         = L_net_0[5:5];
assign c_net_0[4]         = L_net_0[4:4];
assign d_net_0[3]         = L_net_0[3:3];
assign e_net_0[2]         = L_net_0[2:2];
assign f_net_0[1]         = L_net_0[1:1];
assign g_net_0[0]         = L_net_0[0:0];
assign newCore_0_Q0to0[0] = Q_net_0[0:0];
assign newCore_0_Q1to1[1] = Q_net_0[1:1];
assign Y1_net_0[0]        = Y_net_0[0:0];
assign Y2_net_0[1]        = Y_net_0[1:1];
assign Y3_net_0[2]        = Y_net_0[2:2];
assign Y4_net_0[3]        = Y_net_0[3:3];
assign Y_slice_0[4]       = Y_net_0[4:4];
assign Y_slice_1[5]       = Y_net_0[5:5];
assign Y_slice_2[6]       = Y_net_0[6:6];
assign Y_slice_3[7]       = Y_net_0[7:7];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign E_net_0 = { 1'b1 , 1'b0 , 1'b0 };
assign A_net_0 = { 1'b0 , newCore_0_Q1to1[1] , newCore_0_Q0to0[0] };
assign D_net_0 = { 1'b0 , 1'b0 , newCore_0_Q1to1[1] , newCore_0_Q0to0[0] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------newCore
newCore Counter(
        // Inputs
        .Aclr  ( Aclr ),
        .Clock ( Clock ),
        // Outputs
        .Q     ( Q_net_0 ) 
        );

//--------zjh_74HC138
zjh_74HC138 zjh_74HC138_0(
        // Inputs
        .E ( E_net_0 ),
        .A ( A_net_0 ),
        // Outputs
        .Y ( Y_net_0 ) 
        );

//--------zjh_74HC4511
zjh_74HC4511 zjh_74HC4511_0(
        // Inputs
        .D  ( D_net_0 ),
        .LE ( GND_net ),
        .BI ( VCC_net ),
        .LT ( VCC_net ),
        // Outputs
        .L  ( L_net_0 ) 
        );


endmodule
