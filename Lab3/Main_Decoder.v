`timescale 1ns / 1ps

module Main_Decoder(
    input [5:0] Opcode,
    output [1:0] ALUOp,
    output RegWrite,
    output RegDst,
    output ALUSrc,
    output Branch,
    output MemWrite,
    output MemtoReg
    );
	 
	 wire R_Format, lw, sw, beq;
	 
	 assign R_Format = (~Opcode[5] & ~Opcode[4] & ~Opcode[3] & ~Opcode[2] & ~Opcode[1] & ~Opcode[0]);
	assign lw = (Opcode[5] & ~Opcode[4] & ~Opcode[3] & ~Opcode[2] & Opcode[1] & Opcode[0]);
	assign sw = (Opcode[5]& ~Opcode[4] & Opcode[3] & ~Opcode[2] & Opcode[1] & Opcode[0]);
	assign beq = (~Opcode[5] & ~Opcode[4] & ~Opcode[3] & Opcode[2] & ~Opcode[1] & ~Opcode[0] );

	assign RegWrite = R_Format | lw;
	assign RegDst =  R_Format;
	assign ALUSrc = lw | sw;
	assign Branch = beq;
	assign MemWrite = sw;
	assign MemtoReg = lw;
	assign ALU0p[1] = R_Format;
	assign ALU0p[0] = beq;
	
endmodule