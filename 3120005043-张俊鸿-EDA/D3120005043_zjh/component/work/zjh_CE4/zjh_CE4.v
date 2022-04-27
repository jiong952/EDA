//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jan 04 11:14:29 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// zjh_CE4
module zjh_CE4(
    // Inputs
    DataIn,
    DataIn_0,
    // Outputs
    AEB,
    AGB,
    ALB
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] DataIn;
input  [7:0] DataIn_0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       AEB;
output       AGB;
output       ALB;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         AEB_net_0;
wire         AGB_net_0;
wire         ALB_net_0;
wire   [7:0] DataIn;
wire   [7:0] DataIn_0;
wire   [7:0] zjh_TF_CC_0_DataOut;
wire   [7:0] zjh_TF_CC_1_DataOut;
wire         AEB_net_1;
wire         AGB_net_1;
wire         ALB_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AEB_net_1 = AEB_net_0;
assign AEB       = AEB_net_1;
assign AGB_net_1 = AGB_net_0;
assign AGB       = AGB_net_1;
assign ALB_net_1 = ALB_net_0;
assign ALB       = ALB_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CP0
CP0 CP0_0(
        // Inputs
        .DataA ( zjh_TF_CC_0_DataOut ),
        .DataB ( zjh_TF_CC_1_DataOut ),
        // Outputs
        .AEB   ( AEB_net_0 ) 
        );

//--------CP1
CP1 CP1_0(
        // Inputs
        .DataA ( zjh_TF_CC_0_DataOut ),
        .DataB ( zjh_TF_CC_1_DataOut ),
        // Outputs
        .ALB   ( ALB_net_0 ) 
        );

//--------CP2
CP2 CP2_0(
        // Inputs
        .DataA ( zjh_TF_CC_0_DataOut ),
        .DataB ( zjh_TF_CC_1_DataOut ),
        // Outputs
        .AGB   ( AGB_net_0 ) 
        );

//--------zjh_TF_CC
zjh_TF_CC zjh_TF_CC_0(
        // Inputs
        .DataIn  ( DataIn ),
        // Outputs
        .DataOut ( zjh_TF_CC_0_DataOut ) 
        );

//--------zjh_TF_CC
zjh_TF_CC zjh_TF_CC_1(
        // Inputs
        .DataIn  ( DataIn_0 ),
        // Outputs
        .DataOut ( zjh_TF_CC_1_DataOut ) 
        );


endmodule
