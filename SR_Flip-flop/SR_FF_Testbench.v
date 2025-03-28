`timescale 1ns / 1ps

module SR_FF_Testbench;
reg clock,s,r,reset;
wire q,qbar;
integer i;

SR_FF DUT(.S(s),.R(r),.RST(reset),.CLK(clock),.Q(q),.Qbar(qbar));
initial begin clock = 0; end

 always
 #5 clock =~clock;

initial
begin
$monitor($time," clock=%b,s=%b,r=%b,reset=%b,q=%b,qbar=%b",clock,s,r,reset,q,qbar);
 #4 ; reset = 1; s=0; r=0;  
 #10 ; reset = 1; s=1; r=0;
 #10; reset = 1; s=0; r=1;
 #10 ; reset = 1; s=1; r=1;
 
 #10 ; reset = 0; s=0; r=0;  
 #10 ; reset = 0; s=1; r=0;
 #10 ; reset = 0; s=0; r=1;
 #10; reset = 0; s=1; r=1;
 #10;
   
$finish;
end
endmodule
