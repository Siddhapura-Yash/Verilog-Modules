`timescale 1ns / 1ps

module encoder(a,out);
parameter N = 8;
input [N-1:0]a;
output reg [$clog2(N)-1:0]out;
integer i;

always@(*)
begin
  out = 0; 
  for (i = 0; i < N; i = i + 1) 
  begin
    if (a[i]) 
    begin
      out = i;
    end
    end
end

endmodule
