module Binary_to_BCD(
input [7:0] a,
input [1:0] sel,
output [3:0] led_0,
output[3:0] led_1,
output[3:0] led_2,
output [3:0] led_3
);
wire [3:0]BCD_Y1;
wire [3:0] BCD_Y2;
wire [3:0] BCD_Y3;

//connection
Bcd_conversion u1(
.a(a),
.Ya(BCD_Y1),
.Yb(BCD_Y2),
.Yc(BCD_Y3)
);

mux_sel_BCD u2(
.a(BCD_Y1),
.b(BCD_Y2),
.c(BCD_Y3),
.sel(sel),
.Y1(led_0),
.Y2(led_1),
.Y3(led_2),
.Y4(led_3)
);
endmodule