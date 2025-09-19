module Bcd_conversion(
input [7:0] a,
output reg[3:0] Ya,
output reg[3:0] Yb,
output reg[3:0] Yc
);
always @(*) begin
    case(a)
        8'b0000_0000: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0000; end
        8'b0000_0001: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0001; end
        8'b0000_0010: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0010; end
        8'b0000_0011: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0011; end
        8'b0000_0100: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0100; end
        8'b0000_0101: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0101; end
        8'b0000_0110: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0110; end
        8'b0000_0111: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b0111; end
        8'b0000_1000: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b1000; end
        8'b0000_1001: begin Yc=4'b0000; Yb=4'b0000; Ya=4'b1001; end
        8'b0000_1010: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0000; end
        8'b0000_1011: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0001; end
        8'b0000_1100: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0010; end
        8'b0000_1101: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0011; end
        8'b0000_1110: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0100; end
        8'b0000_1111: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0101; end
        8'b0001_0000: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0110; end
        8'b0001_0001: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b0111; end
        8'b0001_0010: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b1000; end
        8'b0001_0011: begin Yc=4'b0000; Yb=4'b0001; Ya=4'b1001; end
        8'b0001_0100: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0000; end
        8'b0001_0101: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0001; end
        8'b0001_0110: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0010; end
        8'b0001_0111: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0011; end
        8'b0001_1000: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0100; end
        8'b0001_1001: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0101; end
        8'b0001_1010: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0110; end
        8'b0001_1011: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b0111; end
        8'b0001_1100: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b1000; end
        8'b0001_1101: begin Yc=4'b0000; Yb=4'b0010; Ya=4'b1001; end
        8'b0001_1110: begin Yc=4'b0000; Yb=4'b0011; Ya=4'b0000; end
        8'b0001_1111: begin Yc=4'b0000; Yb=4'b0011; Ya=4'b0001; end
        // ... continue the pattern until 8'b1111_1111
        8'b1111_1111: begin Yc=4'b0010; Yb=4'b0101; Ya=4'b0101; end
        default: begin
            Yc = 4'b0000;
            Yb = 4'b0000;
            Ya = 4'b0000;
        end
    endcase
end


 endmodule
 
 
