`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:29 10/24/2016 
// Design Name: 
// Module Name:    mux2_5 
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
module Mux2to1_5bit(
    input [4:0] Input0,
    input [4:0] Input1,
    input Sel,
    output [4:0] Output_Mux
    );

assign Output_Mux = Sel ? Input1 : Input0;

endmodule
