// SR Flip-Flop Implementation
module SR_FF (
    input S, R, CLK,         // Input signals: Set (S), Reset (R), Clock (CLK)
    output reg Q, Q_bar      // Output signals: Q and Q_bar (inverted Q)
);

always @(posedge CLK) begin
    if (S == 1) begin        // Set condition
        Q <= 1;              // Set Q to 1
        Q_bar = ~Q;          // Update Q_bar to the inverse of Q
    end
    else if (R == 1) begin   // Reset condition
        Q <= 0;              // Reset Q to 0
        Q_bar = ~Q;          // Update Q_bar to the inverse of Q
    end
    else if (S == 1 & R == 1) begin  // Undefined condition
        Q <= 1'bz;           // Set Q to high impedance (undefined)
        Q_bar = 1'bz;        // Set Q_bar to high impedance (undefined)
    end 
end

endmodule
