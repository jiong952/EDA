// 3120005043_seq.v
`timescale 1ns / 1ns
module zjh_74HC161(MR,Clk,Cep,Cet,PE,D,Q,TC);
    input MR,Clk,Cep,Cet,PE;
    input [3:0]D;
    output [3:0]Q;
    output TC;
    reg [3:0]Q;
    always @(posedge Clk,negedge MR)
        if(!MR) Q<=0;
        else if(!PE)Q<=D;
        else if(Cep & Cet)Q<=Q+1;//else Q<=Q;
    assign TC=&{Cet,Q};
endmodule

module zjh_74HC194(MR_N,S,D,Clk,In,Out);
    input MR_N,Clk;
    input [1:0]S;
    input [1:0]D;
    input [0:3]In;
    output reg [0:3]Out;
always@(posedge Clk or negedge MR_N)
    if(~MR_N)   Out<=0;
    else case(S)
        2'b00:Out<=Out;
        2'b01:if(D[1])     Out<={1'b1,Out[0:2]};
              else          Out<=Out>>1;
        2'b10:if(D[0])     Out<={Out[1:3],1'b1};
              else          Out<=Out<<1;
        default:    Out<=In;
    endcase
endmodule

module zjh_74HC74(Sd,Rd,Clk,D,Q);
    input Sd,Rd,Clk,D;
    output Q;
    reg Q;
    assign Q_n=~Q;
    always @(negedge Sd,negedge Rd,posedge Clk)
    begin
    if(!Sd) Q<=1;
    else if(!Rd) Q<=0;
    else Q<=D;
    end
endmodule

module zjh_74HC112(Set_N, Rst_N, Clk_N, J, K, Q, Qn);
    input	Set_N, Rst_N, Clk_N, J, K;
    output	Q, Qn;
    reg		Q;

    assign Qn = ~Q;

    always @(negedge Set_N or negedge Rst_N or negedge Clk_N)
    case({Set_N,Rst_N})
        0: Q <= 1;
        1: Q <= 1;
        2: Q <= 0;
        default:
        case({J,K})
            0:  Q <= Q;
            1:  Q <= 0;
            2:  Q <= 1;
            default:  Q <= ~Q;
        endcase	
    endcase
endmodule
