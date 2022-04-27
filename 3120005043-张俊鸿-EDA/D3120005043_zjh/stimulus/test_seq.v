// test_seq.v
`timescale 1ns / 1ns
module test_zjh_74HC161;
    reg MR,Clk,Cep,Cet,PE;
    reg[3:0]D;
    wire[3:0]Q;
    wire TC;
    zjh_74HC161 u5(MR,Clk,Cep,Cet,PE,D,Q,TC);
    initial
    begin
    Clk=0;
    repeat(100)
    #5 Clk=~Clk;
    end
    initial
    begin MR=0;
    #22 MR=1;
    end
    initial
    begin 
    PE=1;Cep=1;Cet=1;D=0;
    #58 PE=0;
    #20 PE=1;
    #50 Cep=0;
    #20 Cep=1;
    #50 Cet=0;
    #20 Cet=1;
    end
endmodule

module test_zjh_74HC194;
    reg MR_N,Clk;
    reg [1:0]S;
    reg [1:0]D;
    reg [0:3]In;
    wire [0:3]Out;
zjh_74HC194 u14(MR_N,S,D,Clk,In,Out);
    always #5 Clk=~Clk;
    task s_clock;
        begin
            D=0;
            repeat(4)
                #10 D=D+1;
        end
    endtask
    task clock;
        begin
            S=2'b11;    s_clock;
            S=2'b00;    s_clock;
            S=2'b01;    s_clock;
            S=2'b10;    s_clock;
        end
    endtask
    initial
        begin
            Clk=1;  In=4'b0110;  clock;
        end
    initial
        begin
            MR_N=1; #5 MR_N=0;  #10 MR_N=1;
        end
endmodule

module test_zjh_74HC74;
    reg Sd,Rd,Clk,D;
    wire Q;
    
    zjh_74HC74 u9(Sd,Rd,Clk,D,Q);

    initial
    begin
    Clk=0;
    repeat(100)
    #5 Clk=~Clk;
    end

    initial
    begin Sd=0;
    #22 Sd=1; 
    #20 Rd=0;
    #20 Rd=1;
    end
    
    initial
    begin
    D=0;
    #22 D=1;
    end

endmodule

module test_zjh_74HC112;
    reg set, res, clk, j, k;
    wire q, qn;
    zjh_74HC112 u13(set, res, clk, j, k, q, qn);

    always
        #5 clk = ~clk;

    task clock;
        repeat(3)
        begin
        j = 0;k = 1;#20;	 j = 1;k = 0;#20;
        j = 0;k = 0;#20;	 j = 1;k = 1;#20;
        end
    endtask

    initial
    begin
        clk = 0;
        set = 0;res = 0;clock;
        set = 0;res = 1;clock;
        set = 1;res = 0;clock;
        set = 1;res = 1;clock;
    end
endmodule

