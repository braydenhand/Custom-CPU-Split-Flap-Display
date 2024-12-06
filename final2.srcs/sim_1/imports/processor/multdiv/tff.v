module tff(T, clk, Q, reset);

    input T, clk, reset;
    output Q;
    wire w1, w2, D;
    dffe_ref dff(.q(Q), .d(D), .clk(clk), .en(1'b1), .clr(reset));

    and AND1(w1, !T, Q);
    and AND2(w2, T, !Q);

    or OR1(D, w1, w2);

endmodule