`timescale 1ns / 1ps

module D_FF_Testbench;
reg reset,clock,d;
wire q,qbar;

D_FF DUT(.CLK(clock),.RST(reset),.D(d),.Q(q),.Qbar(qbar));

always #5 clock = ~clock;

initial
begin
$monitor($time," clock=%b,reset=%b,d=%b,q=%b,qbar=%b",clock,reset,d,q,qbar);
clock = 0;

#4; reset=1; d=0;
#10; reset=1; d=1;

#10; reset=0; d=0;
#10; reset=0; d=1;
#10;
$finish;
end
endmodule
