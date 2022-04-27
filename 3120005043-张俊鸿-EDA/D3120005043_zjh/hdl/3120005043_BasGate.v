// 3120005043_BasGate.v
module zjh_BasGate(A,B,Y1,Y2,Y3,Y4,Y5,Y6);
    input A,B;
    output Y1,Y2,Y3,Y4,Y5,Y6;
    assign Y1=A&B;
    assign Y2=~(A&B);
    assign Y3=A|B;
    assign Y4=~(A|B);
    assign Y5=A^B;
    assign Y6=~A;
endmodule

module zjh_cp(A,B,C,Y);
    input A,B,C;
    output Y;
    assign Y=(A&B)|(A&C)|(B&C);
endmodule

module zjh_jtd(A, B, C, Y);

    input A, B, C;
    output Y;
    assign Y = (A&B)|(A&C)|(B&C)|~(A|B|C);
endmodule 