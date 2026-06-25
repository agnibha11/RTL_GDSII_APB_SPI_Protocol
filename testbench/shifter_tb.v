`timescale 1ns/1ps
`include "spi_define.v"

module tb_spi_mode0_msb;

    reg clk;
    reg rst;

    reg go;
    reg [3:0] latch;
    reg [3:0] byte_sel;
    reg [7:0] len;
    reg lsb;

    wire sclk;
    wire pos_edge;
    wire neg_edge;
    wire t_progress;
    wire last_bit;

    reg  [31:0] p_in;
    wire [`SPI_MAX_CHARS-1:0] p_out;
    reg  serial_in;
    wire serial_out;

    reg [`SPI_DIVIDER_LEN-1:0] divider;

    reg [7:0] slave_tx;
    reg [7:0] slave_rx;

    // SPI clock generator
    clk_gen u_clgen (
        .clk_sys   (clk),
        .reset      (rst),
        .go       (go),
        .enable   (t_progress),
        .last_clk (last_bit),
        .divider  (divider),
        .clk_out  (sclk),
        .pos_edge (pos_edge),
        .neg_edge (neg_edge)
    );

    // Your shifter
    shifter u_shift (
        .clk_sys     (clk),
        .reset       (rst),
        .lsb         (lsb),
        .go          (go),
        .pos_edge    (pos_edge),
        .neg_edge    (neg_edge),
        .serial_in   (serial_in),
        .SPI_clk     (sclk),
        .latch       (latch),
        .byte_sel    (byte_sel),
        .len         (len),
        .parallel_in (p_in),
        .parallel_out(p_out),
        .t_progress   (t_progress),
        .serial_out  (serial_out),
        .last_bit    (last_bit)
    );

    // 100 MHz system clock
    always #5 clk = ~clk;

    // Slave behavior:
    // Mode 0:
    //   slave samples MOSI on posedge SCLK
    //   slave drives MISO on negedge SCLK
    always @(posedge sclk or posedge rst) begin
        if (rst) begin
            slave_rx <= 8'h00;
        end else if (t_progress) begin
            if (lsb)
                slave_rx <= {serial_out, slave_rx[7:1]};
            else
                slave_rx <= {slave_rx[6:0], serial_out};
        end
    end

    always @(negedge sclk or posedge rst) begin
        if (rst) begin
            slave_tx   <= 8'h3D;
            serial_in  <= 1'b0;
        end else if (t_progress) begin
            if (lsb) begin
                //serial_in <= slave_tx[0];
                slave_tx  <= {1'b0, slave_tx[7:1]};
            end else begin
                //serial_in <= slave_tx[7];
                slave_tx  <= {slave_tx[6:0], 1'b0};
            end
        end
    end

    //Serial in update is combinatinal
    always @(*) begin
        if(lsb)
            serial_in <= slave_tx[0];
        else 
            serial_in <= slave_tx[7];

    end

    task load_master_byte;
        input [7:0] tx_byte;
        begin
            @(negedge clk);
            p_in     = {24'h0, tx_byte};
            byte_sel = 4'b0001;
            latch    = 4'b0001;

            @(posedge clk);
            #1 latch = 4'b0000;
        end
    endtask

    task start_transfer;
        begin
            @(negedge clk);
            go = 1'b1;

            @(posedge clk);
            #1 go = 1'b0;
        end
    endtask

    task wait_done;
        begin
            wait(t_progress == 1'b1);
            wait(t_progress == 1'b0);
        end
    endtask

    task run_transfer;
        input mode_lsb;
        input [7:0] master_byte;
        input [7:0] slave_byte;
        begin
            lsb       = mode_lsb;
            slave_tx  = slave_byte;
            slave_rx  = 8'h00;

            // preload first MISO bit
            if (lsb)
                serial_in = slave_tx[0];
            else
                serial_in = slave_tx[7];
            

            load_master_byte(master_byte);
            start_transfer();
            wait_done();

            if (lsb) begin
                $display("LSB-first done: p_out[7:0] = 0x%02h", p_out[7:0]);
                $display("LSB-first slave captured MOSI = 0x%02h", slave_rx);
            end else begin
                $display("MSB-first done: p_out[7:0] = 0x%02h", p_out[7:0]);
                $display("MSB-first slave captured MOSI = 0x%02h", slave_rx);
            end
        end
    endtask

    initial begin
        $dumpfile("spi_mode0_msb_lsb.vcd");
        $dumpvars(0, tb_spi_mode0_msb);
        $dumpvars(1, u_shift);
        $dumpvars(1, tb_spi_mode0_msb.slave_rx);
        $dumpvars(1, tb_spi_mode0_msb.slave_tx);

        clk       = 1'b0;
        rst       = 1'b1;
        go        = 1'b0;
        latch     = 4'b0000;
        byte_sel  = 4'b0000;

        // Your current shifter uses len as actual length
        len       = 8'd1;

        divider   = 16'd4;

        p_in      = 32'h0;
        serial_in = 1'b0;
        slave_tx  = 8'h00;
        slave_rx  = 8'h00;

        #30;
        rst = 1'b0;

        // MSB-first transfer
        run_transfer(1'b0, 8'h01, 8'h00);

        // gap between transfers
        repeat (10) @(posedge clk);

        // LSB-first transfer
        run_transfer(1'b1, 8'h00, 8'h01);

        #50;
        $finish;
    end

    // Live trace
    initial begin
        $monitor(
            "T=%0t rst=%0b tip=%0b go=%0b last=%0b lsb=%0b div=%0d len=%0d | cnt=%0d tx=%0d rx=%0d | sclk=%b pos=%b neg=%b | MOSI=%b MISO=%b OUT=%b IN=%b",
            $time, rst, t_progress, go, last_bit, lsb, divider, len,
            u_shift.counter, u_shift.tx_bit_pos, u_shift.rx_bit_pos,
            sclk, pos_edge, neg_edge, serial_out, serial_in,
            u_shift.OUT_reg[7:0], u_shift.IN_reg[7:0]
        );
    end

endmodule