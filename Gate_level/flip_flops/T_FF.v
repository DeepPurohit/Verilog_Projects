module T_FF(Q, Qbar, CLK, Clear, T);
	output Q, Qbar;
	input T, CLK, Clear;
	
	wire w1, w2, w3, w4, w5;
	
	nand g1(w1, T, CLK);
	not n1(w2, Clear);
	or (w3, w2, w1);
	nand g2(Q, w3, Qbar);
	nand g3(w5, T, CLK);
	nand g4(Qbar, Clear, Q, w5);


endmodule
