`timescale 1ns / 1ps

module ALU_Decoder( ALUOp, Funct, ALUControl );
    input [1:0] ALUOp;
    input [5:0] Funct;
    output [2:0] ALUControl;
    
	 
	 assign ALUControl[2] = ALUOp[0] | (ALUOp[1] & Funct[1]);
	 assign ALUControl[1] = !ALUOp[1] | (ALUOp[1] & (!Funct[2] & !Funct[0]));
	 assign ALUControl[0] = ALUOp[1] & ((Funct[0] & Funct[2])|(Funct[3] & Funct[1]));



endmodule
