// Multiplexer Implementation
module mux(a, sel, y);

input [0:3] a;      // 4-bit input
input [0:1] sel;    // 2-bit selection input
output reg y;       // Output; 'reg' is used to hold value until it changes

// Always block triggered whenever any of the inputs change
always @(*) begin
    // Select output based on selection input
    if (sel == 2'b00)   // Select input a[0]
        y = a[0];
    else if (sel == 2'b01) // Select input a[1]
        y = a[1];
    else if (sel == 2'b10) // Select input a[2]
        y = a[2];
    else if (sel == 2'b11) // Select input a[3]
        y = a[3];
end

endmodule
