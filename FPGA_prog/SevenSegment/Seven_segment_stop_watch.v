module Seven_segment_stop_watch(m_clk, show_count, reset, vcc, stop_go);

    output reg [7:0]show_count;
    output reg [3:0]vcc;
    input m_clk, reset,stop_go;
    reg [3:0]count_val;
    reg [3:0]count1,count2,count3,count4;
    reg [1:0]i;
    wire rf_clk,S_clk;
    refresh_clk rc(.clk(m_clk), .out_clk(rf_clk), .reset(reset));
    MHz_to_100Hz ck(.clk_in(m_clk), .led_clk(S_clk), .Reset(Reset));
    
    always @(posedge S_clk or posedge reset)
        begin
            if(reset)
                begin
                    count1 <= 4'b0;
                    count2 <= 4'b0;
                    count3 <= 4'b0;
                    count4 <= 4'b0;
                end
                
            else
                begin
                  if(~stop_go)
                    begin
                    if(count1 === 4'd9)
                        begin
                            count1 <= 4'b0;
                            if(count2 === 4'd9)
                                begin
                                    count2 <= 4'b0;
                                    if(count3 === 4'd9)
                                        begin
                                            count3 <= 4'b0;
                                            if(count4 === 4'd5)
                                                count4 <= 4'b0;
                                            else
                                                count4 <= count4 + 1;
                                        end
                                     else
                                        count3 <= count3 + 1;
                                end
                            else
                                count2 <= count2 + 1;
                        end
                    else
                        count1 <= count1 + 1;
                   end
                  else if(stop_go)
                    begin
                        count1 <= count1;
                        count2 <= count2;
                        count3 <= count3;
                        count4 <= count4;
                    end
                end
        end
        
        
        always @(posedge rf_clk or posedge reset)
            begin
                if(reset)
                    begin
                        count_val <= 4'b0;
                        vcc <= 4'b1110;
                    end
                else
                    begin     
                        case(i)
                            2'b00:
                                begin
                                    vcc <= 4'b1110;
                                    count_val <= count1;
                                end
                            2'b01:
                                begin
                                    vcc <= 4'b1101;
                                    count_val <= count2;
                                end
                            2'b10:
                                begin
                                    vcc <= 4'b1011;
                                    count_val <= count3;
                                end
                           2'b11:
                                begin
                                    vcc <= 4'b0111;
                                    count_val <= count4;
                                end
                        endcase
                i <= i+1;
              end
            end
        
       always @(*)
         begin
            case(count_val)
                4'd0: show_count[7:0] <= 8'b10000001;
                4'd1: show_count[7:0] <= 8'b11001111;
                4'd2: show_count[7:0] <= 8'b10010010;
                4'd3: show_count[7:0] <= 8'b10000110;
                4'd4: show_count[7:0] <= 8'b11001100;
                4'd5: show_count[7:0] <= 8'b10100100;
                4'd6: show_count[7:0] <= 8'b10100000;
                4'd7: show_count[7:0] <= 8'b10001111;
                4'd8: show_count[7:0] <= 8'b10000000;
                4'd9: show_count[7:0] <= 8'b10001100;
                default: show_count[7:0] <= 8'b1111110;
                
            endcase
         end 
       
endmodule






module refresh_clk(clk, out_clk, reset);

    output reg out_clk;
    input clk, reset;
    
    reg [17:0]count;
        
        initial
            begin
                out_clk <= 1'b0;
                count <= 18'b0;
            end
            
        always @(posedge clk or posedge reset)
            begin
                if(reset)
                    begin
                        out_clk <= 1'b0;
                        count <= 18'b0;
                    end
                    
                else if(count < 18'b011000011010100000)
                        count <= count + 1'b1;
                    
                else if(count === 18'b011000011010100000)
                      begin
                         out_clk <= ~out_clk;
                         count <= 18'b0;
                      end
              end
    
    endmodule



module MHz_to_100Hz(clk_in, led_clk, Reset);

    output led_clk;
    input clk_in, Reset;
    reg led_clk;
    reg [27:0]count;
    
    initial
        begin
            led_clk <= 1'b0;
            count <= 28'b0;
        end
        
    always @(posedge clk_in or posedge Reset)
        begin
            if(Reset)
                begin
                    led_clk <= 1'b0;
                    count <= 28'b0;
                end
                
            else if(count < 28'b01111010000100100000)
                    count <= count + 1'b1;
                
            else if(count === 28'b01111010000100100000)
                  begin
                     led_clk <= ~led_clk;
                     count <= 28'b0;
                  end
          end
endmodule
