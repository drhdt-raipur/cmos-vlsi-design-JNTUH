// 8-to-3 Encoder without Priority
module encoder_8to3(input wire [7:0] in, output reg [2:0] out);
    always @(in) begin
        case (in)
            8'b00000001: out = 3'b000;
            8'b00000010: out = 3'b001;
            8'b00000100: out = 3'b010;
            8'b00001000: out = 3'b011;
            8'b00010000: out = 3'b100;
            8'b00100000: out = 3'b101;
            8'b01000000: out = 3'b110;
            8'b10000000: out = 3'b111;
            default: out = 3'bZZZ; // When multiple inputs are high
        endcase
    end
endmodule