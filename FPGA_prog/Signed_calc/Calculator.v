module Calculator(Ain, Bin, s0, s1, ALUout, sel, Reset);

    input [3:0]Ain,Bin;
    input [1:0]sel;
    input s0, s1, Reset;
    
    output [8:0]ALUout;
    
    reg [8:0]ALUout;
	 wire [8:0]ASout, Mout, Dout;
	 /*wire [5:0]ASout;
    wire [8:0]Mout;
    wire [4:0]Dout;*/
    wire [3:0]Cout;
    
    Four_Bit_Adder mod1(.A(Ain), .B(Bin), .s0(s0), .s1(s1), .Result(ASout), .sel(sel), .Reset(Reset));
    
    Four_Bit_Multiplier mod2(.A(Ain), .B(Bin), .s0(s0), .s1(s1), .Result(Mout), .sel(sel), .Reset(Reset));
    
    Divider mod3(.A(Ain), .B(Bin), .Q(Dout), .s0(s0), .s1(s1), .sel(sel), .reset(Reset));
    
    Conversion_B_G mod4(.Bin(Ain), .Gout(Cout), .sel(sel), .Reset(Reset));
	 
	 always @(*)
		begin
			if(Reset)
				ALUout <= 9'b0;
			else
				begin
					case(sel)
						2'b0 : ALUout <= ASout;
						2'b01: ALUout <= Mout;
						2'b10: ALUout <= Dout;
						2'b11: ALUout <= {0, Cout};
					endcase
				end
		end

endmodule
