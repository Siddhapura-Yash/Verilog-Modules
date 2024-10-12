// Half Subtractor Implementation
module half_sub(a, b, diff, borr);

input a, b;              // Input signals: a and b
output diff, borr;       // Output signals: diff (difference) and borr (borrow)

// Calculate the difference and borrow
assign diff = a ^ b;     // Difference is the XOR of a and b
assign borr = (~a) & b;   // Borrow occurs when a is 0 and b is 1

endmodule
