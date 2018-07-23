module Four_Bit_unsigned_DownCounter_case(Q, clock, set);
	
	output [3:0]Q;
	input clock, set;
	reg [3:0]Q;
	
	initial
		Q <= 4'b1111;
	always @(posedge clock or posedge set)
		begin
		//case for set
			case(set)
				1'b0: Q <= Q - 1'b1;
				1'b1: Q <= 4'b1111;
			endcase
		end
endmodule
