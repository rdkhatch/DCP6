//
//								add32s.v - 36-bit adder
//
//					(C) Copyright 2004-2010 John B. Stephensen
//
// This Verilog source file and all its derivatives are licensed only for
// personal non-profit educational use in the Amateur Radio Service and
// the license is not transferrable. The information is provided as-is for
// experimental purposes and the author does not warranty its freedom
// from defects or its suitability for any specific application.
//
// Infer 32-bit adder with carry in and out instead of instantiating for Spartan-6.
// 32 LUTs and 33 registers used.
//
module add32s(
    input [31:0] A,
    input [31:0] B,
    input CI,
    output CO,
    output [31:0] Q,
    input CLK,
	 input CE,
	 input SCLR
    );
// internal signals
reg [32:0] s;	// includes carry
// adder with carry input and output
always @ (posedge CLK)
	if (SCLR) s <= 0;
	else if (CE) s <= A + B + CI;
// connect outputs
assign Q = s[31:0];
assign CO = s[32];
endmodule
