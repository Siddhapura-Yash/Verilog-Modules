`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Siddhapura Yash
// 
// Create Date: 01/02/2026 12:01:34 AM
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


module design_module#(parameter data_width = 8,parameter adder_width = 3)(
    input clk,
    input we,
    input [adder_width - 1 : 0]r_adder0,
    input [adder_width - 1 : 0]r_adder1,
    input [adder_width - 1 : 0]w_adder,
    input [data_width - 1 : 0]w_data,
    output [data_width - 1 : 0]r_data0,
    output [data_width - 1 : 0]r_data1
    );
    
    reg [data_width - 1 : 0]memory[adder_width - 1 : 0];
    
    always@(posedge clk) begin
        if(we) begin
            memory[w_adder] <= w_data;
        end
    end
    
    assign r_data0 = memory[r_adder0];
    assign r_data1 = memory[r_adder1];
endmodule
