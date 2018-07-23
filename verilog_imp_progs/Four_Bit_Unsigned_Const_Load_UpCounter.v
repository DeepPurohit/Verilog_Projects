module Four_Bit_Unsigned_Const_Load_UpCounter(Q, load, clk, clear);
	
	output [3:0]Q;
	input load, clk, clear;
	reg [3:0]Q, val;
	
	assign val = 4'b0100;
	
	always @(posedge clk or posedge load or posedge clear)
		begin
			if(clear)
				Q <= 4'b0;
			else if(load)
				Q <= val;
			else 
				Q <= Q + 1;
		end

endmodule
