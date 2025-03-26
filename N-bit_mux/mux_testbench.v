`timescale 1ns / 1ps

module mux_testbench;
parameter N = 8;
reg [N-1:0]a;
reg [$clog2(N)-1:0]sel;
wire out;
integer i;

mux DUT(a,sel,out);

initial 
begin
   a=  $random;
    for(i=0; i<N;i=i+1)
    begin
    sel=i;
    #5;
    $display($time,"a=%b,sel=%b,out=%b",a,sel,out);
    end
     $finish;
end    
endmodule
