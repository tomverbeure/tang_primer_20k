`default_nettype none

module top(
    input   wire            clk,
    output  wire [5:0]      leds
);

    reg [25:0]  cntr;

    always @(posedge clk) begin
        cntr <= cntr + 1;
    end

    assign leds     = ~cntr[25:20];
endmodule
