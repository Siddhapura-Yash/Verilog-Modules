`timescale 1ns / 1ps

module T_Latch(T,E,Q,Qbar);
input T,E;
output reg Q,Qbar;

always@(*)
begin
Q = 0;
Qbar = 1;
    if(E)
    begin
    case ({E,T})
    2'b00,2'b01,2'b10 : begin Q = Q; Qbar = Qbar; end
    2'b11 : begin Q = ~Q; Qbar = ~Qbar; end
    endcase
    end
end
endmodule
