`timescale 1ns / 1ps

module T_Latch_Testbench;
reg enable,toggle;
wire q,qbar;
integer i;

T_Latch DUT (.E(enable),.T(toggle),.Q(q),.Qbar(qbar));

initial 
begin
    for(i=0; i<4; i=i+1)
    begin 
    {enable,toggle} = i;
    $display($time, "enable=%b, toggle=%b, q=%b, qbar=%b",enable,toggle,q,qbar);
    #5;
    end
$finish;
end
endmodule
