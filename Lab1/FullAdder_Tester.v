`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:41 08/23/2016
// Design Name:   FullAdder
// Module Name:   C:/Users/012737398/New folder/FullAdder_Tester.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullAdder_Tester;

	// Inputs
	reg FA_A;
	reg FA_B;
	reg Cin;

	// Outputs
	wire FA_S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.FA_A(FA_A), 
		.FA_B(FA_B), 
		.Cin(Cin), 
		.FA_S(FA_S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		FA_A = 0;
		FA_B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
	//Test case 0
	FA_A = 0;
	FA_B = 0;
	Cin = 0;
	#10; // wait 10 time units
	
	//Test case 1
	FA_A = 0;
	FA_B = 1;
	Cin = 0;
	#10; // wait 10 time units
	
	//Test case 2
	FA_A = 1;
	FA_B = 0;
	Cin = 0;
	#10; // wait 10 time units
	
	//Test case 3
	FA_A = 1;
	FA_B = 1;
	Cin = 0;
	#10; // wait 10 time units
	
	//Test case 4
	FA_A = 0;
	FA_B = 0;
	Cin = 1;
	#10; // wait 10 time units
	
	//Test case 5
	FA_A = 0;
	FA_B = 1;
	Cin = 1;
	#10; // wait 10 time units
	
	//Test case 6
	FA_A = 1;
	FA_B = 0;
	Cin = 1;
	#10; // wait 10 time units
	
	//Test case 7
	FA_A = 1;
	FA_B = 1;
	Cin = 1;
	#10; // wait 10 time units
	
	$stop; // end the simulation
	
	end
      
endmodule

