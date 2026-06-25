//====================================================
// Project     : RTL to GDS of SPI Protocol
// Top Level   : APB4 SPI Top
// Author      : Agnibha Sarkar
//
// Revision    : v1.0
// Last Updated: 25-06-2026
//
// Changes:
// - Implemented APB4 interface
// - Mode-0 only datapath (rx_negedge/tx_negedge removed)
//====================================================

`include "spi_define.v"

module spi_top_apb4
(
    // APB4 interface
    input  wire PCLK, //bus clock
    input  wire PRESETn, //active low reset

    input  wire [4:0] PADDR, //address for register
    input  wire [31:0] PWDATA, //write data
    input  wire PWRITE, //read write mode
    input  wire PSEL, //Peripheral Select
    input  wire PENABLE, //Decides Peripheral Access Phase
    input  wire [3:0] PSTRB, //Byte Strobe (selects which bytes of 32 bit are valid)

    output reg  [31:0] PRDATA, //Read Data
    output wire PREADY, //Peripheral Ready Signal
    //In this case, always set to 1 (ready)
    output wire PSLVERR, //Peripheral Error
    //Ignore this and set to 0 (no error)

    // SPI interface
    output wire [`SPI_SS_MAX-1:0]  ss_pad_o, //Slave Select wires
    output wire sclk_pad_o, //SPI clock
    output wire mosi_pad_o,
    input  wire miso_pad_i,

    // Interrupt output
    output reg spi_int_o //when HIGH, CPU executes ISR
);
    // ------------------------------------------------------------
    // Register map
    // ------------------------------------------------------------
    // 0 : RX_0 / TX_0
    // 1 : RX_1 / TX_1
    // 2 : RX_2 / TX_2
    // 3 : RX_3 / TX_3
    // 4 : CTRL
    // 5 : DIVIDER
    // 6 : SS
    // 7 : STATUS (read-only)
    //
    // ------------------------------------------------------------

    // Internal registers
    reg [`SPI_DIVIDER_LEN-1:0] divider;
    reg [`SPI_CTRL_BIT_NB-1:0] ctrl;
    reg [`SPI_SS_MAX-1:0]  ss; //Slave select register

    // Signals to the shifter / clock generator
    wire go, lsb, ie, ass, tip, pos_edge, neg_edge, last_bit;
    wire [$clog2(`SPI_MAX_CHARS):0] char_len;

    wire [`SPI_MAX_CHARS-1:0] rx; //Store the parallel output of SPI I/P Register

    // TX load pulses into shifter
    reg  [3:0] tx_latch;

    // APB signals
    wire apb_access;
    wire apb_write;
    wire apb_read;

    assign apb_access = PSEL & PENABLE;
    assign apb_write  = apb_access &  PWRITE;
    assign apb_read   = apb_access & ~PWRITE;

    //always ready, no error
    assign PREADY  = 1'b1;
    assign PSLVERR = 1'b0;

    // Control bit fields
    // ctrl[15]   = ASS (automatic slave select - when enabled, the slave select is automatically de-asserted after transaction, else software is reponsible)
    // ctrl[14]   = IE  (interrupt enable)
    // ctrl[13]   = LSB (1 = LSB first, 0 = MSB first)
    // ctrl[12]   = GO  (start transfer)
    // ctrl[11:4] = CHAR_LEN   (actual transfer length, 1..128)
    // ctrl[3:0]  = reserved

    assign ass      = ctrl[15];
    assign ie       = ctrl[14];
    assign lsb      = ctrl[13];
    assign go       = ctrl[12];
    assign char_len = ctrl[11:4];

    //module declaration
        // SPI clock generator
    clk_gen u_clgen (
        .clk_sys  (PCLK),
        .reset    (~PRESETn),
        .go       (go),
        .enable   (tip),
        .last_clk (last_bit),
        .divider  (divider),
        .clk_out  (sclk_pad_o),
        .pos_edge (pos_edge),
        .neg_edge (neg_edge)
    );

    shifter u_shift (
        .clk_sys     (PCLK),
        .reset       (~PRESETn),
        .lsb         (lsb),
        .go          (go),
        .pos_edge    (pos_edge),
        .neg_edge    (neg_edge),
        .serial_in   (miso_pad_i),
        .SPI_clk     (sclk_pad_o),
        .latch       (tx_latch),
        .byte_sel    (PSTRB),
        .len         (char_len),
        .parallel_in (PWDATA),
        .parallel_out(rx),
        .t_progress  (tip),
        .serial_out  (mosi_pad_o),
        .last_bit    (last_bit)
    );

   //Loading TX registers, note APB is byte addressable, henc [4:2] bits used only
    always @(*) begin
        if (apb_write && !tip) begin
            case (PADDR[4:2])
                `SPI_TX_0: tx_latch = 4'b0001;
                `SPI_TX_1: tx_latch = 4'b0010;
                `SPI_TX_2: tx_latch = 4'b0100;
                `SPI_TX_3: tx_latch = 4'b1000;
                default:   tx_latch = 4'b0000;
            endcase
        end
        else
            tx_latch = 4'b0000;
    end

    // Read data
    always @(*) begin
        if(apb_read) begin
            case (PADDR[4:2])
                `SPI_RX_0:   PRDATA = rx[31:0];
                `SPI_RX_1:   PRDATA = rx[63:32];
                `SPI_RX_2:   PRDATA = rx[95:64];
                `SPI_RX_3:   PRDATA = rx[127:96];
                `SPI_CTRL:   PRDATA = {{(32-`SPI_CTRL_BIT_NB){1'b0}}, ctrl};
                `SPI_DIVIDER:PRDATA = {{(32-`SPI_DIVIDER_LEN){1'b0}}, divider};
                `SPI_SS:     PRDATA = {{(32-`SPI_SS_MAX){1'b0}}, ss};
                `SPI_STATUS: PRDATA = {30'b0, last_bit, tip};
                default:     PRDATA = 32'b0;
            endcase
        end
        else
            PRDATA = 32'b0;
    end

    // Divider register 
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            divider <= {`SPI_DIVIDER_LEN{1'b0}};
        end else if (apb_write && !tip && (PADDR[4:2] == `SPI_DIVIDER)) begin
            if (PSTRB[0])
                divider[7:0] <= PWDATA[7:0];
            if (PSTRB[1])
                divider[15:8] <= PWDATA[15:8];
            if (PSTRB[2])
                divider[23:16] <= PWDATA[23:16];
            if (PSTRB[3])
                divider[31:24] <= PWDATA[31:24];
        end
    end


    // Control register
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            ctrl <= {`SPI_CTRL_BIT_NB{1'b0}};
        end 
        else begin
            if(apb_write && !tip && (PADDR[4:2] == `SPI_CTRL)) begin
                if (PSTRB[0])
                    ctrl[7:0] <= PWDATA[7:0];
                if (PSTRB[1])
                    ctrl[15:8] <= PWDATA[15:8];
            end
            else if (tip && last_bit && neg_edge) begin
                // clear GO automatically when the last bit has completed
                ctrl[12] <= 1'b0;
            end
        end
    end

    // Slave select register
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            ss <= {`SPI_SS_MAX{1'b0}};
        end else if (apb_write && !tip && (PADDR[4:2] == `SPI_SS)) begin
            if (PSTRB[0])
                ss[7:0] <= PWDATA[7:0];
            if (PSTRB[1])
                ss[15:8] <= PWDATA[15:8];
            if (PSTRB[2])
                ss[23:16] <= PWDATA[23:16];
            if (PSTRB[3])
                ss[`SPI_SS_MAX-1:24] <= PWDATA[`SPI_SS_MAX-1:24];
        end
    end

    // Interrupt logic
    // Interrupt pin goes HIGH afte the end of the transaction for the CPU to start Read Data ISR
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            spi_int_o <= 1'b0;
        end else if (ie && tip && last_bit && neg_edge) begin
            spi_int_o <= 1'b1;
        end else if (apb_read) begin
            // clear interrupt pin on the next read operation
            spi_int_o <= 1'b0;
        end
    end


    // Slave select output
    // ASS=1 -> active only during transfer
    // ASS=0 -> software selection
    assign ss_pad_o = ~((ss & {`SPI_SS_MAX{tip & ass}}) | (ss & {`SPI_SS_MAX{~ass}}));

endmodule