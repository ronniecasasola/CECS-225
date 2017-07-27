`timescale 1ns / 1ps

module regfile(
    input clk,				//clock signal
    input we3,				//write enable control signal
    input [4:0] ra1,		//read address 1, 2, and Write address
    input [4:0] ra2,		//32-bit write data
    input [4:0] wa3,		//32-bit read data
    input [31:0] wd3,
    output [31:0] rd1,
    output [31:0] rd2
    );

reg [31:0] rf[31:0];
// three ported register file
// read two ports combinationally
// write third port on failing edge of clk
// register 0 hardwired to 0


always @(negedge clk)
	if (we3) rf[wa3] <= wd3;
	
	assign rd1=(ra1 != 0) ? rf[ra1] : 0;
	assign rd2=(ra2 != 0) ? rf[ra2] : 0;

endmodule
