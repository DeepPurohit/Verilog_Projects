module Four_Bit_Unsigned_DownCounter_if(Q, clock, set);
	
	output [3:0]Q;
	input clock, set;
	reg [3:0]Q;
	
	initial
		Q <= 4'b1111;
	always @(posedge clock or posedge set)
		if(set || Q == 4'b0)
			Q <= 4'b1111;
		
		else
			begin
				Q <= Q - 1'b1;
			end
endmodule
