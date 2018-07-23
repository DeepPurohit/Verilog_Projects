 module Seven_Segment_Statement_disp(disp, vcc, clk, reset);

    output reg [6:0]disp;
    output reg [3:0]vcc;
    input clk, reset;
    wire rfclk,S_clk;
    reg [1:0]i;
    reg [7:0]count,first,second,third,fourth;
    reg [7:0]disp_val;
    reg [7:0]str[27:0] = {8'hf,8'h6,8'h1,8'ha,8'hd,8'h9,8'he,8'ha,8'h4,8'h11,8'h1,8'hd,8'hf,8'h2,8'h5,8'ha,8'h3,8'hd,8'h0,8'he,8'ha,8'h7,8'hd,8'h8,8'he,8'hc,8'h11,8'hb};
    refresh_clk rf_clk(.clk(clk), .out_clk(rfclk), .reset(reset));
    MHz_to_100Hz ck(.clk_in(clk), .led_clk(S_clk), .Reset(reset));
    always @(posedge S_clk or posedge reset)
        begin
            if(reset)
                begin
                    first <= 8'hbd;
                    second <= 8'hbd;
                    third <= 8'h9d;
                    fourth <= 8'hd;
                    count <= 8'd0;

                end
                
             else
                begin
                    if(count == 8'b0)
                        begin
                             first <= 8'hd;
                             second <= 8'hd;
                             third <= 8'hd;
                             fourth <= str[27];
                             count <= count + 1;
                       end
                    else if(count == 8'b01)
                            begin
                                 first <= 8'hd;
                                 second <= 8'hd;
                                 third <= str[27];
                                 fourth <= str[26];
                                 count <= count + 1;
                            end
                   else if(count == 8'd2)
                           begin
                                 first <= 8'hd;
                                 second <= str[27];
                                 third <= str[26];
                                 fourth <= str[25];                               
                                count <= count + 1;
                           end
                   else if(count == 8'd3)
                          begin
                                 first <= str[27];
                                 second <= str[26];
                                 third <= str[25];
                                 fourth <= str[24];                             
                              count <= count + 1;
                        end
                   else if(count == 8'd4)
                        begin
                                 first <= str[26];
                                 second <= str[25];
                                 third <= str[24];
                                 fourth <= str[23];                                 
                            count <= count + 1;
                        end
                   else if(count == 8'd5)
                             begin
                                      first <= str[25];
                                      second <= str[24];
                                      third <= str[23];
                                      fourth <= str[22];                                 
                                 count <= count + 1;
                             end
                   else if(count == 8'd6)
                                  begin
                                           first <= str[24];
                                           second <= str[23];
                                           third <= str[22];
                                           fourth <= str[21];                                 
                                      count <= count + 1;
                                  end
                   else if(count == 8'd7)
                                       begin
                                                first <= str[23];
                                                second <= str[22];
                                                third <= str[21];
                                                fourth <= str[20];                                 
                                           count <= count + 1;
                                       end
                   else if(count == 8'd8)
                                            begin
                                                     first <= str[22];
                                                     second <= str[21];
                                                     third <= str[20];
                                                     fourth <= str[19];                                 
                                                count <= count + 1;
                                            end
                   else if(count == 8'd9)
                                                 begin
                                                          first <= str[21];
                                                          second <= str[20];
                                                          third <= str[19];
                                                          fourth <= str[18];                                 
                                                     count <= count + 1;
                                                 end
                   else if(count == 8'd10)
                                                      begin
                                                               first <= str[20];
                                                               second <= str[19];
                                                               third <= str[18];
                                                               fourth <= str[17];                                 
                                                          count <= count + 1;
                                                      end
                   else if(count == 8'd11)
                                                           begin
                                                                    first <= str[19];
                                                                    second <= str[18];
                                                                    third <= str[17];
                                                                    fourth <= str[16];                                 
                                                               count <= count + 1;
                                                           end
                   else if(count == 8'd12)
                                                                begin
                                                                    first <= str[18];
                                                                    second <= str[17];
                                                                    third <= str[16];
                                                                    fourth <= str[15];                                 
                                                               count <= count + 1;
                                                           end
                   else if(count == 8'd13)
                          begin
                                   first <= str[18];
                                   second <= str[17];
                                   third <= str[16];
                                   fourth <= str[15];                                 
                              count <= count + 1;
                          end
                   else if(count == 8'd14)
                                 begin
                                          first <= str[17];
                                          second <= str[16];
                                          third <= str[15];
                                          fourth <= str[14];                                 
                                     count <= count + 1;
                                 end
                   else if(count == 8'd15)
                                        begin
                                                 first <= str[16];
                                                 second <= str[15];
                                                 third <= str[14];
                                                 fourth <= str[13];                                 
                                            count <= count + 1;
                                        end
                   else if(count == 8'd16)
                                               begin
                                                        first <= str[15];
                                                        second <= str[14];
                                                        third <= str[13];
                                                        fourth <= str[12];                                 
                                                   count <= count + 1;
                                               end
                   else if(count == 8'd17)
                                                      begin
                                                               first <= str[14];
                                                               second <= str[13];
                                                               third <= str[12];
                                                               fourth <= str[11];                                 
                                                          count <= count + 1;
                                                      end
                   else if(count == 8'd18)
                        begin
                            first <= str[13];
                            second <= str[12];
                            third <= str[11];
                            fourth <= str[10];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd19)
                        begin
                            first <= str[12];
                            second <= str[11];
                            third <= str[10];
                            fourth <= str[9];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd20)
                        begin
                            first <= str[11];
                            second <= str[10];
                            third <= str[9];
                            fourth <= str[8];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd21)
                        begin
                            first <= str[10];
                            second <= str[9];
                            third <= str[8];
                            fourth <= str[7];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd22)
                        begin
                            first <= str[9];
                            second <= str[8];
                            third <= str[7];
                            fourth <= str[6];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd23)
                        begin
                            first <= str[8];
                            second <= str[7];
                            third <= str[6];
                            fourth <= str[5];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd24)
                        begin
                            first <= str[7];
                            second <= str[6];
                            third <= str[5];
                            fourth <= str[4];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd25)
                        begin
                            first <= str[6];
                            second <= str[5];
                            third <= str[4];
                            fourth <= str[3];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd26)
                        begin
                            first <= str[5];
                            second <= str[4];
                            third <= str[3];
                            fourth <= str[2];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd27)
                        begin
                            first <= str[4];
                            second <= str[3];
                            third <= str[2];
                            fourth <= str[1];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd28)
                        begin
                            first <= str[3];
                            second <= str[2];
                            third <= str[1];
                            fourth <= str[0];                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd29)
                        begin
                            first <= str[2];
                            second <= str[1];
                            third <= str[0];
                            fourth <= 8'hd;                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd30)
                        begin
                            first <= str[1];
                            second <= str[0];
                            third <= 8'hd;
                            fourth <= 8'hd;                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd31)
                        begin
                            first <= str[0];
                            second <= 8'hd;
                            third <= 8'hd;
                            fourth <= 8'hd;                                 
                       count <= count + 1;
                   end                                                                                             
                   else if(count == 8'd32)
                        begin
                            first <= 8'hd;
                            second <= 8'hd;
                            third <= 8'hd;
                            fourth <= 8'hd;                                 
                       count <= count + 1;
                   end                                                                                             
           
                 else if(count == 8'd33)
                        count <= 8'd0;

                end
        end
    
    
    always @(posedge rfclk)
        begin
                case(i)
                                    2'b00:
                                        begin
                                            vcc <= 4'b0111;
                                            disp_val <= first;
                                        end
                                    2'b01:
                                        begin
                                            vcc <= 4'b1011;
                                            disp_val <= second;
                                        end
                                    2'b10:
                                        begin
                                            vcc <= 4'b1101;
                                            disp_val <= third;
                                        end
                                   2'b11:
                                        begin
                                            vcc <= 4'b1110;
                                            disp_val <= fourth;
                                        end
                                endcase
                        i <= i+1;
        end
    
    
    always @(*)
        begin
            case(disp_val)
                8'h0:disp <= 7'h44;
                8'h1:disp <= 7'h20;
                8'h2:disp <= 7'h4f;
                8'h3:disp <= 7'h71;
                8'h4:disp <= 7'h2b;
                8'h5:disp <= 7'h6a;
                8'h6:disp <= 7'h18;
                8'h7:disp <= 7'h7a;
                8'h8:disp <= 7'h24;
                8'h9:disp <= 7'h0f;
                8'ha:disp <= 7'h08;
                8'hb:disp <= 7'h00;
                8'hc:disp <= 7'h31;
                8'hd:disp <= 7'h7f;
                8'he:disp <= 7'h30;
                8'hf:disp <= 7'h38;
                8'h11:disp <= 7'b1111110;
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
                
            else if(count < 28'b01011111010111100001000000)
                    count <= count + 1'b1;
                
            else if(count === 28'b01011111010111100001000000)
                  begin
                     led_clk <= ~led_clk;
                     count <= 28'b0;
                  end
          end
endmodule
