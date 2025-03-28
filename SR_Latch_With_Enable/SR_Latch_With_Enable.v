`timescale 1ns / 1ps

module SR_Latch_Enable(S,R,E,Q,Qbar);
input S,R,E;
output reg Q,Qbar;

always@(*)
begin
    if(E)
    begin
    case ({S,R})
    2'b00 : begin Q = Q; Qbar = Qbar; end
    2'b01 : begin Q = 0; Qbar = 1; end
    2'b10 : begin Q = 1; Qbar = 0; end
    2'b11 : begin Q = 1'bX; Qbar = 1'bX; end
    endcase
    end
end
endmodule
