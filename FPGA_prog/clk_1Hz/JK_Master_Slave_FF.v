module JK_Master_Slave_FF(J, K, clk, Q, Qb, Clear);

    output Q, Qb;
    input J, K, clk, Clear;
    
    wire w1, w2;
    
    JK_FF jkM(.J(J), .K(K), .Clear(Clear), .clk(clk), .Q(w1), .Qb(w2));
    JK_FF jkS(.J(w1), .K(w2), .Clear(Clear), .clk(~clk), .Q(Q), .Qb(Qb));

endmodule
