module mux_4_1_sc(out, in, sel);
	
	output out;
	input [3:0]in;
	input [1:0]sel;
	reg out;
	
	always @(in or sel)
		begin
			case({sel[1], sel[0]})
				2'd0 : out=in[0];
				2'd1 : out=in[1];
				2'd2 : out=in[2];
				2'd3 : out=in[3];
			endcase
		end

endmodule
