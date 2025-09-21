module ALU( dataOut, dataA, dataB, Signal, shamt) ;

    input  wire[31:0] dataA,  dataB ;
    input  wire[2:0]  Signal ;
    input  [4:0]  shamt ;
    output wire[31:0] dataOut ;

    wire[31:0] temp, c_out, sll_ans ;
    wire Carry_Out ;
    wire Invert ;
    // wire [1:0] Signal ;
    // assign Signal = control[1:0];
    // assign Invert = control[2];

    parameter SUB = 3'b110;
    parameter SLT = 3'b111;
    assign Invert = ( Signal == SUB || Signal == SLT ) ? 1'b1 : 1'b0 ;
    
    assign c_out[0] = Invert ;

    ALU_Bit_Slice  ALU0 (.dataOut(temp[0]), .cout(c_out[1]), .dataA(dataA[0]), .dataB(dataB[0]), .Invert(Invert), .cin(c_out[0]), .Signal(Signal));

    ALU_Bit_Slice  ALU1 (.dataOut(temp[1]), .cout(c_out[2]), .dataA(dataA[1]), .dataB(dataB[1]), .Invert(Invert), .cin(c_out[1]), .Signal(Signal));

    ALU_Bit_Slice  ALU2 (.dataOut(temp[2]), .cout(c_out[3]), .dataA(dataA[2]), .dataB(dataB[2]), .Invert(Invert), .cin(c_out[2]), .Signal(Signal));

    ALU_Bit_Slice  ALU3 (.dataOut(temp[3]), .cout(c_out[4]), .dataA(dataA[3]), .dataB(dataB[3]), .Invert(Invert), .cin(c_out[3]), .Signal(Signal));

    ALU_Bit_Slice  ALU4 (.dataOut(temp[4]), .cout(c_out[5]), .dataA(dataA[4]), .dataB(dataB[4]), .Invert(Invert), .cin(c_out[4]), .Signal(Signal));

    ALU_Bit_Slice  ALU5 (.dataOut(temp[5]), .cout(c_out[6]), .dataA(dataA[5]), .dataB(dataB[5]), .Invert(Invert), .cin(c_out[5]), .Signal(Signal));

    ALU_Bit_Slice  ALU6 (.dataOut(temp[6]), .cout(c_out[7]), .dataA(dataA[6]), .dataB(dataB[6]), .Invert(Invert), .cin(c_out[6]), .Signal(Signal));

    ALU_Bit_Slice  ALU7 (.dataOut(temp[7]), .cout(c_out[8]), .dataA(dataA[7]), .dataB(dataB[7]), .Invert(Invert), .cin(c_out[7]), .Signal(Signal));

    ALU_Bit_Slice  ALU8 (.dataOut(temp[8]), .cout(c_out[9]), .dataA(dataA[8]), .dataB(dataB[8]), .Invert(Invert), .cin(c_out[8]), .Signal(Signal));

    ALU_Bit_Slice  ALU9 (.dataOut(temp[9]), .cout(c_out[10]), .dataA(dataA[9]), .dataB(dataB[9]), .Invert(Invert), .cin(c_out[9]), .Signal(Signal));

    ALU_Bit_Slice  ALU10 (.dataOut(temp[10]), .cout(c_out[11]), .dataA(dataA[10]), .dataB(dataB[10]), .Invert(Invert), .cin(c_out[10]), .Signal(Signal));

    ALU_Bit_Slice  ALU11 (.dataOut(temp[11]), .cout(c_out[12]), .dataA(dataA[11]), .dataB(dataB[11]), .Invert(Invert), .cin(c_out[11]), .Signal(Signal));

    ALU_Bit_Slice  ALU12 (.dataOut(temp[12]), .cout(c_out[13]), .dataA(dataA[12]), .dataB(dataB[12]), .Invert(Invert), .cin(c_out[12]), .Signal(Signal));

    ALU_Bit_Slice  ALU13 (.dataOut(temp[13]), .cout(c_out[14]), .dataA(dataA[13]), .dataB(dataB[13]), .Invert(Invert), .cin(c_out[13]), .Signal(Signal));

    ALU_Bit_Slice  ALU14 (.dataOut(temp[14]), .cout(c_out[15]), .dataA(dataA[14]), .dataB(dataB[14]), .Invert(Invert), .cin(c_out[14]), .Signal(Signal));

    ALU_Bit_Slice  ALU15 (.dataOut(temp[15]), .cout(c_out[16]), .dataA(dataA[15]), .dataB(dataB[15]), .Invert(Invert), .cin(c_out[15]), .Signal(Signal));

    ALU_Bit_Slice  ALU16 (.dataOut(temp[16]), .cout(c_out[17]), .dataA(dataA[16]), .dataB(dataB[16]), .Invert(Invert), .cin(c_out[16]), .Signal(Signal));

    ALU_Bit_Slice  ALU17 (.dataOut(temp[17]), .cout(c_out[18]), .dataA(dataA[17]), .dataB(dataB[17]), .Invert(Invert), .cin(c_out[17]), .Signal(Signal));

    ALU_Bit_Slice  ALU18 (.dataOut(temp[18]), .cout(c_out[19]), .dataA(dataA[18]), .dataB(dataB[18]), .Invert(Invert), .cin(c_out[18]), .Signal(Signal));

    ALU_Bit_Slice  ALU19 (.dataOut(temp[19]), .cout(c_out[20]), .dataA(dataA[19]), .dataB(dataB[19]), .Invert(Invert), .cin(c_out[19]), .Signal(Signal));

    ALU_Bit_Slice  ALU20 (.dataOut(temp[20]), .cout(c_out[21]), .dataA(dataA[20]), .dataB(dataB[20]), .Invert(Invert), .cin(c_out[20]), .Signal(Signal));

    ALU_Bit_Slice  ALU21 (.dataOut(temp[21]), .cout(c_out[22]), .dataA(dataA[21]), .dataB(dataB[21]), .Invert(Invert), .cin(c_out[21]), .Signal(Signal));

    ALU_Bit_Slice  ALU22 (.dataOut(temp[22]), .cout(c_out[23]), .dataA(dataA[22]), .dataB(dataB[22]), .Invert(Invert), .cin(c_out[22]), .Signal(Signal));

    ALU_Bit_Slice  ALU23 (.dataOut(temp[23]), .cout(c_out[24]), .dataA(dataA[23]), .dataB(dataB[23]), .Invert(Invert), .cin(c_out[23]), .Signal(Signal));

    ALU_Bit_Slice  ALU24 (.dataOut(temp[24]), .cout(c_out[25]), .dataA(dataA[24]), .dataB(dataB[24]), .Invert(Invert), .cin(c_out[24]), .Signal(Signal));

    ALU_Bit_Slice  ALU25 (.dataOut(temp[25]), .cout(c_out[26]), .dataA(dataA[25]), .dataB(dataB[25]), .Invert(Invert), .cin(c_out[25]), .Signal(Signal));

    ALU_Bit_Slice  ALU26 (.dataOut(temp[26]), .cout(c_out[27]), .dataA(dataA[26]), .dataB(dataB[26]), .Invert(Invert), .cin(c_out[26]), .Signal(Signal));

    ALU_Bit_Slice  ALU27 (.dataOut(temp[27]), .cout(c_out[28]), .dataA(dataA[27]), .dataB(dataB[27]), .Invert(Invert), .cin(c_out[27]), .Signal(Signal));

    ALU_Bit_Slice  ALU28 (.dataOut(temp[28]), .cout(c_out[29]), .dataA(dataA[28]), .dataB(dataB[28]), .Invert(Invert), .cin(c_out[28]), .Signal(Signal));

    ALU_Bit_Slice  ALU29 (.dataOut(temp[29]), .cout(c_out[30]), .dataA(dataA[29]), .dataB(dataB[29]), .Invert(Invert), .cin(c_out[29]), .Signal(Signal));

    ALU_Bit_Slice  ALU30 (.dataOut(temp[30]), .cout(c_out[31]), .dataA(dataA[30]), .dataB(dataB[30]), .Invert(Invert), .cin(c_out[30]), .Signal(Signal));

    ALU_Bit_Slice  ALU31 (.dataOut(temp[31]), .cout(Carry_out), .dataA(dataA[31]), .dataB(dataB[31]), .Invert(Invert), .cin(c_out[31]), .Signal(Signal));

    barrel_shifter_32bit shifter (.inA(dataB), .inB(shamt), .out(sll_ans) );
    
    assign result = (Signal == 3'b011)? sll_ans : temp ;

    assign dataOut = temp ;
    
endmodule