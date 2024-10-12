// D Flip-Flop Implementation
module D_FF(D, RST, CLK, Q, Qbar);

input D, RST, CLK;         // Input signals: Data, Reset, Clock
output reg Q, Qbar;        // Output signals: Q and Qbar (inverted Q)

always @(posedge CLK or posedge RST) // Trigger on positive clock edge or reset
begin
    if (RST == 1'b1) begin
        Q <= 1'b0;          // Reset Q to 0
        Qbar <= 1'b1;       // Set Qbar to 1 (inverted)
    end 
    else begin
        Q <= D;             // On clock edge, assign D to Q
        Qbar <= ~D;         // Qbar is the inverse of D
    end
end

endmodule
