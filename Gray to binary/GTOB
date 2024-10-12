// Gray to Binary Converter Implementation
module GTOB(a, b);

input [0:3] a;        // 4-bit Gray code input
output [0:3] b;       // 4-bit Binary output

// Assign the binary output based on the Gray code input
assign b[0] = a[0];                // The least significant bit remains the same
assign b[1] = b[0] ^ a[1];         // XOR with the previous binary bit
assign b[2] = b[1] ^ a[2];         // XOR with the next Gray bit
assign b[3] = b[2] ^ a[3];         // XOR with the next Gray bit

endmodule
