`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:11 10/04/2016 
// Design Name: 
// Module Name:    Mux8to1_32bit 
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
module Mux8to1_32bit(
    input [2:0] Sel,
    input [31:0] In0,
    input [31:0] In1,
    input [31:0] In2,
    input [31:0] In3,
    input [31:0] In4,
    input [31:0] In5,
    input [31:0] In6,
    input [31:0] In7,
    output reg [31:0] Out
    );

always@(*)
begin
	case(	Sel	)
	3'b000	:	Out	=	In0;
	3'b001	:	Out	=	In1;
	3'b010	:	Out	=	In2;
	3'b011	:	Out	=	In3;
	3'b100	:	Out	=	In4;
	3'b101	:	Out	=	In5;
	3'b110	:	Out	=	In6;
	3'b111	:	Out	=	In7;
	default	:	Out	=	32'bX;
	endcase
end

endmodule
