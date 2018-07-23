module encoder_8_3(Y0, Y1, Y2, D1, D2, D3, D4, D5,D6, D7);
	
	output Y0, Y1, Y2;
	input D1, D2, D3, D4, D5,D6, D7;
	
	or o1(Y0, D1, D3, D5, D7);
	or o2(Y1, D2, D3, D6, D7);
	or o3(Y3, D4, D5, D6, D7);

endmodule
