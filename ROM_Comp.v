module ROM_Comp(
input [1:0] a,
input [1:0] b,
output reg eq,
output reg gt,
output reg lt
);

always @(*) begin
   eq = 1'b0;
   gt = 1'b0;
   lt = 1'b0;
  case({a,b})  
        4'b0000: eq = 1'b1;
        4'b0101: eq = 1'b1;
        4'b1010: eq = 1'b1;
        4'b1111: eq = 1'b1;

        // a > b cases
        4'b0100: gt = 1'b1; // A=1, B=0
        4'b1000: gt = 1'b1; // A=2, B=0
        4'b1001: gt = 1'b1; // A=2, B=1
        4'b1100: gt = 1'b1; // A=3, B=0
        4'b1101: gt = 1'b1; // A=3, B=1
        4'b1110: gt = 1'b1; // A=3, B=2

        // a < b cases
        4'b0001: lt = 1'b1; // A=0, B=1
        4'b0010: lt = 1'b1; // A=0, B=2
        4'b0011: lt = 1'b1; // A=0, B=3
        4'b0110: lt = 1'b1; // A=1, B=2
        4'b0111: lt = 1'b1; // A=1, B=3
        4'b1011: lt = 1'b1; // A=2, B=3
		default : begin
		  eq=1'b0;
		  gt=1'b0;
		  lt=1'b0;
		end
	endcase
	
  end
 endmodule
	