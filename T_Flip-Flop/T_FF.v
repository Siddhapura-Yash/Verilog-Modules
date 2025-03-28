`timescale 1ns / 1ps

module T_FF(T,CLK,RST,Q,Qbar);
input T,CLK,RST;
output reg Q,Qbar;

always@(posedge CLK or posedge RST) 
begin

    if(RST)
    begin
    Q<=0;
    Qbar<=1;
    end
    
    else begin
    case(T)
    1'b0 : begin Q<=Q; Qbar<=Qbar; end
    1'b1 : begin Q<=~Q; Qbar<=~Qbar; end
    endcase
    end
end
endmodule
