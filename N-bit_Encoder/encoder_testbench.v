    `timescale 1ns / 1ps
    
    module encoder_testbench;
    parameter N=8;
    reg [N-1:0]a;
    wire [$clog2(N)-1:0]out;
    integer i;
    
    encoder DUT(a,out);
    
    initial
    begin
        
        for(i=0; i<N ; i=i+1)
        begin
        a = 1 << i;
        #5;
        $display($time,"a=%b,out=%b",a,out);
        end
    $finish;
    end
    endmodule
