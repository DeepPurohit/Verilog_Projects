module decoder_3_8(Y0, Y1, Y2, D0, D1, D2, D3, D4, D5,D6, D7);
	
	input Y0, Y1, Y2;
	output D0, D1, D2, D3, D4, D5,D6, D7;
	
	wire w1, w2, w3;
	
	not i1(w1, Y0);
	not i2(w2, Y1);
	not i3(w3, Y2);

	and o1(D0, w3, w2, w1);
	and o2(D1, w3, w2, Y0);
	and o3(D2, w3, Y1, w1);
	and o4(D3, w3, Y1, Y0);
	and o5(D4, Y2, w2, w1);
	and o6(D5, Y2, w2, Y0);
	and o7(D6, Y2, Y1, w1);
	and o8(D7, Y2, Y1, Y0);
   
endmodule
