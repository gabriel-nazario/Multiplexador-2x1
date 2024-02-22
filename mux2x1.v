module mux2x1 #(parameter N=8)
(input [N-1:0]in0,in1,
input sel,
output reg[N-1:0] out);

always @(*)
	case(sel)
		1'h0 : out = in0;
		1'h1 : out = in1;
		default : out = 0;
	endcase

endmodule