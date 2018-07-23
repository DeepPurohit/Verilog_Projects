module neg_edge_trigger_D_FF(Q, Qbar, D, clk, clear);

	output Q, Qbar;
	input clk, clear, D;
	wire w1, w2, w3, w4, w5, w6;
	not n1(w1, clear);
	not n2(w2, clk);
	
	nand g1(w3, w6, w4);  //w3=Sbar
	nand g2(w4, w1, w2, w3);  // simple
	nand g3(w5, w2, w4, w6);  //S-R FF
	nand g4(w6, D, w1, w5);
	nand g5(Q, w4, Qbar);    // output of
	nand g6(Qbar, w1, Q, w5); // S-R FF
	
	
	
endmodule
