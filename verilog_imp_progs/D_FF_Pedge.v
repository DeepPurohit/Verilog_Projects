module D_FF_Pedge(Q, Qbar, clk, D);
	
	output Q, Qbar;
	input D, clk;
	reg Q, Qbar;
	
	always @(posedge clk)
		begin
			if(D)
				begin
					Q <= D;
					Qbar <= ~D;
				end
			else if(~D)
				begin
					Q <= D;
					Qbar <= ~D;
				end
		end
	

endmodule
