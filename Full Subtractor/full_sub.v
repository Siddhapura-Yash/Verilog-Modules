// Full Subtractor Implementation
module full_sub(a, b, c, diff, borr);

input a, b, c;           // Input signals: a (minuend), b (subtrahend), c (borrow-in)
output diff, borr;       // Output signals: diff (difference) and borr (borrow)

// Calculate the difference and borrow
assign diff = ((a ^ b) ^ c);   // Difference is the XOR of a, b, and borrow-in
assign borr = ((~a & b) | ((~(a ^ b)) & c)); // Borrow occurs based on conditions

endmodule
