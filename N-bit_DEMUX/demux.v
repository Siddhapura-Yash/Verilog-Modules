`timescale 1ns / 1ps

module demux(a,sel,out);
parameter N=8;
input a;
input [$clog2(N)-1:0]sel;
output reg [N-1:0]out;

always@(*)
begin
out = 0;
out[sel] = a;
end
endmodule
