module Four_Bit_Down_Counter(Q, clk, Clear, sel);

    output [3:0]Q;
    input clk, Clear;
    input [1:0]sel;
    reg [3:0]Q;
    wire sclk;
    
    MHz_to_1Hz ck(.clk_in(clk), .led_clk(sclk), .Reset(Clear));
    
    initial
        Q <= 4'b1111;
    
    always @(posedge sclk or posedge Clear)
        begin
            if(Clear)
                Q <= 4'b0;
            else
                begin
                    if(sel === 2'b01)
                        begin
                            if(Q > 4'b0)
                                Q <= Q - 1'b1;
                            else
                                Q <= 4'b1111;
                         end
                     else
                        Q <= 4'b0;
                end
        end

endmodule