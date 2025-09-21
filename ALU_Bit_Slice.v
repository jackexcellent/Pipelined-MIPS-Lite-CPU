module ALU_Bit_Slice( dataOut, cout, dataA, dataB, Invert, cin, Signal ) ;

    input dataA, dataB, Invert, cin ;
    input[2:0] Signal ;
    output dataOut, cout ;

    wire and_result, or_result, FA_out, invertB, dataOut, cout ;  
    wire less_out ;
    
    parameter AND = 3'b000 ;
	parameter OR = 3'b001 ;
	parameter ADD = 3'b010 ;
	parameter SUB = 3'b110 ;
	parameter SLT = 3'b111 ;

    //and
    and( and_result, dataA, dataB ) ;
    
    //or
    or( or_result, dataA, dataB ) ;
    
    //add or sub
    xor( invertB, Invert, dataB ) ;  

    //slt
    assign less_out = (dataA < dataB) ? 1 : 0;
      
    FullAdder FA(.a( dataA ), .b( invertB ), .cin( cin ), .sum( FA_out ), .cout( cout )) ;
            
    
    // parameter AND = 6'b100100;
    // parameter OR  = 6'b100101;
    // parameter ADD = 6'b100000;
    // parameter SUB = 6'b100010;
    // parameter SLT = 6'b101010;

    
    assign dataOut = (Signal == AND) ? and_result :
                     (Signal == OR)  ? or_result :
                     (Signal == ADD) ? FA_out :
                     (Signal == SUB) ? FA_out :
                     (Signal == SLT) ? less_out : 0; 
    

endmodule