module D_FF_Nedge(Q, Qbar, D, clk, clear);

	output Q, Qbar;
	input D, clk, clear;
	reg Q, Qbar;
	
	always @(negedge clk or posedge clear)
		begin
			if(clear)
				begin
					Q <= 1'b0;
					Qbar <= 1'b1;
				end
			else if(D)
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
