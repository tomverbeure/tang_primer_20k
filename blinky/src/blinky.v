`default_nettype none

module top(
    input   wire            clk,
    input   wire [4:0]      sw,
    output  wire [5:0]      leds
);

    reg [25:0]  cntr;

    always @(posedge clk) begin
        cntr <= cntr + 1;
    end

    assign leds     = {6{(^sw)}} ^ ~cntr[25:20];
endmodule
