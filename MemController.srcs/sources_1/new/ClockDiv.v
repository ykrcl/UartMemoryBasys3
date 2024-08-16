`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 03:42:33 PM
// Design Name: 
// Module Name: ClockDiv
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


module ClockDiv(
        input clk, input reset, output reg clk_tx_uart_out, output reg clk_rx_uart_out
    );
    // 100 000 000 / (115200*2) = 434 ~ 2^9
    reg [8:0] counter_tx;
    // 100 000 000 / (115200*16*2) = 27 ~ 2^5
    reg [4:0] counter_rx;
    always @(posedge clk) begin
        if(reset) begin
            counter_tx <= 0;
            counter_rx <= 0;
            clk_tx_uart_out <= 0;
            clk_rx_uart_out <= 0;
        end
        else begin
            counter_tx <= counter_tx + 1;
            counter_rx <= counter_rx + 1;
            if(counter_tx == 434) begin
                counter_tx <= 0;
                clk_tx_uart_out <= ~clk_tx_uart_out;
            end
            if(counter_rx == 27) begin
                counter_rx <= 0;
                clk_rx_uart_out <= ~clk_rx_uart_out;
            end
        end
    end
endmodule
