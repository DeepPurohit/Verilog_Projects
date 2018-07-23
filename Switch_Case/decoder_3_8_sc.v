module decoder_3_8_sc(out, in);

	output [7:0]out;
	input [2:0]in;
	reg [7:0]out;
	always @(in)
		begin
			casex(in)
				3'd0 : out = 8'b01;
				3'd1 : out = 8'b010;
				3'd2 : out = 8'b0100;
				3'd3 : out = 8'b01000;
				3'd4 : out = 8'b010000;
				3'd5 : out = 8'b0100000;
				3'd6 : out = 8'b010000000;
				3'd7 : out = 8'b100000000;
			endcase
		end	
endmodule
