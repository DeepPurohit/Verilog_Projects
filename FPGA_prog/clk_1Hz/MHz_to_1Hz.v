module MHz_to_1Hz(clk_in, led_clk, Reset);

    output led_clk;
    input clk_in, Reset;
    reg led_clk;
    reg [27:0]count;
    
    initial
        begin
            led_clk <= 1'b0;
            count <= 28'b0;
        end
        
    always @(posedge clk_in)
        begin
                    if(Reset)
                        begin
                                led_clk <= 1'b0;
                                count <= 28'b0;
                        end
                    else if(count < 28'b0010111110101111000010000000)
                            count <= count + 1'b1;
                        
                    else if(count === 28'b0010111110101111000010000000)
                          begin
                             led_clk <= ~led_clk;
                             count <= 28'b0;
                          end
               end
endmodule
