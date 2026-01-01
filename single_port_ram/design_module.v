`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Siddhapura Yash
// 
// Create Date: 01/01/2026 11:21:41 PM
// Design Name: 
// Module Name: design_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module design_module #(parameter data_width = 8,adder_width = 3)(
    input clk,
    input we,
    input [adder_width-1 : 0]r_adder,
    input [adder_width-1 : 0]w_adder,
    input [data_width - 1 : 0]w_data,
    output [data_width - 1 : 0]r_data
    );
    
    reg [data_width - 1 : 0]memory[0 : 2 ** adder_width - 1];
    
    always@(posedge clk) begin
        if(we) begin
            memory[w_adder] <= w_data;
        end
    end
    
    assign r_data = memory[r_adder];
    
endmodule
