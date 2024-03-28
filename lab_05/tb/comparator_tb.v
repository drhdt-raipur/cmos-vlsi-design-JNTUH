
// Testbench for 4-Bit Comparator
`timescale 1ns / 1ps

module comparator_tb();

// Inputs
reg [3:0] a, b;

// Outputs
wire gt, lt, eq;

// Instantiate the Unit Under Test (UUT)
comparator uut (
    .a(a), 
    .b(b), 
    .gt(gt), 
    .lt(lt), 
    .eq(eq)
);

initial begin
    // Initialize Inputs
    a = 0; b = 0;

    // Wait 100 ns for global reset to finish
    #10;
        
    // Add stimulus here
    a = 4'b0101; b = 4'b0011; #10; // a > b
    a = 4'b0010; b = 4'b0110; #10; // a < b
    a = 4'b1010; b = 4'b1010; #10; // a == b
    
end
      
endmodule
