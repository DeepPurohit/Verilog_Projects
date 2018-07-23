module dmux1_2(out1, out2, sel);
	
	output out1, out2;
	input sel;
	reg out1, out2;
	always @(sel)
		begin
			if(sel==0)
				begin
					out1=1'b1;
					out2=1'b0;
				end
			else if(sel==1)
				begin
					out1=1'b0;
					out2=1'b1;
				end
		end
	
endmodule
