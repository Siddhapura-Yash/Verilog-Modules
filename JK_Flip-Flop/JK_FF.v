`timescale 1ns / 1ps
module JK_FF(J,K,CLK,RST,Q,Qbar);
input J,K,CLK,RST;
output reg Q,Qbar;

always@(posedge CLK or posedge RST)
begin
    if(RST)
    begin
    Q <= 0;
    Qbar <= 1;
    end
    
    else begin
    case({J,K})
    2'b00 : begin Q<=Q; Qbar<=Qbar; end
    2'b01 : begin Q<=0; Qbar<=1; end
    2'b10 : begin Q<=1; Qbar<=0; end
    2'b11 : begin Q<=~Q; Qbar<=~Qbar; end
    endcase
    end
end
endmodule
