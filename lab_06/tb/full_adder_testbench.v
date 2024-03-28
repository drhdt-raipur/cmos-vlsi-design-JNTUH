
`timescale 1ns / 1ps
module full_adder_testbench;
    reg a, b, carry_in;
    wire sum, carry_out;
    full_adder_dataflow fa(.a(a), .b(b), .carry_in(carry_in), .sum(sum), .carry_out(carry_out));
    initial begin
        $monitor("Time = %t, a = %b, b = %b, carry_in = %b, sum = %b, carry_out = %b", $time, a, b, carry_in, sum, carry_out);
        a = 0; b = 0; carry_in = 0; #10;
        a = 0; b = 1; carry_in = 0; #10;
        a = 1; b = 0; carry_in = 0; #10;
        a = 1; b = 1; carry_in = 0; #10;
        a = 0; b = 0; carry_in = 1; #10;
        a = 0; b = 1; carry_in = 1; #10;
        a = 1; b = 0; carry_in = 1; #10;
        a = 1; b = 1; carry_in = 1; #10;
        $finish;
    end
endmodule
