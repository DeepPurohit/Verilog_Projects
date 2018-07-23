module HA_Test;

	reg A1, B1;
	wire S1, C1;
	half_adder hatest ( .carry(C1), .sum(S1),.in1(A1), .in2(B1));
	
	initial
		begin
			A1=0; B1=0;
		#5 A1=0; B1=1;
		#5 A1=1; B1=0;
		#5 A1=1; #5 B1=0;
		#5 A1=1;
		#5 A1=1; B1=1;
		#5 $finish;
		end
endmodule
