// NAND Gate Implementation
module nand_gate(a, b, y);

input a, b;  // Inputs
output y;    // Output

assign y = ~(a & b);  // NAND operation

endmodule
