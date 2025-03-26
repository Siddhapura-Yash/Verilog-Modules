`timescale 1ns / 1ps

module demux_testbench;
parameter N=8;
reg a;
reg [$clog2(N)-1:0]sel;
wire [N-1:0]out;
integer i;

demux DUT(a,sel,out);

initial
begin


    for(i=0; i<N; i = i +1)
    begin
    a = $random % 2;
    sel = i;
    #5;
    #1;
    $display($time,"a=%b,sel=%b,out=%b",a,sel,out);
    end
$finish;
end

endmodule
