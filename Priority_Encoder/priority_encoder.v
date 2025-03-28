`timescale 1ns / 1ps

module priority_encoder(a,out);
parameter N = 8;
input [N-1:0]a;
output reg [$clog2(N)-1:0]out;
reg found;
integer i;

always@(*)
begin
found = 0;
out = 0;

for(i=0;i<N;i=i+1)
begin
    if(a[i] && (found==0))
    begin
    out = i;
    found = 1;
    end

end
end
    
endmodule
