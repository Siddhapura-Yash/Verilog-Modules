`timescale 1ns / 1ps

module JK_Latch_Testbench;
reg j,k,enable;
wire q,qbar;
integer i;
JK_Latch DUT (.J(j),.K(k),.E(enable),.Q(q),.Qbar(qbar));

initial
begin
    for(i=8; i>0; i=i-1)
    begin
    {enable,j,k} = i;
    #5;
    $display($time, " enable=%b, j=%b, k=%b, q=%b, qbar=%b",enable,j,k,q,qbar);
    end
$finish;
end
endmodule
