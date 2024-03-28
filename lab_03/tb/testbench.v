// Testbench for 8-to-1 multiplexer and 1-to-8 demultiplexer
`timescale 1ns / 1ps
module testbench;

// Test signals
reg [7:0] in;
reg [2:0] sel;
wire out_mux;
wire [7:0] out_demux;

// Instantiate the Unit Under Test (UUT)
mux_8to1 uut_mux(
    .in(in),
    .sel(sel),
    .out(out_mux)
);

demux_1to8 uut_demux(
    .in(out_mux),
    .sel(sel),
    .out(out_demux)
);

initial begin
    // Initialize Inputs
    in = 8'b10101010;
    sel = 0;

    // Wait 10 ns for global reset to finish
    #10;
      
    // Add stimulus here
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
end

endmodule