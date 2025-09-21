
module Multiplier2( clk, dataA, dataB, Multu, dataOut, reset );
    input clk ;
    input reset ;
    input Multu;
    input [31:0] dataA ;
    input [31:0] dataB ;
    output reg[63:0] dataOut ;

    reg [63:0] product, temp; 
    reg [31:0] multiplicand, multiplier, LHPROD, RHPROD;   
    reg [5:0]  count ;
    
    // parameter MUL = 6'b011001;
    // parameter OUT = 6'b111111;

    always@( dataA or dataB )
    begin
        multiplier = dataB ;
        multiplicand = dataA ;
    end

    always@( Multu )
    begin
        if ( Multu == 1'b1 )
        begin
            count = 0 ;
        end
    /*
    如果訊號改變成乘法 就把counter歸0
    */
    end 

    always@( posedge clk or posedge reset )
    begin
      
        $display( "multiplier: %b,  multiplicand: %b", multiplier, multiplicand);
        if ( reset )
        begin
            product = { 64'b0 } ;
            dataOut = { 64'b0 } ;
            LHPROD  = { 32'b0 } ;
            RHPROD  = { 32'b0 } ;
            count   = { 6'b0 } ;
        end
        else if(Multu)    // when MULTU signal trigered
        begin
            count = count + 1 ;
            if ( count <= 32 && Multu == 1'b1)
            begin
                // if multiplier[0] is 1, then product need to plus multiplicand at the moment 
                    if ( multiplier[0] == 1'b1 ) 
                    begin
                        LHPROD = product[63:32] + multiplicand ;
                        RHPROD = product[31:0];
                        product = { LHPROD, RHPROD };
  
                    end
                    product = product >> 1 ;
                    multiplier = multiplier >> 1 ;
                    dataOut <= product;    
            end
        end
    dataOut <= product;
    $display( "product: %b", dataOut );
    
    end

endmodule

