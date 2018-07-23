module Four_Bit_Unsigned_UpCounter(Q, clock, clear);
	
	output [3:0]Q;
	input clock, clear;
	reg [3:0]Q;
	
	initial
		Q <= 4'b0;
	always @(posedge clock or posedge clear)
		if(clear)// || Q == 4'b1111
			Q <= 4'b0;
		
		else
			begin
				Q <= Q + 1'b1;
			end
endmodule
