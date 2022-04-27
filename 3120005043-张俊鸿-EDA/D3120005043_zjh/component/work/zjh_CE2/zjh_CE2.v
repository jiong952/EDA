//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Dec 28 15:17:53 2021
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// zjh_CE2
module zjh_CE2(
    // Inputs
    A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    Clk,
    MR,
    // Outputs
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
input  A0;
input  A1;
input  A2;
input  A3;
input  B0;
input  B1;
input  B2;
input  B3;
input  Clk;
input  MR;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
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
wire         A0;
wire         A1;
wire         A2;
wire         A3;
wire   [5:5] b_net_0;
wire         B0;
wire         B1;
wire         B2;
wire         B3;
wire   [4:4] c_net_0;
wire         Clk;
wire   [3:3] d_net_0;
wire   [2:2] e_net_0;
wire   [1:1] f_net_0;
wire   [0:0] g_net_0;
wire         INV_0_Y;
wire         MR;
wire         zjh_74HC85_0_QAEB;
wire   [0:0] zjh_74HC161_0_Q0to0;
wire   [1:1] zjh_74HC161_0_Q1to1;
wire   [2:2] zjh_74HC161_0_Q2to2;
wire   [3:3] zjh_74HC161_0_Q3to3;
wire         g_net_1;
wire         a_net_1;
wire         b_net_1;
wire         d_net_1;
wire         c_net_1;
wire         f_net_1;
wire         e_net_1;
wire   [3:0] A_net_0;
wire   [3:0] B_net_0;
wire   [3:0] D_net_0;
wire   [3:0] Q_net_0;
wire   [3:0] D_net_1;
wire   [6:0] L_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign g_net_1 = g_net_0[0];
assign g       = g_net_1;
assign a_net_1 = a_net_0[6];
assign a       = a_net_1;
assign b_net_1 = b_net_0[5];
assign b       = b_net_1;
assign d_net_1 = d_net_0[3];
assign d       = d_net_1;
assign c_net_1 = c_net_0[4];
assign c       = c_net_1;
assign f_net_1 = f_net_0[1];
assign f       = f_net_1;
assign e_net_1 = e_net_0[2];
assign e       = e_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign a_net_0[6]             = L_net_0[6:6];
assign b_net_0[5]             = L_net_0[5:5];
assign c_net_0[4]             = L_net_0[4:4];
assign d_net_0[3]             = L_net_0[3:3];
assign e_net_0[2]             = L_net_0[2:2];
assign f_net_0[1]             = L_net_0[1:1];
assign g_net_0[0]             = L_net_0[0:0];
assign zjh_74HC161_0_Q0to0[0] = Q_net_0[0:0];
assign zjh_74HC161_0_Q1to1[1] = Q_net_0[1:1];
assign zjh_74HC161_0_Q2to2[2] = Q_net_0[2:2];
assign zjh_74HC161_0_Q3to3[3] = Q_net_0[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign A_net_0 = { zjh_74HC161_0_Q3to3[3] , zjh_74HC161_0_Q2to2[2] , zjh_74HC161_0_Q1to1[1] , zjh_74HC161_0_Q0to0[0] };
assign B_net_0 = { B3 , B2 , B1 , B0 };
assign D_net_0 = { A3 , A2 , A1 , A0 };
assign D_net_1 = { zjh_74HC161_0_Q3to3[3] , zjh_74HC161_0_Q2to2[2] , zjh_74HC161_0_Q1to1[1] , zjh_74HC161_0_Q0to0[0] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------INV
INV INV_0(
        // Inputs
        .A ( zjh_74HC85_0_QAEB ),
        // Outputs
        .Y ( INV_0_Y ) 
        );

//--------zjh_74HC85
zjh_74HC85 zjh_74HC85_0(
        // Inputs
        .IAGB ( GND_net ),
        .IASB ( GND_net ),
        .IAEB ( VCC_net ),
        .A    ( A_net_0 ),
        .B    ( B_net_0 ),
        // Outputs
        .QAGB (  ),
        .QASB (  ),
        .QAEB ( zjh_74HC85_0_QAEB ) 
        );

//--------zjh_74HC161
zjh_74HC161 zjh_74HC161_0(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .Cep ( VCC_net ),
        .Cet ( VCC_net ),
        .PE  ( INV_0_Y ),
        .D   ( D_net_0 ),
        // Outputs
        .Q   ( Q_net_0 ),
        .TC  (  ) 
        );

//--------zjh_74HC4511
zjh_74HC4511 zjh_74HC4511_0(
        // Inputs
        .LE ( GND_net ),
        .BI ( VCC_net ),
        .LT ( VCC_net ),
        .D  ( D_net_1 ),
        // Outputs
        .L  ( L_net_0 ) 
        );


endmodule
