`timescale 1ns / 1ps


module ROM_Multiplier(
    input [1:0]a,
    input [1:0]b,
    output reg [3:0]prod
    );
    always @(*) begin
     prod=4'b0000;
     case({a,b})
            4'b0000: prod = 4'b0000; // 00 x 00
            4'b0001: prod = 4'b0000; // 00 x 01
            4'b0010: prod = 4'b0000; // 00 x 10
            4'b0011: prod = 4'b0000; // 00 x 11
            4'b0100: prod = 4'b0000; // 01 x 00
            4'b0101: prod = 4'b0001; // 01 x 01
            4'b0110: prod = 4'b0010; // 01 x 10
            4'b0111: prod = 4'b0011; // 01 x 11
            4'b1000: prod = 4'b0000; // 10 x 00
            4'b1001: prod = 4'b0010; // 10 x 01
            4'b1010: prod = 4'b0100; // 10 x 10
            4'b1011: prod = 4'b0110; // 10 x 11
            4'b1100: prod = 4'b0000; // 11 x 00
            4'b1101: prod = 4'b0011; // 11 x 01
            4'b1110: prod = 4'b0110; // 11 x 10
            4'b1111: prod = 4'b1001; // 11 x 11
            default: prod = 4'b0000; // default case
         endcase
    end
       
endmodule
