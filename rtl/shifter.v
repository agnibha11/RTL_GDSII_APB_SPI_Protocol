//====================================================
// Project     : RTL to GDS of SPI Protocol
// Author      : Agnibha Sarkar
//
// Revision    : v1.0
// Last Updated: 25-06-2026
//
// Changes: Added support for Mode 0 
//====================================================

`include "spi_define.v"

module shifter(input clk_sys, reset, lsb, go, pos_edge, neg_edge, serial_in, SPI_clk, input [(`SPI_MAX_CHARS/`CPU_DATA_BUS_WIDTH)-1:0] latch, byte_sel, input [($clog2(`SPI_MAX_CHARS)):0] len, input [`CPU_DATA_BUS_WIDTH-1:0] parallel_in, output [`SPI_MAX_CHARS-1:0] parallel_out, output reg t_progress, serial_out, output last_bit);
//lsb = 0 -> MSB first, else LSB first
//latch -> select which bits of the 128 bit shift reg receives the parallel_in from CPU
//byte_sel -> select whether 1, 2, 3 or 4 bytes of the 32 byte selected gets written (for word, half-word and byte CPU ops)
//len is the actual length of data (can never be 0)

//reg [($clog2(`SPI_MAX_CHARS)):0] counter; //Data bit counter
//A single shift reg works for TX/RX as the read and write happen on different edges
reg [`SPI_MAX_CHARS-1:0] OUT_reg; //shift register to store input
reg [`SPI_MAX_CHARS-1:0] IN_reg; //shift register to store output

reg [($clog2(`SPI_MAX_CHARS))-1:0] tx_bit_pos, rx_bit_pos; // The next bit to for TX/RX
reg [($clog2(`SPI_MAX_CHARS)):0] counter; //used to track if operation complete

//parallel data output
assign parallel_out = IN_reg; // data for CPU;

wire finished;

assign last_bit = !(|counter);

//tx rx counter updates
always @(posedge clk_sys or posedge reset) begin
    if(reset) begin
        tx_bit_pos <= {($clog2(`SPI_MAX_CHARS)){1'b0}};
        rx_bit_pos <= {($clog2(`SPI_MAX_CHARS)){1'b0}};
        counter <= {($clog2(`SPI_MAX_CHARS))+1{1'b0}};
    end
    else begin
        if(!t_progress) begin
            counter <= len;
            if(lsb) begin
                tx_bit_pos <= 1; //the first bit is TXed moment t_progress starts
                rx_bit_pos <= 0;
            end
            else begin
                tx_bit_pos <= (len - 2); //the first bit is TXed moment t_progress starts
                rx_bit_pos <= (len - 1); //upper bit truncated automatically
            end
        end
        else
            counter <= pos_edge ? counter - 1 : counter; //Down counter
    end
end

//Transfer in progress
always @(posedge clk_sys or posedge reset) begin
    if(reset)
        t_progress <= 1'b0;
    else if(go && !t_progress) begin
        t_progress <= 1'b1; //Activated
        //Preload the serial_out with data for Slave
        serial_out <= (lsb) ? OUT_reg[0] : OUT_reg[len-1];
    end
    else if(t_progress && last_bit && neg_edge)
        t_progress <= 1'b0; //Deactivated //negedge to ensure last bit is TXed
end

//Writing bits to the line (TX)
always @(posedge clk_sys or posedge reset) begin
    if(reset) begin
        serial_out <= 1'b0;
        OUT_reg <= 0;
    end
    else //TX at neg edge in Mode 0
        if(neg_edge && t_progress) begin
            serial_out <= OUT_reg[tx_bit_pos];
            tx_bit_pos <= lsb ? tx_bit_pos + 1 : tx_bit_pos - 1;
        end
end

//Reading bits from line
always @(posedge clk_sys or posedge reset) begin
    if(reset)
        IN_reg <= 0;
    //These are all CPU reads
    else if (latch[0] && !t_progress) begin
        if (byte_sel[3])
          OUT_reg[31:24] <= parallel_in[31:24];
        if (byte_sel[2])
          OUT_reg[23:16] <= parallel_in[23:16];
        if (byte_sel[1])
          OUT_reg[15:8] <= parallel_in[15:8];
        if (byte_sel[0])
          OUT_reg[7:0] <= parallel_in[7:0];
    end
    else if (latch[1] && !t_progress) begin
        if (byte_sel[3])
          OUT_reg[63:56] <= parallel_in[31:24];
        if (byte_sel[2])
          OUT_reg[55:48] <= parallel_in[23:16];
        if (byte_sel[1])
          OUT_reg[47:40] <= parallel_in[15:8];
        if (byte_sel[0])
          OUT_reg[39:32] <= parallel_in[7:0];
    end
    else if (latch[2] && !t_progress) begin
        if (byte_sel[3])
          OUT_reg[95:88] <= parallel_in[31:24];
        if (byte_sel[2])
          OUT_reg[87:80] <= parallel_in[23:16];
        if (byte_sel[1])
          OUT_reg[79:72] <= parallel_in[15:8];
        if (byte_sel[0])
          OUT_reg[71:64] <= parallel_in[7:0];
    end 
    else if (latch[3] && !t_progress) begin
        if (byte_sel[3])
          OUT_reg[127:120] <= parallel_in[31:24];
        if (byte_sel[2])
          OUT_reg[119:112] <= parallel_in[23:16];
        if (byte_sel[1])
          OUT_reg[111:104] <= parallel_in[15:8];
        if (byte_sel[0])
          OUT_reg[103:96] <= parallel_in[7:0];
    end 
    else //RX at pos edge in Mode 0
        if(pos_edge && t_progress) begin
            IN_reg[rx_bit_pos] <= serial_in;
            rx_bit_pos <= lsb ? rx_bit_pos + 1 : rx_bit_pos - 1;
        end
end


endmodule