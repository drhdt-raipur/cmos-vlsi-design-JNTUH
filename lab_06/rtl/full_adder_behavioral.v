
// Full adder using behavioral modeling
module full_adder_behavioral(sum, carry_out, a, b, carry_in);
    input a, b, carry_in;
    output reg sum, carry_out;
    always @ (a or b or carry_in) begin
        sum = a ^ b ^ carry_in;
        carry_out = (a & b) | (b & carry_in) | (carry_in & a);
    end
endmodule
