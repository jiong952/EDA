// 3120005043_comb.v
module zjh_74HC148(DataIn,EO,Dataout,EI,GS);
input[7:0] DataIn;
input EI;
output EO,GS;
output[2:0]Dataout;
reg [2:0] Dataout;
reg EO, GS;
integer I;
always@ (DataIn or EI)
   begin
        if(EI)
            begin
                Dataout=7;EO=1;GS=1;
            end
        else if (DataIn==8'b11111111)
            begin
                Dataout=7;EO=0;GS=1;
            end
        else
            for (I=0;I<8;I=I+1)
                begin
                    if(~DataIn[I])
                        begin
                            Dataout= ~I;EO=1;GS=0;
                        end
                end
    end
endmodule

module zjh_74HC138(E1,E2,E3,A,Y);
    input E1,E2,E3;
    input [2:0]A;
    output [7:0]Y;
    reg [7:0]Y=0;
    always @*
        begin
    
        if(~E1&&~E2&&E3)
            case(A)
                7:Y=8'b01111111;
                6:Y=8'b10111111;
                5:Y=8'b11011111;
                4:Y=8'b11101111;
                3:Y=8'b11110111;
                2:Y=8'b11111011;
                1:Y=8'b11111101;
                0:Y=8'b11111110;
                default:Y=8'b11111111;
               endcase
             else
               Y=8'b11111111;
end
endmodule


module zjh_74HC4511(D,LE,BI,LT,L);
    input LE,BI,LT;
    input [3:0]D;
    output reg [6:0]L;
    always @(*)begin
        if(LE==0&&BI==1&&LT==1)begin
        case(D[3:0])
            4'b0000:L[6:0]=7'b1111110;
            4'b0001:L[6:0]=7'b0110000;
            4'b0010:L[6:0]=7'b1101101;
            4'b0011:L[6:0]=7'b1111001;
            4'b0100:L[6:0]=7'b0110011;
            4'b0101:L[6:0]=7'b1011011;
            4'b0110:L[6:0]=7'b1011111;
            4'b0111:L[6:0]=7'b1110000;
            4'b1000:L[6:0]=7'b1111111;
            4'b1001:L[6:0]=7'b1111011;
            4'b1010:L[6:0]=7'b1110111;
            4'b1011:L[6:0]=7'b0011111;
            4'b1100:L[6:0]=7'b1001110;
            4'b1101:L[6:0]=7'b0111101;
            4'b1110:L[6:0]=7'b1001111;
            4'b1111:L[6:0]=7'b1000111;
        endcase
    end

    else if(LT==0)L[6:0]=7'b1111111;
    else if(BI==0&&LT==1)L[6:0]=7'b0000000;
    else L<=L;
end
endmodule

module zjh_74HC153(DateOut, DateIn, Sel, Enable);
    input	[3:0]DateIn;
    input	[1:0]Sel;
    input	Enable;
    output reg	DateOut;

    always @(Enable or Sel or DateIn)
    if(Enable)	DateOut = 0;
    else			DateOut = DateIn[Sel];
endmodule


module zjh_74HC85(A,B,IAGB,IASB,IAEB,QAGB,QASB,QAEB);
    input [3:0]A,B;
    input IAGB,IASB,IAEB;
    output QAGB,QASB,QAEB;
    reg QAGB,QASB,QAEB;
    always@(A or B or IAGB or IAEB or IASB)
        begin
            if(A>B)
                begin
                    QAGB=1;QASB=0;QAEB=0;
                end
            else if(A<B)
                begin
                    QAGB=0;QASB=1;QAEB=0;
                end
            else if(IAGB&&!IAEB&&!IASB)
                begin
                    QAGB=1;QASB=0;QAEB=0;
                end
            else if(!IAGB&&IASB&&!IAEB)
                begin
                    QAGB=0;QASB=1;QAEB=0;
                end
            else if(IAEB==1)
                begin
                    QAGB=0;QASB=0;QAEB=1;
                end
            else if(IAGB&&!IAEB&&IASB)
                begin
                    QAGB=0;QASB=0;QAEB=0;
                end
            else if(!IAGB&&!IAEB&&!IASB)
                begin
                    QAGB=1;QASB=1;QAEB=0;
                end
        end
endmodule


module zjh_74HC283(A,B,Cin,S,Cout);
    input [3:0]A,B;
    input Cin;
    output[3:0]S;
    reg[3:0]S;
    output Cout;
    reg Cout;
    always@(A or B or Cin)
        {Cout,S}=A+B+Cin;
endmodule





module zjh_TF_CC(DataIn,DataOut);
    input[7:0]DataIn;
    output[7:0]DataOut;
    reg[7:0]DataOut;
    always@(DataIn)
begin
    if(DataIn[7])
        DataOut={1'b1,~DataIn[6:0]+1};
    else
        DataOut=DataIn;
    end
endmodule



module Reg(S,M);
    input [1:0] S;
    output [3:0] M;
    reg [3:0] M;
    always @(S)
        begin
            case(S)
                0:M<=5;
                1:M<=0;
                2:M<=4;
                3:M<=3;
            endcase
        end
endmodule