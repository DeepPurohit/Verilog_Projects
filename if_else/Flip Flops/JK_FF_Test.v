module JK_FF_Test;
 
 reg J, K, CLK;
	wire Q, Qbar;
	
	JK_FF_V2 jktest (Q, Qbar, CLK, J, K);
	
	initial
		begin
			J=0; K=0; CLK=0;
		#5 J=0; K=1;
		#5 J=1; K=0;
		#5 J=1; K=1;
		#5 $finish;
		end
		
	always
		#2.5 CLK=!CLK;


endmodule
