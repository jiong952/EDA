// test_CE.v
`timescale 10ns/1ns
module test_zjh_CE0;
    reg MR,Clk;
    wire Q0,Q1,Q2,Q3;
    wire C;
    zjh_CE0 u0(.MR(MR),.Clk(Clk),.Q0(Q0),.Q1(Q1),.Q2(Q2),.Q3(Q3),.C(C));
    initial
    begin
    Clk=0;
    repeat (100)
    #10 Clk=~Clk;
    end
    
    initial
    begin
    MR=0;
    #22 MR=1;
    end
endmodule


module test_zjh_CE1;
    reg Aclr;
    reg Clock;
    wire a,b,c,d,e,f,g;
    wire Y4,Y3,Y2,Y1;
    zjh_CE1 u1(.Aclr(Aclr),.Clock(Clock),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.Y4(Y4),.Y3(Y3),.Y2(Y2),.Y1(Y1));
    initial
    begin
    Clock =0;
    repeat(100)
    #5 Clock=~Clock;
    end

    initial
    begin
    Aclr=0;
    #22 Aclr=1;
    #100 ;$finish;
    end
endmodule

module test_zjh_CE2;
    reg Clk,MR;
    reg A0,A1,A2,A3,B0,B1,B2,B3;
    wire a,b,c,d,e,f,g;
    
    zjh_CE2 u2(.MR(MR),.Clk(Clk),.A0(A0),.A1(A1),.A2(A2),.A3(A3),.B0(B0),.B1(B1),.B2(B2),.B3(B3),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
    initial
    begin
    Clk=1;
    repeat (100)
    #5 Clk=~Clk;
    end

    initial
    begin
    MR=0;
    # 22 MR=1;
    #200 ;$finish;
    end
    
    initial
    begin
     A0=0;
     A1=1;
     A2=0;
     A3=0;
     B0=1;
     B1=0;
     B2=1;
     B3=1;
    end
endmodule


module test_zjh_CE3;
    reg Aclr;
    reg Clock;
    wire a,b,c,d,e,f,g;
    wire Y4,Y3,Y2,Y1;
    zjh_CE3 u3(.Aclr(Aclr),.Clock(Clock),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.Y4(Y4),.Y3(Y3),.Y2(Y2),.Y1(Y1));
    initial
    begin
    Clock =0;
    repeat(100)
    #5 Clock=~Clock;
    end

    initial
    begin
    Aclr=0;
    #22 Aclr=1;
    #100 ;$finish;
    end
endmodule


module test_zjh_CE4;
    reg [7:0]Ain,Bin;
    wire aeb,alb,agb;

   zjh_CE4 u0(.DataIn(Ain),.DataIn_0(Bin),.AEB(aeb),.ALB(alb),.AGB(agb));
    
    initial
        begin
            Ain = 8'b01000000;Bin = 8'b01110000;
            #10 Ain = 8'b01100000;
            #10 Bin = 8'b11000000;
            #10 Ain = 8'b10100000;
            #10 Bin = 8'b10100000;
        end
endmodule






