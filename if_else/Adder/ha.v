module half_Adder( sum, carry, a, b);
	output sum, carry;
	input a,b;
	reg sum , carry;
	always@(a or b)
		begin 
			if(a==0 && b==0)
				begin
					sum=0;
					carry=0;
				end
			else if(a==0 && b==1)
				begin
					sum=1;
					carry=0;
				end
			else if(a==1 && b==0)
				begin
					sum=1;
					carry=0;
				end
			else 
				begin
					sum=0;
					carry=1;
				end
	end
endmodule
