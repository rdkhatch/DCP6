//
//								4 x 9-bit Multiplexer
//
//					(C) Copyright 2004-2008 John B. Stephensen
//
// This Verilog source file and all its derivatives are licensed only for
// personal non-profit educational use in the Amateur Radio Service and
// the license is not transferrable. The information is provided as-is for
// experimental purposes and the author does not warranty its freedom
// from defects or its suitability for any specific application.
//
module MUX4X9(D0, D1, D2, D3, S, Y);
    input [8:0] D0,D1,D2,D3;	// input ports
    input [1:0] S;				// select input
    output [8:0] Y;				// output port
// 16 copies of MUX4
MUX4 mux0 (.D({D3[0],D2[0],D1[0],D0[0]}), .S(S), .Y(Y[0]));
MUX4 mux1 (.D({D3[1],D2[1],D1[1],D0[1]}), .S(S), .Y(Y[1]));
MUX4 mux2 (.D({D3[2],D2[2],D1[2],D0[2]}), .S(S), .Y(Y[2]));
MUX4 mux3 (.D({D3[3],D2[3],D1[3],D0[3]}), .S(S), .Y(Y[3]));
MUX4 mux4 (.D({D3[4],D2[4],D1[4],D0[4]}), .S(S), .Y(Y[4]));
MUX4 mux5 (.D({D3[5],D2[5],D1[5],D0[5]}), .S(S), .Y(Y[5]));
MUX4 mux6 (.D({D3[6],D2[6],D1[6],D0[6]}), .S(S), .Y(Y[6]));
MUX4 mux7 (.D({D3[7],D2[7],D1[7],D0[7]}), .S(S), .Y(Y[7]));
MUX4 mux8 (.D({D3[8],D2[8],D1[8],D0[8]}), .S(S), .Y(Y[8]));
endmodule
