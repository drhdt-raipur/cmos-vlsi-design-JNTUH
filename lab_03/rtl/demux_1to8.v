// 1-to-8 demultiplexer using verilog
module demux_1to8(
    input wire in, // Input line
    input wire [2:0] sel, // Select lines
    output wire [7:0] out // Output lines
);

// Demux logic
assign out = (sel == 3'b000) ? {7'b0000000, in} :
             (sel == 3'b001) ? {6'b000000, in, 1'b0} :
             (sel == 3'b010) ? {5'b00000, in, 2'b00} :
             (sel == 3'b011) ? {4'b0000, in, 3'b000} :
             (sel == 3'b100) ? {3'b000, in, 4'b0000} :
             (sel == 3'b101) ? {2'b00, in, 5'b00000} :
             (sel == 3'b110) ? {1'b0, in, 6'b000000} :
                               {in, 7'b0000000};

endmodule