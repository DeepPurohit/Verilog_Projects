module Four_Bit_Sel_Counter(count, clk, Clear, sel);

    output [3:0]count;
    input clk, Clear;
    input [1:0]sel;
    
    reg [3:0]count;
    wire sclk;
    wire [3:0]UC, DC, EC, OC;
    
	 initial
	 begin
	    count<=4'b0000;
	 end
	 
	 
    MHz_to_1Hz ck(.clk_in(clk), .led_clk(sclk), .Reset(Clear));
    
    Four_Bit_Up_Counter up(.Q(UC), .clk(clk), .Clear(Clear), .sel(sel));
    Four_Bit_Down_Counter down(.Q(DC), .clk(clk), .Clear(Clear), .sel(sel));
    Four_Bit_Even_Counter even(.Q(EC), .clk(clk), .Clear(Clear), .sel(sel));
    Four_Bit_Odd_Counter odd(.Q(OC), .clk(clk), .Clear(Clear), .sel(sel));
    
    always @(posedge sclk or posedge Clear)
        begin
            if(Clear)
                count <= 4'b0;
            else
                begin
                    case(sel)
                        2'b00: count <= UC;
                        2'b01: count <= DC;
                        2'b10: count <= EC;
                        2'b11: count <= OC;
                    endcase
                end
        end

endmodule
