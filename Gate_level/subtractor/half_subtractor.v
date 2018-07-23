module half_subtractor(diff, borrow, in1, in2);
	output diff, borrow;
	input in1, in2;
	wire w1;
	xor (diff, in1, in2);
	not (w1, in1);
	and (borrow, w1, in2);

endmodule
