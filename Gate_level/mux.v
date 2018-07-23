module mux(out, in1, in2, sel);
	output out;
	input in1, in2, sel;
	
	wire w1, w2, w3;
	not (w1, sel);
	and p1(w2, in1, w1);
	and p2(w3, in2, sel);
	or (out, w2, w3);	

endmodule
