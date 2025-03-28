`timescale 1ns / 1ps

module SR_Latch_Enable_Testbench;
reg set,reset,enable;
wire q,qbar;
integer i;

SR_Latch_Enable DUT (.S(set),.R(reset),.E(enable),.Q(q),.Qbar(qbar));

initial 
begin
    for(i=8;i>0;i=i-1)
    begin
    {enable,set,reset} = i;
    #5;
    $display($time,"enable=%b,set=%b,reset=%b,q=%b,qbar=%b",enable,set,reset,q,qbar);
    end
$finish;
end
endmodule
