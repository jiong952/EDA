`timescale 1ns/100ps

module testbench;
reg clk,reset;
reg Din;
wire Dout;
parameter DELY=50;

xulie_1110 u1(reset,clk,Din,Dout);
always#(DELY/2)clk=~clk;

initial
    begin
        clk=0;
        reset=0;
    end

initial
    begin
        Din=0;


    #50 Din=0;
    #50 Din=1;
    #50 Din=0;
    #50 Din=1;
    #50 Din=1;
    #50 Din=1;
    #50 Din=1;
    #50 Din=1;
    #50 Din=0;
    #50 Din=1; 
    #50 Din=1;
    #50 Din=1;
    #50 Din=0;
    #50 Din=1;
    #50 Din=0;
    #50 Din=0;
    

    end

endmodule
