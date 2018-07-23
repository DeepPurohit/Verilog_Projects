module half_adder(sum, carry, in1, in2);
	output sum, carry;
	input in1, in2;
	
	xor (sum, in1, in2);
	and (carry, in1, in2);

endmodule
