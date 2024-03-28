// logic_gates_tb.v
// This is a testbench for simulating all basic logic gates realized in logic_gates.v

`timescale 1ns / 1ps

module logic_gates_tb;

// Inputs
reg a;
reg b;

// Outputs
wire and_gate;
wire or_gate;
wire not_gate_a;
wire nand_gate;
wire nor_gate;
wire xor_gate;
wire xnor_gate;

// Instantiate the Unit Under Test (UUT)
logic_gates uut (
    .a(a), 
    .b(b), 
    .and_gate(and_gate), 
    .or_gate(or_gate),
    .not_gate_a(not_gate_a),
    .nand_gate(nand_gate),
    .nor_gate(nor_gate),
    .xor_gate(xor_gate),
    .xnor_gate(xnor_gate)
);

initial begin
    // Initialize Inputs
    a = 0; b = 0;

    // Wait 100 ns for global reset to finish
    #100;
        
    // Add stimulus here
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
end
      
endmodule
