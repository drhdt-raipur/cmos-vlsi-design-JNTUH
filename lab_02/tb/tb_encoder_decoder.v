// Testbench for 8-to-3 Encoder (without and with priority) and 2-to-4 Decoder
`timescale 1ns / 1ps
module tb_encoder_decoder;
    reg [7:0] in_encoder;
    reg [1:0] in_decoder;
    wire [2:0] out_encoder, out_encoder_priority;
    wire [3:0] out_decoder;

    // Instantiate the modules
    encoder_8to3 enc(in_encoder, out_encoder);
    encoder_8to3_priority enc_p(in_encoder, out_encoder_priority);
    decoder_2to4 dec(in_decoder, out_decoder);

    initial begin
        // Test cases for encoders and decoder
        in_encoder = 8'b00000001; in_decoder = 2'b00; #10;
        in_encoder = 8'b00001000; in_decoder = 2'b01; #10;
        in_encoder = 8'b10000000; in_decoder = 2'b10; #10;
        in_encoder = 8'b00010000; in_decoder = 2'b11; #10;
        in_encoder = 8'b00000011; in_decoder = 2'b00; #10;
        in_encoder = 8'b00001100; in_decoder = 2'b01; #10;
        in_encoder = 8'b10000001; in_decoder = 2'b10; #10;
        in_encoder = 8'b10010001; in_decoder = 2'b11; #10;
        // $finish;
    end
endmodule
