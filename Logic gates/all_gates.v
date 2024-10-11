// All Gates Implementation
module all_gates(a, b, y);

input a, b;           // Inputs
output [6:0] y;      // Output (7 bits for various gate operations)

// Assignments for each gate operation
assign y[0] = a | b;   // OR gate
assign y[1] = a & b;   // AND gate
assign y[2] = ~a;      // NOT gate
assign y[3] = a ^ b;   // XOR gate
assign y[4] = a ~^ b;  // XNOR gate
assign y[5] = ~(a & b); // NAND gate
assign y[6] = ~(a | b); // NOR gate

endmodule
