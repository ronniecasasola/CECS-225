`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:20 10/24/2016 
// Design Name: 
// Module Name:    mux2_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux2to1_32bit(
    input [31:0] Input0,
    input [31:0] Input1,
    input Sel,
    output [31:0] Output_Mux
    );

assign Output_Mux = Sel ? Input1 : Input0;

endmodule
