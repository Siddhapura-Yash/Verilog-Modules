// Sequential Adder Implementation
module seq_adder (
    input wire CLK,          // Clock input
    input wire RST,          // Reset input
    input wire [3:0] A,     // 4-bit input A
    input wire [3:0] B,     // 4-bit input B
    output reg [3:0] SUM,    // 4-bit sum output
    output reg COUT          // Carry out output
);

reg [4:0] result;           // 5-bit result to hold sum and carry

always @(posedge CLK or posedge RST) begin
    if (RST) begin
        SUM <= 4'b0;         // Reset SUM to 0
        COUT <= 0;           // Reset COUT to 0
    end
    else begin
        result <= A + B;     // Calculate the sum of A and B
        SUM <= result[3:0];  // Assign lower 4 bits to SUM
        COUT <= result[4];    // Assign the 5th bit as Carry Out
    end
end

endmodule
