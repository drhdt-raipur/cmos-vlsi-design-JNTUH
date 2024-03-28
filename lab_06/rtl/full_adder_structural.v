
// Full adder using structural modeling
module full_adder_structural(sum, carry_out, a, b, carry_in);
    input a, b, carry_in;
    output sum, carry_out;
    wire w1, w2, w3;
    xor (sum, a, b, carry_in);
    and (w1, a, b);
    and (w2, a, carry_in);
    and (w3, b, carry_in);
    or (carry_out, w1, w2, w3);
endmodule
