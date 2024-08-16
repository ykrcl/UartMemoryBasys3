`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 03:37:13 PM
// Design Name: 
// Module Name: UartTX
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


module UartTX(
    input reset_in, clk, start, input [7:0] data_in, output reg tx_out, output reg send_end
    );
    localparam [1:0] idle_state = 2'b00;
    localparam [1:0] send_init_state = 2'b01;
    localparam [1:0] sending_state = 2'b10;
    localparam [1:0] stop_state = 2'b11;
    reg [1:0] state;
    reg [3:0] bit_counter;
    reg [7:0] data_reg;
    always @(posedge clk) begin
        if(reset_in) begin
            state <= idle_state;
            bit_counter <= 0;
            tx_out <= 1;
            send_end <= 1;
        end
        else begin
            case(state)
                idle_state: begin
                    if(start) begin
                        state <= send_init_state;
                        data_reg <= data_in;
                        bit_counter <= 0;
                        tx_out <= 1;
                        send_end <= 0;
                    end
                    else begin
                        tx_out <= 1;
                        send_end <= 1;
                    end
                end
                send_init_state: begin
                    tx_out <= 0;
                    state <= sending_state;
                end
                sending_state: begin
                    tx_out <= data_reg[0];
                    data_reg <= {0, data_reg[7:1]};
                    
                    if(bit_counter == 7) begin
                        state <= stop_state;
                    end
                    else begin
                        bit_counter <= bit_counter + 1;
                    end
                end
                stop_state: begin
                    tx_out <= 1;
                    send_end <= 1;
                    state <= idle_state;
                end
            endcase
        end
    end

endmodule
