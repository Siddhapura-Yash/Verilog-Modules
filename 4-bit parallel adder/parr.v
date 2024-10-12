// Parallel Adder Implementation
module parr (
    input  [3:0] a,       // 4-bit input a
    input  [3:0] b,       // 4-bit input b
    input c,              // Carry input
    output [3:0] s,       // 4-bit sum output
    output cout           // Carry output
);

    wire c1, c2, c3; // Internal carry wires

    // Calculate sum and carry for each bit
    assign s[0] = (a[0] ^ b[0]) ^ c;          // Sum for the least significant bit
    assign c1 = (a[0] & b[0]) | ((a[0] ^ b[0]) & c); // Carry for bit 0

    assign s[1] = (a[1] ^ b[1]) ^ c1;         // Sum for bit 1
    assign c2 = (a[1] & b[1]) | ((a[1] ^ b[1]) & c1); // Carry for bit 1

    assign s[2] = (a[2] ^ b[2]) ^ c2;         // Sum for bit 2
    assign c3 = (a[2] & b[2]) | ((a[2] ^ b[2]) & c2); // Carry for bit 2

    assign s[3] = (a[3] ^ b[3]) ^ c3;         // Sum for the most significant bit
    assign cout = (a[3] & b[3]) | ((a[3] ^ b[3]) & c3); // Final carry output

endmodule
