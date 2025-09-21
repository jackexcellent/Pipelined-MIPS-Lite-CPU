module tb_Multiplier();
    // Inputs
    reg clk;
    reg reset;
    reg Multu;
    reg [31:0] dataA;
    reg [31:0] dataB;

    // Outputs
    wire [63:0] dataOut;

    // Instantiate the Multiplier module
    Multiplier uut (
        .clk(clk),
        .reset(reset),
        .Multu(Multu),
        .dataA(dataA),
        .dataB(dataB),
        .dataOut(dataOut)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period, 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize Inputs
        reset = 1;
        Multu = 0;
        dataA = 0;
        dataB = 0;
        #10;
        
        // Apply reset
        reset = 1;
        #10;
        reset = 0;
        #10;

        // Test Case 1
        dataA = 32'd15;
        dataB = 32'd10;
        Multu = 1;
        #330; // Wait for the multiplication to complete
        Multu = 0;

        // Display result
        $display("Test Case 1: %d * %d = %d", dataA, dataB, dataOut);

        // Test Case 2
        dataA = 32'd20;
        dataB = 32'd30;
        Multu = 1;
        #330; // Wait for the multiplication to complete
        Multu = 0;

        // Display result
        $display("Test Case 2: %d * %d = %d", dataA, dataB, dataOut);

        // Test Case 3
        dataA = 32'hFFFFFFFF; // -1 in 32-bit signed
        dataB = 32'd2;
        Multu = 1;
        #330; // Wait for the multiplication to complete
        Multu = 0;

        // Display result
        $display("Test Case 3: %d * %d = %d", dataA, dataB, dataOut);

        // Test Case 4
        dataA = 32'd1000;
        dataB = 32'd1000;
        Multu = 1;
        #330; // Wait for the multiplication to complete
        Multu = 0;

        // Display result
        $display("Test Case 4: %d * %d = %d", dataA, dataB, dataOut);

        // Finish simulation
        $stop;
    end
endmodule