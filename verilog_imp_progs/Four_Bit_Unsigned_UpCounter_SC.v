module Four_Bit_Unsigned_UpCounter_SC(Q, clock, clear);
	
	output [3:0]Q;
	input clock, clear;
	reg [3:0]Q;
	always @(posedge clock or posedge clear)
		begin
		//case for clear
			case(clear)
				1'b0: Q <= Q + 1'b1;
				1'b1: Q <= 4'b0;
			endcase
		end

endmodule
