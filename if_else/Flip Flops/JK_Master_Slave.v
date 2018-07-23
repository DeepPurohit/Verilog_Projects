module JK_Master_Slave(Q, Qbar, J, K, CLK, Clear);
	
	output Q, Qbar;
	input J, K, CLK, Clear;
	
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
	
	//master
	nand g1(w1, J, CLK, w6, Qbar);
	not (w2, Clear);
	or o1(w3, w2, w1);
	nand g2(w4, w3, w6);
	nand g3(w5, K, CLK, w4, Q);
	nand g4(w6, w5, Clear, w4);
	
	not (w7, CLK);
	
	//Slave
	nand g5(w8, w4, w7, Qbar);
	or o2(w9, w2, w8);
	nand g6(Q, w9, Qbar);
	nand g7(w10, w6, w7, Q);
	nand g8(Qbar, w10, Clear, Q);
	
	

endmodule
