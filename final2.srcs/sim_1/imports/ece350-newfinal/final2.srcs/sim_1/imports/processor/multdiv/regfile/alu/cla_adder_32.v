module cla_adder_32(A,B,Cin,S,Cout,overflow);
    input [31:0] A,B;
    input Cin;
    output [31:0] S;
    output Cout; 
    output overflow;
    wire cout0, cout1, cout2;
    wire G0, P0, G1, P1, G2, P2, G3, P3; 
    wire w1, w2, w3;

    // First level CLAs
    cla_adder add1(A[7:0],B[7:0],Cin,S[7:0],cout0, G0, P0);
    cla_adder add2(A[15:8],B[15:8],w1,S[15:8],cout1, G1, P1);
    cla_adder add3(A[23:16],B[23:16],w2,S[23:16], cout2, G2, P2);
    cla_adder add4(A[31:24],B[31:24],w3,S[31:24], Cout,  G3, P3);

    // Second level CLA logic
    wire a1, a2, a3;
    wire b2, b3;
    wire c3;

    // w1 calculation
    and a1_(a1, P0, Cin);
    or  w1_(w1, G0, a1);

    // w2 calculation
    and a2_(a2, P1, G0);
    and b2_(b2, P1,P0,Cin);
    or  w2_(w2, G1, a2,b2);

    // w3 calculation
    and a3_(a3, P2, G1);
    and b3_(b3, P2, P1, G0);
    and c3_(c3, P2, P1,P0,Cin);
    or  w3_(w3, G2, a3,b3,c3);

    // Correct overflow calculation
    wire same_sign, result_diff_sign;
    xnor ssxnor(same_sign, A[31], B[31]);
    xor resxor(result_diff_sign, A[31], S[31]);
    and overflow_and(overflow, same_sign, result_diff_sign);

endmodule