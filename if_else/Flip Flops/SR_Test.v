module SR_Test;
	reg S, R, CLK;
	wire Q, Qbar;
	
	SR_FF_V2 srtest (Q, Qbar, S, R, CLK);
	
	initial
		begin
			S=0; R=0; CLK=0;
		#5 S=0; R=1;
		#5 S=1; R=0;
		#5 S=1; R=1;
		#5 $finish;
		end
		
	always
		#2.5 CLK=!CLK;

endmodule
