// Encoder Implementation
module encoder(y, a);

input [0:7] a;          // 8-bit input
output reg [0:2] y;     // 3-bit output

always @(*) begin
    // Assign output based on the active input
    if (a == 8'b10000000)
        y = 000a;       // Output for input 7
    else if (a == 8'b01000000)
        y = 001;        // Output for input 6
    else if (a == 8'b00100000)
        y = 010;        // Output for input 5
    else if (a == 8'b00010000)
        y = 011;        // Output for input 4
    else if (a == 8'b00001000)
        y = 100;        // Output for input 3
    else if (a == 8'b00000100)
        y = 101;        // Output for input 2
    else if (a == 8'b00000010)
        y = 110;        // Output for input 1
    else if (a == 8'b00000001)
        y = 111;        // Output for input 0
end 

endmodule
