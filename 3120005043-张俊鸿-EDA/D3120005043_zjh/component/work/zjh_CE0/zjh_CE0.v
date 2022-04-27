//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Dec 23 23:19:55 2021
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// zjh_CE0
module zjh_CE0(
    // Inputs
    Clk,
    MR,
    // Outputs
    C,
    Q0,
    Q1,
    Q2,
    Q3
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  Clk;
input  MR;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output C;
output Q0;
output Q1;
output Q2;
output Q3;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         C_net_0;
wire         Clk;
wire         INV_0_Y;
wire         MR;
wire   [0:0] Q0_net_0;
wire   [1:1] Q1_net_0;
wire   [2:2] Q2_net_0;
wire   [3:3] Q3_net_0;
wire         Q2_net_1;
wire         Q0_net_1;
wire         Q3_net_1;
wire         Q1_net_1;
wire         C_net_1;
wire   [3:0] Q_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire   [3:0] D_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net       = 1'b1;
assign D_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign Q2_net_1 = Q2_net_0[2];
assign Q2       = Q2_net_1;
assign Q0_net_1 = Q0_net_0[0];
assign Q0       = Q0_net_1;
assign Q3_net_1 = Q3_net_0[3];
assign Q3       = Q3_net_1;
assign Q1_net_1 = Q1_net_0[1];
assign Q1       = Q1_net_1;
assign C_net_1  = C_net_0;
assign C        = C_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign Q0_net_0[0] = Q_net_0[0:0];
assign Q1_net_0[1] = Q_net_0[1:1];
assign Q2_net_0[2] = Q_net_0[2:2];
assign Q3_net_0[3] = Q_net_0[3:3];
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND3
AND3 AND3_0(
        // Inputs
        .A ( Q3_net_0 ),
        .B ( Q2_net_0 ),
        .C ( Q0_net_0 ),
        // Outputs
        .Y ( C_net_0 ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( C_net_0 ),
        // Outputs
        .Y ( INV_0_Y ) 
        );

//--------zjh_74HC161
zjh_74HC161 zjh_74HC161_0(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .Cep ( VCC_net ),
        .Cet ( VCC_net ),
        .PE  ( INV_0_Y ),
        .D   ( D_const_net_0 ),
        // Outputs
        .Q   ( Q_net_0 ),
        .TC  (  ) 
        );


endmodule
