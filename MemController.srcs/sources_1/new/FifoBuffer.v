`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 02:02:16 PM
// Design Name: 
// Module Name: FifoBuffer
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

///READ IS PRIORITIZED OVER WRITE
///FIFO BUFFER IS 4 DEEP
///FIFO BUFFER IS 8 BITS WIDE
///FIFO BUFFER IS SYNCHRONOUS

module FifoBuffer(
    read_en, write_en, data_in, clk, reset, data_out, full, empty, data_pointer
    );
    input [7:0] data_in;
    input clk, reset, read_en, write_en;
    output reg [7:0] data_out;
    output full, empty;
    reg [7:0] data_reg [0:3];
    output reg [1:0] data_pointer;
    reg full, empty;
    reg last_write_en;
    
    always @(posedge clk) begin
        if(reset) begin
            data_pointer <= 0;
            full <= 0;
            empty <= 1;
            last_write_en <= 1;
        end
        else begin
            if(read_en && !empty) begin
                data_out <= data_reg[0];
                data_reg[0] <= data_reg[1];
                data_reg[1] <= data_reg[2];
                data_reg[2] <= data_reg[3];
                data_reg[3] <= 8'b00000000;
                full <= 0;
                if(data_pointer == 0) begin
                    empty <= 1;
                end
                else begin
                    data_pointer <= data_pointer - 1;
                end
            end
            else if (!full && write_en && !last_write_en) begin
                data_reg[data_pointer] <= data_in;
                empty <= 0;
                last_write_en <= 1;
                if(data_pointer == 3) begin
                    full <= 1;
                end
                else begin
                    data_pointer <= data_pointer + 1;
                end
            end

            if (last_write_en && !write_en) begin
                last_write_en <= 0;
            end
        end
    end
    

    
endmodule
