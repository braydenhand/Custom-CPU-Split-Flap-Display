module comp_2(EQ1,GT1,A,B,EQ0,GT0);
    input EQ1, GT1;
    input [1:0] A, B;
    output EQ0, GT0;
    wire w1, w2, w3, notB0;
    wire [2:0] select;
    assign select[2:1] = A;
    assign select[0] = B[1];

    // A1, A0, B1 selects B0 etc 
    not not1(notB0, B[0]);
    mux_8 mux8EQ(.out(w1), .select(select), .in0(notB0), .in1(0),.in2(B[0]),.in3(0),.in4(0),.in5(notB0),.in6(0),.in7(B[0]));
    mux_8 mux8GT(.out(w2), .select(select), .in0(0), .in1(0), .in2(notB0), .in3(0), .in4(1), .in5(0), .in6(1), .in7(notB0));

    not not2(notGT1, GT1);
    and and1(w3, EQ1, notGT1);
    and and2(EQ0, w3, w1);
    and and3(w4, w2, w3);
    or or1(GT0, w4, GT1);
endmodule