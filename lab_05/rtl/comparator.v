
// 4-Bit Comparator Design
module comparator(
    input [3:0] a, b,
    output reg gt, lt, eq
);

// Compare logic
always @(a or b) begin
    if (a > b) begin
        gt = 1; lt = 0; eq = 0;
    end else if (a < b) begin
        gt = 0; lt = 1; eq = 0;
    end else begin
        gt = 0; lt = 0; eq = 1;
    end
end

endmodule
