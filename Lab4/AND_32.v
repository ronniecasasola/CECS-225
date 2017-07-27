`timescale 1ns / 1ps


module AND_32(
    input [31:0] argA,
    input [31:0] argB,
    output [31:0] AandB
    );

assign AandB = argA & argB;

endmodule
