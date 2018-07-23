module encoder_8_3_sc(out, in);

	output [2:0]out;
	input [7:0]in;
	reg [2:0]out;
	always @(in)
		begin
			casex(in)
				8'bx1 : out = 3'd0;
				8'bx10 : out = 3'd1;
				8'bx100 : out = 3'd2;
				8'bx1000 : out = 3'd3;
				8'bx10000 : out = 3'd4;
				8'bx100000 : out = 3'd5;
				8'bx1000000 : out = 3'd6;
				8'b10000000 : out = 3'd7;
			endcase
		end
	
endmodule
