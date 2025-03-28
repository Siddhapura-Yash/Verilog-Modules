`timescale 1ns / 1ps

module JK_FF_Testbench;
reg clock,reset,j,k;
wire q,qbar;

JK_FF DUT(.CLK(clock),.RST(reset),.J(j),.K(k),.Q(q),.Qbar(qbar));

always #5 clock = ~clock;

initial begin
$monitor($time," reset=%b,clock=%b,j=%b,k=%b,q=%b,qbar=%b",reset,clock,j,k,q,qbar);
clock = 0;

#4;  reset = 1; j=0; k=0;
#10; reset = 1; j=0; k=1;
#10; reset = 1; j=1; k=0;
#10; reset = 1; j=1; k=1;

#10;  reset = 0; j=0; k=0;
#10; reset = 0; j=0; k=1;
#10; reset = 0; j=1; k=0;
#10; reset = 0; j=1; k=1;
#10;
$finish;
end
endmodule
