module Comp_mul_2bit(
   input [1:0]a,
   input [1:0]b,
   input PB0,
   output [3:0] out
);

wire [2:0] comparison_out;
wire [3:0] multiplier_out;

ROM_Comp u1(
  .a(a),
  .b(b),
  .eq(comparison_out[0]),
  .gt(comparison_out[1]),
  .lt(comparison_out[2])
);

ROM_Multiplier u2(
   .a(a),
   .b(b),
   .prod(multiplier_out)
);

mux u3(
    .PB0(PB0),
	.comp_out(comparison_out),
	.prod_out(multiplier_out),
	.result(out)

);

endmodule