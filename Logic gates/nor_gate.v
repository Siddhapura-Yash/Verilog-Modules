// NOR Gate Implementation
module nor_gate(a, b, y);

input a, b;  // Inputs
output y;    // Output

assign y = ~(a | b);  // NOR operation

endmodule
