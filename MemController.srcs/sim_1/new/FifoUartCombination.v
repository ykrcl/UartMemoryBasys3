`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 02:26:29 PM
// Design Name: 
// Module Name: FifoUartCombination
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


module FifoUartCombination(

    );

    // Testbench signals
    reg clk_uart;
    reg clk_fifo;
    reg reset;
    reg rx_in;
    reg read_en;
    wire [7:0] fifo_data_in;
    wire [7:0] uart_data_out;
    wire fifo_write_en;
    wire fifo_full, fifo_empty;
    wire uart_recieve_end;
    wire [7:0] fifo_data_out;
    
    // Instantiate the UartRX module
    UartRX uart_rx (
        .reset_in(reset),
        .clk(clk_uart),
        .rx_in(rx_in),
        .data_out(uart_data_out),
        .recieve_end(uart_recieve_end)
    );

    // Instantiate the FifoBuffer module
    FifoBuffer fifo (
        .data_in(uart_data_out),
        .clk(clk_fifo),
        .reset(reset),
        .read_en(read_en),
        .write_en(uart_recieve_end),
        .data_out(fifo_data_out),
        .full(fifo_full),
        .empty(fifo_empty)
    );

    // Clock generation for UART (115200 Hz)
    initial begin
        clk_uart = 0;
        forever #12 clk_uart = ~clk_uart;  // Period of 115200 Hz
    end

    // Clock generation for FIFO (100 MHz)
    initial begin
        clk_fifo = 0;
        forever #5 clk_fifo = ~clk_fifo;  // Period of 100 MHz
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1;
        rx_in = 1;
        read_en = 0;
        #100 reset = 0;

        // Send data until FIFO is full
        repeat (4) begin
            // Simulate a UART transmission (start bit, 8 data bits, stop bit)
            #192 rx_in = 0;  // Start bit
            #192 rx_in = 1;  // Data bit 0
            #192 rx_in = 0;  // Data bit 1
            #192 rx_in = 1;  // Data bit 2
            #192 rx_in = 0;  // Data bit 3
            #192 rx_in = 1;  // Data bit 4
            #192 rx_in = 0;  // Data bit 5
            #192 rx_in = 1;  // Data bit 6
            #192 rx_in = 0;  // Data bit 7
            #192 rx_in = 1;  // Stop bit
        end

        // Wait for some time
        #200;

        // Read from FIFO until it's empty
        while (!fifo_empty) begin
            read_en = ~read_en;  // Enable reading
            #10;  // Wait for the read operation
        end
        read_en = 0;  // Disable reading once FIFO is empty

        // Wait and finish
        #100000 $finish;
    end

    // Monitor the output
    initial begin
        $monitor("Time=%0d, clk_uart=%b, clk_fifo=%b, rx_in=%b, uart_data_out=%b, fifo_data_in=%b, fifo_data_out=%b, fifo_write_en=%b, fifo_read_en=%b, fifo_full=%b, fifo_empty=%b", 
                 $time, clk_uart, clk_fifo, rx_in, uart_data_out, fifo_data_in, fifo_data_out, fifo_write_en, read_en, fifo_full, fifo_empty);
    end

endmodule
