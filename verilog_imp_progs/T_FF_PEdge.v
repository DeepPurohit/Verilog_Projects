module T_FF_PEdge(Q, Qbar, T, clk);
	
	output Q, Qbar;
	input T, clk;
	reg Q, Qbar;
	
	always @(posedge clk)
		begin
			if(T)
				begin
					Q <= ~T;
					Qbar <= T;
				end
			else
				begin
					Q <= T;
					Qbar <= ~T;
				end
		end

endmodule
