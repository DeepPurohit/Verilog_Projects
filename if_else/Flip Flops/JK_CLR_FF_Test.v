module JK_CLR_FF_Test;
		
	reg J, K, CLK,Clear;
	wire Q, Qbar;
	
	JK_FF jk_clear_ff_test (Q, Qbar, Clear, CLK, J, K);
	
	initial
		begin
			J=0; K=0; Clear=0; CLK=0;
		#5 J=0; K=1;Clear=1;
		#5 J=1; K=0;Clear=1;
		#5 J=1; Clear=0;
		#5 J=0; #5 K=1; Clear=1;
		#5 J=1;
		#5 $finish;
		end
		
	always
		#2.5 CLK=!CLK;

endmodule
