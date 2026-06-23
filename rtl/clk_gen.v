`include "spi_define.v"

//The arithmatic it SPI_clk = (SYS_clk)/ (2 * (divider + 1));
module clk_gen(input clk_sys, reset, enable, last_clk, go, input [`SPI_DIVIDER_LEN-1:0] divider, output reg clk_out, pos_edge, neg_edge);

reg [`SPI_DIVIDER_LEN-1:0] counter; //Counter Register
wire cnt_zero; // Active high when Counter is 0;
wire cnt_one;

assign cnt_zero = counter == 0;
assign cnt_one = counter == 1;

//half period counter count (Down counter)
always @(posedge clk_sys or posedge reset) begin
    if(reset)
        counter <= {`SPI_DIVIDER_LEN{1'b1}}; //All 1s (safe choice)
    else if (!enable || cnt_zero)
        counter <= divider; //If not enabled or counter is 0, keep loading it with divider value
    else
        counter <= counter - 1'b1; //Count down by 1
end

//SCLK, posedge and negedge generation
always @(posedge clk_sys or posedge reset) begin
    if(reset) begin
        clk_out <= 1'b0; //CPOL = 0 
        pos_edge <= 1'b0;
        neg_edge <= 1'b0;
    end
    else begin
        //Since CPOL = 0, after the last clock, we check if its 1, then toggle
        //else if its 0, then dont toggle
        clk_out <= (enable && cnt_zero && (!last_clk || clk_out)) ? ~clk_out : clk_out;
        pos_edge  <= (enable && !clk_out && cnt_one) || (!(|divider) && clk_out) || (!(|divider) && go && !enable);
        neg_edge  <= (enable && clk_out && cnt_one) || (!(|divider) && !clk_out && enable);
    end
end

endmodule