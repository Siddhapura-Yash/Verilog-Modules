`timescale 1ns / 1ps

module D_Latch(D,E,Q,Qbar);
input D,E;
output reg Q,Qbar;

always@(*)
begin
    if(E) begin
    Q = D;
    Qbar = ~D;
    end
end
endmodule
