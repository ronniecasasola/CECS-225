`timescale 1ns / 1ps


module Subtracter_32(
    input [31:0] subtrahend,
    input [31:0] minuend,
    output [31:0] difference
    );

assign difference = subtrahend - minuend;

endmodule
