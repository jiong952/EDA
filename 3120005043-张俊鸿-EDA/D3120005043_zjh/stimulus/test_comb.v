// test_comb.v
`timescale 1ns / 1ns
module test_zjh_74HC148;
reg ei;
reg [7:0]turn;
wire[7:0]in= ~turn;
wire [2:0]out;
wire eo, gs;
zjh_74HC148 u2(in,eo,out,ei,gs);
initial
    begin
        ei=1;turn=8'b1;
        repeat (8)
            #10turn=turn<<1;ei=0;turn=8'b1;
        repeat (8)
            #10turn=turn<<1;
    end
endmodule

module test_zjh_74HC138;
    	reg[2:0]e,a;
    	wire[7:0]y;
    	integer I;
zjh_74HC138 u3(e,a,y);
   		initial
        	begin
            	e=3'bxx1;
            	#10 e=3'bx1x;
            	#10 e=3'b0xx;
            	#10 e=3'b100;
            	for(I=0;I<=7;I=I+1)
                	#10 a=I;
        	end
endmodule

module test_zjh_74HC4511;
    reg LE,BI,LT;
    reg [3:0]D;
    wire [6:0]L;
    
    zjh_74HC4511 u7(D,LE,BI,LT,L);
    
    initial begin
        LE=0;BI=0;LT=0;D=4'b0000;
        #5
        LT=1;
        #5
        BI=1;
        #5
        D=4'b0001;
        #5
        D=4'b0010;
        #5
        D=4'b0011;
        #5
        D=4'b0100;
        #5
        D=4'b0101;
        #5
        D=4'b0110;
        #5
        D=4'b0111;
        #5
        D=4'b1000;
        #5
        D=4'b1001;
        #5
        D=4'b1010;
        #5
        D=4'b1011;
        #5
        D=4'b1100;
        #5
        D=4'b1101;
        #5
        D=4'b1110;
        #5
        D=4'b1111;
        end
endmodule
module test_zjh_74HC153;
    wire out;
    reg [3:0]in;
    reg [1:0]sel;
    reg ei;
    zjh_74HC153 u(out, in, sel, ei);

    initial
    begin
        ei = 0;	sel = 0;	in = 4'b1010;
    repeat(4)
    #10 sel = sel +1;
    ei = 1;	sel = 0;	in = 4'b1010;
    repeat(4)
    #10 sel = sel +1;
    end
endmodule


module test_zjh_74HC85;
    reg [3:0]a,b;
    reg iagb,iasb,iaeb;
    wire qagb,qasb,qaeb;
zjh_74HC85 u4(a,b,iagb,iasb,iaeb,qagb,qasb,qaeb);
    initial
        begin
            a=0;
            repeat(20)
                #10 a=$random;
        end
    initial
        begin
            b=0;
            repeat(20)
                #10 b=$random;
        end
    initial
        begin
            #210 a=0;b=0;iaeb=1;
            #10 iagb=0;iaeb=0;iasb=0;
            #10 iagb=0;iaeb=0;iasb=1;
            #10 iagb=1;iaeb=0;iasb=0;
            #10 iagb=1;iaeb=0;iasb=1;
        end
endmodule

module test_zjh_74HC283;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s;
    wire cout;
zjh_74HC283 u5(a,b,cin,s,cout);
    initial
        begin
            a=0;
            repeat(20)
                #10 a=$random;
        end
    initial
        begin
            b=0;
            repeat(20)
                #10 b=$random;
        end
    initial
        begin
            cin=0;
            repeat(20)
                #10 cin=$random;
        end
endmodule



module test_zk_tfcc;
    reg[7:0]dataIn;
    wire[7:0]dataOut;
    zjh_TF_CC u0(.DataOut(dataOut),.DataIn(dataIn));
    initial
    begin
    $monitor("dataIn=%b  dataOut=%b",dataIn,dataOut);
    repeat(100)
    #5 dataIn=$random;
    end
endmodule



