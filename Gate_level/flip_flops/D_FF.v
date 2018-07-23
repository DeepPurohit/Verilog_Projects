module D_FF(Q, Qbar, CLK, Clear, D);
	output Q, Qbar;
	input D, CLK, Clear;
	
	wire w1, w2, w3, w4, w5;
	
	nand g1(w1, D, CLK);
	not n1(w2, Clear);
	or (w3, w2, w1);
	nand g2(Q, w3, Qbar);
	not n2(w4, D);
	nand g3(w5, w4, CLK);
	nand g4(Qbar, Clear, Q, w5);

endmodule
