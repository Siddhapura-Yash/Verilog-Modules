`timescale 1ns / 1ps

module priority_encoder_testbench;
parameter N=8;
reg [N-1:0]a;
wire [$clog2(N)-1:0]out;

priority_encoder DUT(a,out);

initial
begin
 $monitor("Time=%0t | a=%b | out=%b", $time, a, out); 
#5; a = 8'b01000000;
#5; a = 8'b00001001;
#5;
$finish;
end
endmodule
