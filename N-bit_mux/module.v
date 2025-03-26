`timescale 1ns / 1ps

module mux(a,sel,out);
parameter N=8;
input [N-1:0]a;
input [$clog2(N)-1:0]sel;
output reg out;
integer i;

always@(*)
begin

out = a[sel];

end      
endmodule
