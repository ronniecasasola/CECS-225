`timescale 1ns / 1ps


module HalfAdder_Tester;

	//Inputs
	reg A;
	reg B;
	
	// Outputs
	wire Cout;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.A(A),
		.B(B),
		.Cout(Cout),
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
	//Test case 0
	A = 0;
	B = 0;
	#10; // wait 10 time units
	
	//Test case 1
	A = 0;
	B = 1;
	#10; // wait 10 time units
	
	//Test case 2
	A = 1;
	B = 0;
	#10; // wait 10 time units
	
	//Test case 3
	A = 1;
	B = 1;
	#10; // wait 10 time units
	
	$stop; // end the simulation
	
	end
      
		
	
		
		
endmodule

