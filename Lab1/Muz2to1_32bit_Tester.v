`timescale 1ns / 1ps

module Muz2to1_32bit_Tester;

	// Inputs
	reg [31:0] Input0;
	reg [31:0] Input1;
	reg Sel;

	// Outputs
	wire [31:0] Output_Mux;

	// Instantiate the Unit Under Test (UUT)
	Mux2to1_32bit uut (
		.Input0(Input0), 
		.Input1(Input1), 
		.Sel(Sel), 
		.Output_Mux(Output_Mux)
	);

	initial begin
		// Test case 0
		Input0 = 32'h12345678;
		Input1 = 32'hFEDCBA98;
		Sel = 1'b0;
		#10;
		
		// Test case 1
		Input0 = 32'h12345678;
		Input1 = 32'hFEDCBA98;
		Sel = 1'b1;
		#10;
		
		// Test case 2
		Input0 = 32'h00000000;
		Input1 = 32'h11111111;
		Sel = 1'b0;
		#10;
		
		// Test case 3
		Input0 = 32'h00000000;
		Input1 = 32'h11111111;
		Sel = 1'b1;
		#10;
		
		// Test case 4
		Input0 = 32'h12345678;
		Input1 = 32'hFEDCBA98;
		Sel = 1'bX;
		#10;
		$stop;
		
	end
      
endmodule

