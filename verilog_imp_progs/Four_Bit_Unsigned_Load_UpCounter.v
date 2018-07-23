module Four_Bit_Unsigned_Load_UpCounter(Q, in, load, clear, clk);
	
	output [3:0]Q;
	input [3:0]in;
	input load, clear, clk;
	reg [3:0]Q;
	
	always @(posedge clk or posedge load or posedge clear)
		begin
			if(clear)
				Q <= 4'b0;
			else if(load)
				Q <= in;
			else 
				Q <= Q + 1;
		end

endmodule
