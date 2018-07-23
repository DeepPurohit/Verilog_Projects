module JK_MasterSlave_Test;
	
	reg J, K, CLK, Clear;
	wire Q, Qbar;
	
	JK_Master_Slave master_slave_test (Q, Qbar, J, K, CLK, Clear); 
	
	initial
		begin
			J=0; K=0; Clear=0; CLK=0;
		#5 J=0; K=1;Clear=1;
		#5 J=1; K=0;
		#5 J=1; 
		#5 J=0; K=1;
		#5 J=1;
		#5 J=1; K=1;
		#5 $finish;
		end
		
	always
		#2.5 CLK=!CLK; 

endmodule
