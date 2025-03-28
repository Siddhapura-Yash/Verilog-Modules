`timescale 1ns / 1ps

module D_Latch_Testbench;
reg data,enable;
wire q,qbar;
integer i;

D_Latch DUT (.D(data),.E(enable),.Q(q),.Qbar(qbar));

initial 
begin
    for(i=4;i>0;i=i-1)
    begin
    {enable,data} = i;
    $display($time, "enable=%b, data=%b, q=%b, qbar=%b", enable,data,q,qbar);
    #5;
    end
    $finish;
end
endmodule
