// Testbench for 4-bit Binary to Gray Code Converter
`timescale 1ns / 1ps

module tb_binary_to_gray;

// Inputs
reg [3:0] binary_in;

// Outputs
wire [3:0] gray_out;

// Instantiate the Unit Under Test (UUT)
binary_to_gray uut (
    .binary_in(binary_in), 
    .gray_out(gray_out)
);

initial begin
    // Initialize Inputs
    binary_in = 0;
    
    // Wait 100 ns for global reset to finish
    #10;
        
    // Add stimulus here
    binary_in = 4'b0000;
    #10 binary_in = 4'b0001;
    #10 binary_in = 4'b0010;
    #10 binary_in = 4'b0011;
    #10 binary_in = 4'b0100;
    #10 binary_in = 4'b0101;
    #10 binary_in = 4'b0110;
    #10 binary_in = 4'b0111;
    #10 binary_in = 4'b1000;
    #10 binary_in = 4'b1001;
    #10 binary_in = 4'b1010;
    #10 binary_in = 4'b1011;
    #10 binary_in = 4'b1100;
    #10 binary_in = 4'b1101;
    #10 binary_in = 4'b1110;
    #10 binary_in = 4'b1111;
    #10;
    
    // Complete the simulation
    // $finish;
end

endmodule