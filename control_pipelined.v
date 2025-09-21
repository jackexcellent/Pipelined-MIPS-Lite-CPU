/*
	Title: MIPS Single-Cycle Control Unit
	
	Input Port
		1. opcode: 輸入的指令代號，據此產生對應的控制訊號
	Input Port
		1. RegDst: 控制RFMUX
		2. ALUSrc: 控制ALUMUX
		3. MemtoReg: 控制WRMUX
		4. RegWrite: 控制暫存器是否可寫入
		5. MemRead:  控制記憶體是否可讀出
		6. MemWrite: 控制記憶體是否可寫入
		7. Branch: 與ALU輸出的zero訊號做AND運算控制PCMUX
		8. ALUOp: 輸出至ALU Control
*/
module control_pipelined( opcode, funct, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, JumpR, ALUOp, ExtendSel);
    input[5:0] opcode, funct;
    output RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, JumpR, ExtendSel;
    output[1:0] ALUOp;
    reg RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, JumpR, ExtendSel;
    reg[1:0] ALUOp;

    parameter R_FORMAT = 6'd0;
    parameter ANDI = 6'd12;
    parameter LW = 6'd35;
    parameter SW = 6'd43;
    parameter BEQ = 6'd4;
    parameter J = 6'd2;
    
	parameter JR = 6'd8;
	parameter MULTU = 6'd25;
	//parameter ADDIU = 6'd9;
    //parameter BNE = 6'd5;

    always @( opcode ) begin
        case ( opcode )
			R_FORMAT : 
			begin
				if(funct == JR)begin
					RegDst = 1'bx; ALUSrc = 1'bx; MemtoReg = 1'bx; RegWrite = 1'b0; MemRead = 1'b0; 
					MemWrite = 1'b0; Branch = 1'b0; Jump = 1'b0; JumpR = 1'b1; ALUOp = 2'bxx; ExtendSel = 1'b0;
				end
				else begin
					RegDst = 1'b1; ALUSrc = 1'b0; MemtoReg = 1'b0; RegWrite = 1'b1; MemRead = 1'b0; 
					MemWrite = 1'b0; Branch = 1'b0; Jump = 1'b0; JumpR = 1'b0; ALUOp = 2'b10; ExtendSel = 1'b0;
				end
			end
			ANDI :
			begin
				RegDst = 1'b1; ALUSrc = 1'b1; MemtoReg = 1'b0; RegWrite = 1'b1; MemRead = 1'b0; 
				MemWrite = 1'b0; Branch = 1'b0; Jump = 1'b0; JumpR = 1'b0; ALUOp = 2'b00; ExtendSel = 1'b1;
			end
			LW :
			begin
				RegDst = 1'b0; ALUSrc = 1'b1; MemtoReg = 1'b1; RegWrite = 1'b1; MemRead = 1'b1; 
				MemWrite = 1'b0; Branch = 1'b0; Jump = 1'b0; JumpR = 1'b0; ALUOp = 2'b00; ExtendSel = 1'b1;
			end
			SW :
			begin
				RegDst = 1'bx; ALUSrc = 1'b1; MemtoReg = 1'bx; RegWrite = 1'b0; MemRead = 1'b0; 
				MemWrite = 1'b1; Branch = 1'b0; Jump = 1'b0; JumpR = 1'b0; ALUOp = 2'b00; ExtendSel = 1'b1;
			end
			BEQ :
			begin
				RegDst = 1'bx; ALUSrc = 1'b0; MemtoReg = 1'bx; RegWrite = 1'b0; MemRead = 1'b0; 
				MemWrite = 1'b0; Branch = 1'b1; Jump = 1'b0; JumpR = 1'b0; ALUOp = 2'b01; ExtendSel = 1'b1;
			end
			J :
			begin
				RegDst = 1'bx; ALUSrc = 1'b0; MemtoReg = 1'bx; RegWrite = 1'b0; MemRead = 1'b0; 
				MemWrite = 1'b0; Branch = 1'b1; Jump = 1'b1; JumpR = 1'b0; ALUOp = 2'b01; ExtendSel = 1'b1;
			end
			default
			begin
				$display("control_single unimplemented opcode %d(%b)", opcode, opcode);
				RegDst=1'bx; ALUSrc=1'bx; MemtoReg=1'bx; RegWrite=1'bx; MemRead=1'bx; 
				MemWrite=1'bx; Branch=1'bx; Jump = 1'bx; JumpR = 1'bx; ALUOp = 2'bxx;
			end
        endcase
    end
endmodule

