`timescale 1ns / 1ps
module SR_FF(S,R,Q,Qbar,CLK,RST);
input S,R,CLK,RST;
output reg Q,Qbar;

always@(posedge CLK)
begin
    if (RST) begin
    Q <= 0;
    Qbar <= 1;
    end
    
    else
    begin
    case({S,R})
    2'b00 : begin Q <= Q; Qbar <= Qbar; end
    2'b01 : begin Q <= 0; Qbar <= 1; end
    2'b10 : begin Q <= 1; Qbar <= 0; end
    2'b11 : begin Q <= 1'bX; Qbar <= 1'bX; end
    endcase
    end
    
end
endmodule
