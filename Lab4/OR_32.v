`timescale 1ns / 1ps

module OR_32(
    input [31:0] argA,
    input [31:0] argB,
    output [31:0] AorB
    );

assign AorB = argA | argB;
endmodule
