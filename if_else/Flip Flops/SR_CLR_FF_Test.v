module SR_CLR_FF_Test;
	
	reg S, R, CLK,Clear;
	wire Q, Qbar;
	
	SR_FF sr_clr_test (Q, Qbar, S, R, CLK, Clear);
	
	initial
		begin
			S=0; R=0; Clear=0; CLK=0;
		#5 S=0; R=1;Clear=1;
		#5 S=1; R=0;Clear=1;
		#5 S=1; Clear=0;
		#5 S=0; #5 R=1; Clear=1;
		#5 S=1;
		#5 $finish;
		end
		
	always
		#2.5 CLK=!CLK;


endmodule
