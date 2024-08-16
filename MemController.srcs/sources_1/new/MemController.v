`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 03:08:02 PM
// Design Name: 
// Module Name: MemController
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
/// MAKE A RAM SELECTOR DECODER FOR 4 RAMS


module MemController(
        input wire clk, reset, rx_in, output wire tx_out, output [2:0] buffer_ptr, output reg [2:0] state
    );
    localparam [2:0] idle_state = 3'b000; //BUFFER IS NOT FULL
    localparam [2:0] read_command = 3'b001; //BUFFER IS FULL
    localparam [2:0] get_ram_address = 3'b010;
    localparam [2:0] get_ram_data = 3'b011;
    localparam [2:0] apply_ram_changes = 3'b100;
    localparam [2:0] send_init_data_uart = 3'b101;
    localparam [2:0] sending_data_uart = 3'b110;
    localparam [2:0] finalize_instruction = 3'b111;

    reg [7:0] sending_data;
    wire [7:0] receiving_data;
    
    reg [1:0] command;
    wire [7:0] data_store;
    reg [7:0] mem_address;
    reg [15:0] mem_write_data;
    wire [15:0] mem_read_data_1;
    wire [15:0] mem_read_data_2;
    wire [15:0] mem_read_data_3;
    wire [15:0] mem_read_data_4;
    wire [15:0] mem_read_data;
    reg fifo_read;
    wire fifo_write;

    //reg [2:0] state; 
    reg [26:0] time_out_counter;    


    reg send_command = 0;

    wire tx_clk;
    wire rx_clk;
    wire recieve_end;
    wire send_end;
    wire buffer_full;
    wire buffer_empty;
    reg memory_write;
    reg enable_get_ram_data;

    assign buffer_f = buffer_full;

    wire [3:0] ram_decoded_enable;
    reg enable_rams;
    reg [1:0] selected_ram;

    reg packet_number;

    assign fifo_write = recieve_end;

    ClockDiv(
        .clk(clk),
        .reset(reset),
        .clk_tx_uart_out(tx_clk),
        .clk_rx_uart_out(rx_clk)
    );

    MemorySelector(.enable(enable_rams), .selector(selected_ram), .memory_enable_pins(ram_decoded_enable));

    UartRX(
        .reset_in(reset),
        .clk(rx_clk),
        .rx_in(rx_in),
        .data_out(receiving_data),
        .recieve_end(recieve_end)
    );

    UartTX(
        .reset_in(reset),
        .clk(tx_clk),
        .start(send_command),
        .data_in(sending_data),
        .tx_out(tx_out),
        .send_end(send_end)
    );

    FifoBuffer(
        .read_en(fifo_read),
        .write_en(fifo_write),
        .data_in(receiving_data),
        .clk(clk),
        .reset(reset),
        .data_out(data_store),
        .full(buffer_full),
        .empty(buffer_empty),
        .data_pointer(buffer_ptr)
    );

    blk_mem_gen_0 memory_1(
        .clka(clk),
        .ena(ram_decoded_enable[0]),
        .wea(memory_write),
        .addra(mem_address),
        .dina(mem_write_data),
        .douta(mem_read_data_1)
    );

    blk_mem_gen_0 memory_2(
        .clka(clk),
        .ena(ram_decoded_enable[1]),
        .wea(memory_write),
        .addra(mem_address),
        .dina(mem_write_data),
        .douta(mem_read_data_2)
    );

    blk_mem_gen_0 memory_3(
        .clka(clk),
        .ena(ram_decoded_enable[2]),
        .wea(memory_write),
        .addra(mem_address),
        .dina(mem_write_data),
        .douta(mem_read_data_3)
    );

    blk_mem_gen_0 memory_4(
        .clka(clk),
        .ena(ram_decoded_enable[3]),
        .wea(memory_write),
        .addra(mem_address),
        .dina(mem_write_data),
        .douta(mem_read_data_4)
    );

    MemoryOutSelector(
        .selector(selected_ram),
        .mem_1(mem_read_data_1),
        .mem_2(mem_read_data_2),
        .mem_3(mem_read_data_3),
        .mem_4(mem_read_data_4),
        .mem_out(mem_read_data)
    );

    always @(posedge clk) begin
        if (reset) begin
            enable_rams <= 0;
            state <= idle_state;
            send_command <= 0;
            fifo_read <= 0;
            packet_number <= 0;
            selected_ram <= 2'b00;
        end
        else begin
            case(state)
                idle_state: begin
                    if(buffer_full) begin
                        fifo_read <= 1;
                        time_out_counter <= 0;
                    end
                    if (fifo_read) begin
                        state <= read_command;
                    end
                    if (buffer_empty) begin
                        fifo_read <= 0;
                    end
                    else if(~fifo_read && ~buffer_full) begin
                        time_out_counter <= time_out_counter + 1;
                    end
                    if (time_out_counter == 100000000) begin
                        state <= finalize_instruction;
                        time_out_counter <= 0;
                    end
                end
                read_command: begin
                    command <= data_store[7:0];
                    case (data_store[7:6])
                        2'b00: begin
                            selected_ram <= data_store[1:0];
                            state <= finalize_instruction;
                        end
                        2'b01: begin
                            memory_write <= 1;
                            state <= get_ram_address;
                            enable_get_ram_data <= 1;
                        end
                        2'b10: begin
                            memory_write <= 0;
                            state <= get_ram_address;
                            enable_get_ram_data <= 1;
                        end
                        2'b11: begin
                            memory_write <= 1;
                            state <= get_ram_address;
                            enable_get_ram_data <= 0;
                        end
                        default: begin
                            state <= finalize_instruction;
                        end
                    endcase
                end
                get_ram_address: begin
                    mem_address <= data_store;
                    if (enable_get_ram_data) begin
                        state <= get_ram_data;
                        packet_number <= 0;
                    end
                    else begin
                        mem_write_data <= 16'b0000000000000000;
                        state <= apply_ram_changes;
                    end
                    state <= get_ram_data;
                end
                get_ram_data: begin
                    if (packet_number == 1) begin
                        mem_write_data[15:8] <= data_store;
                        state <= apply_ram_changes;
                    end
                    else begin
                        mem_write_data[7:0] <= data_store;
                        packet_number <= 1;
                    end
                end
                apply_ram_changes: begin
                    enable_rams <= 1;
                    if (memory_write) begin
                        state <= finalize_instruction;
                    end
                    else begin
                        packet_number <= 0;
                        state <= send_init_data_uart;
                    end
                end
                send_init_data_uart: begin
                    if (packet_number == 1) begin
                        sending_data <= mem_read_data[15:8];
                    end
                    else begin
                        sending_data <= mem_read_data[7:0];
                    end
                    send_command <= 1;
                    if(~send_end) begin
                        state <= sending_data_uart;
                    end
                end
                sending_data_uart: begin
                    if(send_end && packet_number == 1) begin
                        send_command <= 0;
                        state <= finalize_instruction;
                    end
                    else if (send_end) begin
                        packet_number <= 1;
                        state <= send_init_data_uart;
                    end
                end
                finalize_instruction: begin
                    if(~buffer_empty) begin
                        fifo_read <= 1;
                    end
                    else begin
                        fifo_read <= 0;
                        state <= idle_state;
                    end
                    enable_rams <= 0;
                    packet_number <= 0;
                    memory_write <= 0;
                end
            endcase
        end
    end

    

endmodule
