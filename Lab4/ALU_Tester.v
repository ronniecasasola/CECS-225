`timescale 1ns / 1ps


module ALU_Tester;

	// Inputs
	reg [2:0] ALUControl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Result;
	wire Zero_Flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUControl(ALUControl), 
		.A(A), 
		.B(B), 
		.Result(Result), 
		.Zero_Flag(Zero_Flag)
	);

	initial begin
		//TestCase0 - check the AND operation
		// AND(A,B): Result = A and B; Zero_Flag = 0;
		ALUControl = 0;
		A = 32'h12737398;
		B = 32'h12737398+1;
		#10;
		//TestCase1 - check the OR operation
		// AND(A,B): Result = A or B; Zero_Flag = 0;
		ALUControl = 1;
		A = 32'h12737398;
		B = 32'h12737398+1;
		#10;
		//TestCase2 - check the ADD operation
		// AND(A,B): Result = A + B; Zero_Flag = 0;
		ALUControl = 0;
		A = 32'h12737398;
		B = 32'h12737398+1;
		#10;
		//TestCase3 - check the SUB operation
		// AND(A,B): Result = A - B; Zero_Flag = 1;
		ALUControl = 1;
		A = 32'h12737398;
		B = 32'h12737398+1;
		#10;
		//TestCase4 - check the SLT operation
		// AND(A,B): Result = A < B; Zero_Flag = 1;
		ALUControl = 1;
		A = 32'h12737398;
		B = 32'h12737398+1;
		#10;
		//TestCase5 - check the SLT operation
		// AND(A,B): Result = A < B; Zero_Flag = 1;
		ALUControl = 7;
		A = 32'h12737398+1;
		B = 32'h12737398;
		#10;
		$stop;

	end
      
endmodule

