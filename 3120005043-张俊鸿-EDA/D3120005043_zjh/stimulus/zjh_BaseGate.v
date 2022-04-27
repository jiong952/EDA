// zjh_BaseGate.v
`timescale 10ns/1ns
module test_zjh_BasGate;
     reg a,b;
     wire y1,y2,y3,y4,y5,y6;
     zjh_BasGate u0(a,b,y1,y2,y3,y4,y5,y6);
     initial
     begin
         a=0;b=0;
     #10 b=1;
     #10 a=1;
     #10 b=0;
     end
endmodule

module test_zjh_cp;
     reg a,b,c;
     wire y;
     zjh_cp u1(a,b,c,y);
     initial 
     begin
         a=0;b=0;c=0;
     #10 c=1;
     #10 b=1;
     #10 c=0;
     #10 a=1;
     #10 b=0;
     #10 c=1;
     #10 b=1;
     end
endmodule


module test_zjh_jtd;
     reg a,b,c;
     wire y;
     zjh_jtd u12(a,b,c,y);
     initial 
     begin
         a=0;b=0;c=0;
     #10 c=1;
     #10 b=1;
     #10 c=0;
     #10 a=1;
     #10 b=0;
     #10 c=1;
     #10 b=1;
     end
endmodule

