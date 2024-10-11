// Demultiplexer Implementation
module demux(a, sel, y);

input [0:1] sel;     // 2-bit selection input
input y;             // Input signal
output reg [0:3] a;  // 4-bit output; 'reg' is used to hold value until it changes

// Always block triggered whenever any of the inputs change
always @(*) begin
    // Select output based on selection input
    if (sel == 2'b00)   // Select output a[0]
        a[0] = y;
    else if (sel == 2'b01) // Select output a[1]
        a[1] = y;
    else if (sel == 2'b10) // Select output a[2]
        a[2] = y;
    else if (sel == 2'b11) // Select output a[3]
        a[3] = y;
end

endmodule
