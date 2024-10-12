// BCD Adder Implementation
module bcd_adder(
    input [3:0] a,           // 4-bit input a
    input [3:0] b,           // 4-bit input b
    input cin,               // Carry-in input
    output reg [3:0] result, // 4-bit result output
    output reg cout          // Carry-out output
);

reg [4:0] s;                // 5-bit sum to accommodate carry

always @(*) begin
    s = a + b + cin;        // Calculate the sum of a, b, and carry-in
    if (s > 9) begin
        result = s + 6;     // Adjust for BCD if sum is greater than 9
        cout = 1;           // Set carry-out
    end
    else begin
        result = s[3:0];    // Assign lower 4 bits to result
        cout = 0;           // Clear carry-out
    end
end

endmodule
