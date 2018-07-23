module Four_Bit_Unsigned_Up_Accumulator(Q, in, clk, clear);
	
	output [3:0]Q;
	input clk, clear;
	input [3:0]in;
	reg [3:0]Q;
	
	always @(posedge clk or posedge clear)
		begin
			if(clear)
				Q <= 1'b0;
			else
				Q <= Q + in;
		end

endmodule
