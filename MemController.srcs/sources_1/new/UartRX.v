`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 01:55:54 PM
// Design Name: 
// Module Name: UartRX
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

module UartRX(
    input reset_in, clk, input rx_in, output reg [7:0] data_out, output reg recieve_end
    );
    localparam [1:0] idle_state = 2'b00;
    localparam [1:0] start_state = 2'b01;
    localparam [1:0] receiving_state = 2'b10;
    localparam [1:0] stop_state = 2'b11;
    reg [1:0] state;
    reg [3:0] bit_counter;
    reg [15:0] boud_counter;
    reg [7:0] data_reg;


    always @(posedge clk) begin
        if(reset_in) begin
            state <= idle_state;
            bit_counter <= 0;
            recieve_end <= 1;
            boud_counter <= 0;
            data_out <= 8'b00000000;
        end
        else begin
            case(state)
                idle_state: begin
                    if(rx_in == 0) begin
                        state <= start_state;
                        bit_counter <= 0;
                        data_reg <= 0;
                        boud_counter <= 0;
                    end
                    else begin
                        recieve_end <= 1;
                    end
                end
                start_state: begin
                    if(rx_in == 0) begin
                        if (boud_counter == 7) begin
                            state <= receiving_state;
                            bit_counter <= 0;
                            recieve_end <= 0;
                            boud_counter <= 0;
                        end
                        else begin
                            boud_counter <= boud_counter + 1;
                        end 
                    end
                    else begin
                        state <= idle_state;
                    end
                end
                receiving_state: begin
                    if (boud_counter == 15) begin
                        data_reg <= {rx_in, data_reg[7:1]};
                        bit_counter <= bit_counter + 1;
                        if(bit_counter == 7) begin
                            state <= stop_state;
                        end
                        boud_counter <= 0;
                    end
                    else begin
                        boud_counter <= boud_counter + 1;
                    end
                end
                stop_state: begin
                    if (boud_counter == 15) begin
                        recieve_end <= 1;
                        data_out <= data_reg;
                        state <= idle_state;
                    end
                    else begin
                        boud_counter <= boud_counter + 1;
                    end
                end
            endcase
        end
    end
endmodule

