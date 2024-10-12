// JK Flip-Flop Implementation
module JK_FF (
    input J, K, CLK,          // Input signals: J, K, and Clock (CLK)
    output reg Q, Q_bar       // Output signals: Q and Q_bar (inverted Q)
);

always @(posedge CLK) begin
    if (J == 1)               // Set condition
        Q <= 1;               // Set Q to 1
    else if (K == 1)          // Reset condition
        Q <= 0;               // Reset Q to 0
    else if (J == 1 & K == 1) // Toggle condition
        Q <= ~Q;              // Toggle Q to its complement
    // If both J and K are 0, Q remains unchanged

    Q_bar = ~Q;               // Update Q_bar to the complement of Q
end 

endmodule
