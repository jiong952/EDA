module xulie_1110(Reset,Clk,Din,Dout);
input Reset,Clk,Din;
output Dout;
reg Dout;
reg[4:0] current_state,next_state;
parameter S0=5'b00001,S1=5'b00010,S2=5'b00100,S3=5'b01000,S4=5'b10000;
always@(current_state or Din)
begin
    case(current_state)
        S0:begin
            if(Din)
                next_state<=S0;
            else
                next_state<=S1;
            end
        S1:begin
            if(Din)
                next_state<=S2;
            else
                next_state<=S1;
            end
        S2:begin
            if(Din)
                next_state<=S3;
            else
                next_state<=S1;
            end
        S3:begin
            if(Din)
                next_state<=S4;
            else
                next_state<=S1;
            end
        S4:begin
            if(Din)
                next_state<=S0;
            else
                next_state<=S1;
            end
        default:next_state<=S0;
    endcase
end
always@(posedge Clk or posedge Reset)
begin
    if(Reset)
        current_state<=S0;
    else 
        current_state<=next_state;
end
always@(current_state)
    Dout=(current_state==S4);

endmodule    

