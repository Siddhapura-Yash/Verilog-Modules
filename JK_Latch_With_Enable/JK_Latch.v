`timescale 1ns / 1ps

module JK_Latch(J,K,E,Q,Qbar);
input J,K,E;
output reg Q,Qbar;

always@(*)
begin
    if(E)
    begin
    case({J,K})
    2'b00 : begin Q = Q; Qbar = Qbar; end
    2'b01 : begin Q = 0; Qbar = 1; end
    2'b10 : begin Q = 1; Qbar = 0; end
    2'b11 : begin Q = ~Q; Qbar = ~Qbar; end
    endcase
    end
    
end   
endmodule
