`timescale 1ns / 1ps

module Main_Decoder_Tester;

	// Inputs
	reg [5:0] Opcode;

	// Outputs
	wire [1:0] ALUOp;
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire Branch;
	wire MemWrite;
	wire MemtoReg;

	// Instantiate the Unit Under Test (UUT)
	Main_Decoder uut (
		.Opcode(Opcode), 
		.ALUOp(ALUOp), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.Branch(Branch), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg)
	);

	initial begin
		
		//Test case 0
		Opcode = 6'b000000;
		#10;
		
		//Test case 1
		Opcode = 6'b100011;
		#10;
		
		//Test case 2
		Opcode = 6'b101011;
		#10;
		
		//Test case 3
		Opcode = 6'b000100;
		#10;
		
		//Test case 4
		Opcode = 6'b111111;
		#10;
		$stop;

	end
      
endmodule

