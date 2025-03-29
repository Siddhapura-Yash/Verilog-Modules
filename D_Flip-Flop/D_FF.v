`timescale 1ns / 1ps

module D_FF(D,RST,CLK,Q,Qbar);
input D,RST,CLK;
output reg Q,Qbar;

always@(posedge CLK or posedge RST) begin
    if(RST) begin
    Q<=0;
    Qbar<=1;
    end
    
    else begin
    case(D)
    1'b0 : begin Q<=0; Qbar<=1; end
    1'b1 : begin Q<=D; Qbar<=~D; end
    endcase
    end
end
endmodule
