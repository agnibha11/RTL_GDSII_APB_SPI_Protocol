`timescale 1ns/1ps

`include "spi_define.v"

module spi_clgen_tb;

reg clk_in;
reg rst;
reg go;
reg enable;
reg last_clk;

reg [`SPI_DIVIDER_LEN-1:0] divider;

wire clk_out;
wire pos_edge;
wire neg_edge;


// DUT
clk_gen dut(

    .clk_sys(clk_in),
    .reset(rst),
    .go(go),
    .enable(enable),
    .last_clk(last_clk),
    .divider(divider),

    .clk_out(clk_out),
    .pos_edge(pos_edge),
    .neg_edge(neg_edge)

);


// Clock generation

initial begin

    clk_in = 0;

    forever #5 clk_in = ~clk_in;      // 10 ns period

end



// Dump waveform

initial begin

    $dumpfile("spi_clgen.vcd");

    $dumpvars(0, spi_clgen_tb);

end



// Monitor

initial begin

$monitor(

"T=%0t rst=%0b en=%0b go=%0b last=%0b div=%0d | cnt=%0d clk_out=%0b pos=%0b neg=%0b",

$time,

rst,

enable,

go,

last_clk,

divider,

dut.counter,

clk_out,

pos_edge,

neg_edge

);

end




// Stimulus

initial begin

    // Initial values

    rst      = 1;

    enable   = 0;

    go       = 0;

    last_clk = 0;

    divider  = 0;


    //-----------------------

    // RESET

    //-----------------------

    #30;

    rst = 0;


    //-----------------------

    // divider = 4 test

    //-----------------------

    divider = 4;

    enable  = 0;

    #20;


    enable = 1;


    // Run for a while

    #250;


    //-----------------------

    // Last clock

    //-----------------------

    last_clk = 1;


    #80;


    enable   = 0;

    last_clk = 0;


    #40;


    //-----------------------

    // divider=0 test

    //-----------------------

    divider = 0;

    enable  = 0;


    #10;

    go = 1;


    #10;

    go = 0;


    enable = 1;


    #120;


    enable = 0;


    #40;


    $finish;

end


endmodule