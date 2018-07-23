module Four_Bit_Decimal_To_Binary_Convertor(Decimal_in, Binary_out);
	
	input [3:0]Decimal_in;
	output [3:0]Binary_out;
	reg [3:0]Binary_out, temp;
	reg [3:0]i;
	
	initial
		assign i = 4'd0;
	always @(*)
		begin
			/*case (Decimal_in)
				4'd0 : Binary_out = 4'b0;
				4'd1 : Binary_out = 4'b1;
				4'd2 : Binary_out = 4'b10;
				4'd3 : Binary_out = 4'b11;
				4'd4 : Binary_out = 4'b100;
				4'd5 : Binary_out = 4'b101;
				4'd6 : Binary_out = 4'b110;
				4'd7 : Binary_out = 4'b111;
				4'd8 : Binary_out = 4'b1000;
				4'd9 : Binary_out = 4'b1001;
				4'd10 : Binary_out = 4'b1010;
				4'd11 : Binary_out = 4'b1011;
				4'd12 : Binary_out = 4'b1100;
				4'd13 : Binary_out = 4'b1101;
				4'd14 : Binary_out = 4'b1110;
				4'd15 : Binary_out = 4'b1111;
				default : Binary_out = 4'bx;
				endcase*/
				
				while(i<4)
					begin
						temp[i] <= Decimal_in[i]%2;
						i = i + 1;
					end
				Binary_out <= temp;
		end

endmodule
