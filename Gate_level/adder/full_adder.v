module full(sum, carry, in1, in2, carry_in);
	output sum, carry;
	input in1, in2, carry_in;
	wire w1, w2, w3;
	
	half_adder ha1(sum, w3, carry_in, w1);
	half_adder ha2(w1, w2, in1, in2);
	
	or (carry, w2, w3);

endmodule
