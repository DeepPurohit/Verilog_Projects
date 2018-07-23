module mux_3_1_case(a,b,c,sel,out);
	
	input [1:0] sel;
	input a,b,c;
	output out;
	reg out;
	
	always @(a or b or c or sel)
		begin
			case (sel)
				2'b00: out = a;
				2'b01: out = b;
				2'b10: out = c;
				//default: out = 1'b0;  //to remove latch from RTL
			endcase
		end
	
endmodule
