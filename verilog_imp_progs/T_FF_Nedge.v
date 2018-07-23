module T_FF_Nedge(Q, Qbar, T, clk, clear);

	output Q, Qbar;
	input T, clk, clear;
	reg Q, Qbar;
	
	always @(negedge clk or posedge clear)
		begin
			if(clear)
				begin
					Q <= 1'b0;
					Qbar <= 1'b1;
				end
			else if(T)
				begin
					Q <= ~T;
					Qbar <= T;
				end
			else
				begin
					Q <= ~T;
					Qbar <= T;
				end
		end

endmodule
