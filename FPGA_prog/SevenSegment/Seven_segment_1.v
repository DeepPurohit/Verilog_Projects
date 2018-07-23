module Seven_segment_1(m_clk, Reset, Result, vcc_in);
    input m_clk, Reset;
    output reg [3:0]vcc_in;
    output reg [7:0]Result;
    wire S_clk;
    
    
    MHz_to_1Hz ck(.clk_in(m_clk), .led_clk(S_clk), .Reset(Reset));
    
     
            initial
                begin
                    Result <= 8'b11111111;
                    vcc_in = 4'b0000;
                end
                
            
            always @(posedge S_clk or posedge Reset)
                begin
                    if(Reset)
                        Result <= 8'b11111111;
                    else
                        Result[7:0] <= ~Result[7:0];
                end
    
endmodule

