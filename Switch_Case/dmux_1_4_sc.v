module dmux_1_4_sc(out, sel);
	
	output [3:0]out;
	input [1:0]sel;
	reg [3:0]out;
	
	//assign in = 1'd1;
	always @(sel)
		begin
			case({sel[1], sel[0]})
				2'd0 : out = 4'bxxx1;
				2'd1 : out = 4'bxx1x;
				2'd2 : out = 4'bx1xx;
				2'd3 : out = 4'b1xxx;
			endcase
		end
endmodule
