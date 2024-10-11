// Half Adder Implementation
module half_adder(a, b, sum, car);

input a, b;       // Inputs
output sum, car;  // Outputs

// Assignments for sum and carry
assign sum = a ^ b; // Sum output (XOR operation)
assign car = a & b; // Carry output (AND operation)

endmodule
