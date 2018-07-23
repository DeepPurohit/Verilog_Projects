module full_subtractor(diff, borrow_out, borrow_in, in1, in2);
	
	output diff, borrow_out;
	input in1, in2, in3;
	
	wire w1, w2, w3;
	
	half_subtractor hs1(diff, w3, in1, w1);
	half_subtractor hs2(w1, w2, in2, in3);
	
	or (borrow_out, w2, w3);

endmodule
