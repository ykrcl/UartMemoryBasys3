`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 10:52:21 AM
// Design Name: 
// Module Name: TestBuffer
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


module TestBuffer(

    );

     // Inputs
    reg [7:0] data_in;
    reg clk;
    reg reset;
    reg read_en;
    reg write_en;

    // Outputs
    wire [7:0] data_out;
    wire full;
    wire empty;

    // Instantiate the FIFO buffer module
    FifoBuffer uut (
        .data_in(data_in),
        .clk(clk),
        .reset(reset),
        .read_en(read_en),
        .write_en(write_en),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period clock
    end

    // Test sequence
    initial begin
        // Initialize inputs
        data_in = 8'b00000000;
        reset = 1;
        read_en = 0;
        write_en = 0;

        // Apply reset
        #10 reset = 0;

        // Write to FIFO
        #10 write_en = 1; data_in = 8'b00000001; // Write 1st value
        #10 write_en = 0;
        #10 write_en = 1; data_in = 8'b00000010; // Write 2nd value
        #10 write_en = 0;
        #10 write_en = 1; data_in = 8'b00000011; // Write 3rd value
        #10 write_en = 0;
        #10 write_en = 1; data_in = 8'b00000100; // Write 4th value (FIFO should be full now)
        #10 write_en = 0;

        // Attempt to write to a full FIFO (should not accept)
        #10 write_en = 1; data_in = 8'b00000101; 
        #10 write_en = 0;

        // Read from FIFO
        #10 read_en = 1; // Read 1st value
        #10 read_en = 0;
        #10 read_en = 1; // Read 2nd value
        #10 read_en = 0;
        #10 read_en = 1; // Read 3rd value
        #10 read_en = 0;
        #10 read_en = 1; // Read 4th value (FIFO should be empty now)
        #10 read_en = 0;

        // Attempt to read from an empty FIFO (should not read anything)
        #10 read_en = 1; 
        #10 read_en = 0;

        // Finish the simulation
        #20 $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("Time = %0d, clk = %b, reset = %b, read_en = %b, write_en = %b, data_in = %b, data_out = %b, full = %b, empty = %b", 
                 $time, clk, reset, read_en, write_en, data_in, data_out, full, empty);
    end


endmodule
