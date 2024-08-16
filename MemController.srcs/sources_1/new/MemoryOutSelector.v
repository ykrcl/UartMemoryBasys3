`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 10:33:54 AM
// Design Name: 
// Module Name: MemoryOutSelector
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


module MemoryOutSelector(
    input [1:0] selector, input [15:0] mem_1, mem_2, mem_3, mem_4, output reg [15:0] mem_out
    );

    always @(selector, mem_1, mem_2, mem_3, mem_4) begin
        case(selector)
            2'b00: mem_out <= mem_1;
            2'b01: mem_out <= mem_2;
            2'b10: mem_out <= mem_3;
            2'b11: mem_out <= mem_4;
            default: mem_out <= mem_1;
        endcase
    end
endmodule
