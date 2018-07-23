module Conversion_B_G(Bin, Gout, sel, Reset);

	output [3:0]Gout;
	input [3:0]Bin;
	input [1:0]sel;
	input Reset;
	reg [3:0]Gout;
	always @(*)
		begin
			if(Reset)
				Gout <= 4'b0;
			else
			   begin
			     if(sel === 2'b11)
				    Gout <= {Bin[3],Bin[3]^Bin[2],Bin[2]^Bin[1],Bin[1]^Bin[0]};
				  else
				    Gout <= 4'b0;
			   end   
		end

endmodule
