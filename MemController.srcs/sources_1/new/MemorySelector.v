`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 08:51:52 AM
// Design Name: 
// Module Name: MemorySelector
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


module MemorySelector(
    input wire enable, input [1:0] selector, output reg [3:0] memory_enable_pins
    );

    always @(enable or selector) begin
        if(enable) begin
            case(selector)
                2'b00: memory_enable_pins <= 4'b0001;
                2'b01: memory_enable_pins <= 4'b0010;
                2'b10: memory_enable_pins <= 4'b0100;
                2'b11: memory_enable_pins <= 4'b1000;
                default: memory_enable_pins <= 4'b0000;
            endcase
        end
        else begin
            memory_enable_pins <= 4'b0000;
        end
    end

endmodule
