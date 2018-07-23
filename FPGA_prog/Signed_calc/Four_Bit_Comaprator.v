`timescale 1ns / 1ps
module Four_Bit_Comaprator(A, B, A_E_B, A_G_B, A_L_B, Reset);

    output A_E_B, A_G_B, A_L_B;
    input [3:0]A,B;
    input Reset;
    
    reg A_E_B, A_G_B, A_L_B;
    
    always @(A or B or Reset)
        begin
            if(Reset)
                begin
                    A_E_B <= 1'b0;
                    A_G_B <= 1'b0;
                    A_L_B <= 1'b0;
                 end
             else
                begin
                    if(A === B)
                        begin
                            A_E_B <= 1'b1;
                            A_G_B <= 1'b0;
                            A_L_B <= 1'b0;
                        end
                     else if(A < B)
                         begin
                             A_E_B <= 1'b0;
                             A_G_B <= 1'b0;
                             A_L_B <= 1'b1;
                          end
                     else if(A > B)
                          begin
                             A_E_B <= 1'b0;
                             A_G_B <= 1'b1;
                             A_L_B <= 1'b0;
                          end
                end
        end

endmodule
