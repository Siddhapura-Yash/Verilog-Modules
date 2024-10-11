// Full Adder Implementation
module full_adder(a, b, c, sum, car);

input a, b, c;       // Inputs
output sum, car;     // Outputs

// Assignments for sum and carry
assign sum = (a ^ b) ^ c;                     // Sum output (XOR operation)
assign car = (a & b) | ((a ^ b) & c);         // Carry output (AND and OR operations)

endmodule
