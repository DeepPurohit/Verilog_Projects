module Seven_segment_counter(m_clk, counter, Reset, vcc);

    output reg [7:0]counter;
    reg [7:0]led_count;
    reg [3:0]led_count_M;
    input m_clk, Reset;
    output reg [3:0]vcc;
    reg [8:0] count1;
    reg [15:0]count2;
    wire F_clk;
    reg [3:0]led_count_L;
    reg [1:0]i,k;
    
    // MHz_to_1Hz ck(.clk_in(m_clk), .led_clk(S_clk), .Reset(Reset));
     MHz_to_1KHz ck1(.clk_in(m_clk), .led_clk(F_clk), .Reset(Reset));
     
     initial
        begin
            led_count_L <= 4'b0;
            led_count_M <= 4'b0;
            count1 <= 9'b0;
            count2 <= 16'b0;
        end
/*     always @(posedge S_clk or posedge Reset)
        begin
           if(Reset)
             begin
                led_count_L <= 4'b0;
             end
           else
                begin
                   if(led_count_L == 4'd9)
                       begin
                             led_count_L <=] 4'b0;
                             if(led_count_M == 4'd9)
                                led_count_M <= 4'b0;
                             else
                                led_count_M <= led_count_M + 1;
                       end
                   else
                        led_count_L <= led_count_L + 1;
                end
        end
     */
     always @(posedge F_clk or posedge Reset)
                begin
                   if(Reset)
							begin
                              count1 <= 9'b0;
							  count2 <= 16'b0;
							  led_count_L <= 0;
							  led_count_M <= 0;
							end
                   else 
                    begin                           
                           if(count1 == 16'd500)
                                                        begin
                                                           count1 <= 9'b0;
                                                          led_count_L <= led_count_L + 1;
                                                        end
                                                     else if(count2 == 16'd5000)
                                                            begin
                                                                count2 <= 16'b0;
                                                                led_count_M <= led_count_M + 1;
                                                            end
                                                  else if(led_count_L > 4'd9)
                                                    led_count_L <= 4'd0;
                                                  else if(led_count_M > 4'd9)
                                                    led_count_M <= 4'd0;
                                                else
                                                            begin
                                                    count1 <= count1 + 1;
                                                              count2 <= count2 + 1;
                                                            end
                    end
                end
     
     always @(posedge F_clk)
        begin
            case(i)
                2'b00:
                        begin
                            vcc <= 4'b1110;
                            led_count <= led_count_L;
                        end
                2'b01:
                        begin
                            vcc <= 4'b1101;
                            led_count <= led_count_M;
                        end
                2'b10:
                        begin
                            vcc <= 4'b1011;
                            led_count <= 4'd10;
                        end
                 2'b11:
                       begin
                          vcc <= 4'b0111;
                          led_count <= 4'd10;
                       end
                 default: i <= 0;
            endcase
            i = i + 1;
        end
     
     
        always @(*)
            begin
                case(led_count)
                    8'd0: counter[7:0] <= 8'b10000001;
                    8'd1: counter[7:0] <= 8'b11001111;
                    8'd2: counter[7:0] <= 8'b10010010;
                    8'd3: counter[7:0] <= 8'b10000110;
                    8'd4: counter[7:0] <= 8'b11001100;
                    8'd5: counter[7:0] <= 8'b10100100;
                    8'd6: counter[7:0] <= 8'b10100000;
                    8'd7: counter[7:0] <= 8'b10001111;
                    8'd8: counter[7:0] <= 8'b10000000;
                    8'd9: counter[7:0] <= 8'b10001100;
                    default: counter[7:0] <= 8'b1111110;
                endcase
            end
     

endmodule

module MHz_to_1KHz(clk_in, led_clk, Reset);

    output led_clk;
    input clk_in, Reset;
    reg led_clk;
    reg [17:0]count;
    
    initial
        begin
            led_clk <= 1'b0;
            count <= 18'b0;
        end
        
    always @(posedge clk_in or posedge Reset)
        begin
            if(Reset)
                begin
                    led_clk <= 1'b0;
                    count <= 18'b0;
                end
                
            else if(count < 18'b011000011010100000)
                    count <= count + 1'b1;
                
            else if(count === 18'b011000011010100000)
                  begin
                     led_clk <= ~led_clk;
                     count <= 28'b0;
                  end
          end

endmodule

