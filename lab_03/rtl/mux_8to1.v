// 8-to-1 multiplexer using verilog
module mux_8to1(
    input wire [7:0] in, // Input lines
    input wire [2:0] sel, // Select lines
    output wire out // Output line
);

// Mux logic
assign out = (sel == 3'b000) ? in[0] :
             (sel == 3'b001) ? in[1] :
             (sel == 3'b010) ? in[2] :
             (sel == 3'b011) ? in[3] :
             (sel == 3'b100) ? in[4] :
             (sel == 3'b101) ? in[5] :
             (sel == 3'b110) ? in[6] :
                               in[7];

endmodule