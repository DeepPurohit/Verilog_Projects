module D_FF(Q, clk, Clear, D);

    output Q;
    input D, clk, Clear;
    
    reg Q;
    wire sclk;
    
    MHz_to_1Hz ck(.clk_in(clk), .led_clk(sclk), .Reset(Clear));
    
    always @(posedge sclk or posedge Clear)
        begin
            if(Clear)
                Q <= 1'b0;
            else
                Q <= D;
        end

endmodule
