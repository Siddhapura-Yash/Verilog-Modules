`timescale 1ns / 1ps

module T_FF_Testbench;
reg clock,reset,t;
wire q,qbar;

T_FF DUT(.CLK(clock),.RST(reset),.T(t),.Q(q),.Qbar(qbar));
always #5 clock = ~clock;

initial 
begin
$monitor($time," clock=%b,reset=%b,t=%b,q=%b,qbar=%b",clock,reset,t,q,qbar);
clock = 0;

#4; reset=1; t=0;
#10; reset=1; t=1;

#10; reset=0; t=0;
#10; reset=0; t=1;
#10;
$finish;
end

endmodule
