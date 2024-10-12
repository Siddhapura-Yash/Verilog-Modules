// Decoder Implementation
module decoder(y, a);

output reg [0:7] a;    // 8-bit output
input [0:2] y;         // 3-bit input

always @(*) begin
    // Assign output based on the input value
    if (y == 3'b000)       
        a = 8'b10000000;  // Output for input 0
    else if (y == 3'b001)
        a = 8'b01000000;  // Output for input 1
    else if (y == 3'b010)
        a = 8'b00100000;  // Output for input 2
    else if (y == 3'b011)
        a = 8'b00010000;  // Output for input 3
    else if (y == 3'b100)
        a = 8'b00001000;  // Output for input 4
    else if (y == 3'b101)
        a = 8'b00000100;  // Output for input 5
    else if (y == 3'b110)
        a = 8'b00000010;  // Output for input 6
    else if (y == 3'b111)
        a = 8'b00000001;  // Output for input 7
end 

endmodule
