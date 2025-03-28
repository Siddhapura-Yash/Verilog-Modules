`timescale 1ns / 1ps

module SR_Latch_Testbench;
reg Set,Reset;
wire Q,Qbar;

SR_Latch DUT(.S(Set),.R(Reset),.Q(Q),.Qbar(Qbar));

initial
begin
    $monitor("Time=%t | Set=%b, Reset=%b", $time, Set, Reset);
    #5 Set = 1; Reset = 0;
    #5 Set = 0; Reset = 1;
    #5 Set = 0; Reset = 0;
    #5 Set = 1; Reset = 1;
    #5;
$finish;
end
endmodule
