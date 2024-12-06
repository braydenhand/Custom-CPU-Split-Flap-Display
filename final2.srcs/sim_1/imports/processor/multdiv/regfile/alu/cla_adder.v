module cla_adder(A,B,Cin,S,Cout, G, P);
    input [7:0] A, B;
    input Cin;
    output [7:0] S;
    output Cout;
    output G, P;
    wire g0, p0, g1, p1, g2, p2, g3, p3, g4, p4, g5, p5, g6, p6, g7, p7;

    and g0_(g0, A[0], B[0]);
    or  p0_(p0, A[0], B[0]);
    and g1_(g1, A[1], B[1]);
    or  p1_(p1, A[1], B[1]);
    and g2_(g2, A[2], B[2]);
    or  p2_(p2, A[2], B[2]);
    and g3_(g3, A[3], B[3]);
    or  p3_(p3, A[3], B[3]);
    and g4_(g4, A[4], B[4]);
    or  p4_(p4, A[4], B[4]);
    and g5_(g5, A[5], B[5]);
    or  p5_(p5, A[5], B[5]);
    and g6_(g6, A[6], B[6]);
    or  p6_(p6, A[6], B[6]);
    and g7_(g7, A[7], B[7]);
    or  p7_(p7, A[7], B[7]);

    // c0 calculation
    wire a00, c0;
    and a00_(a00, p0, Cin);
    or  c0_(c0, g0, a00);

    // c1 calculation
    wire a10, a11, c1;
    and a10_(a10, p1, g0);
    and a11_(a11, p1, p0, Cin);
    or  c1_(c1, g1, a10, a11);

    // c2 calculation
    wire a20, a21, a22, c2;
    and a20_(a20, p2, g1);
    and a21_(a21, p2, p1, g0);
    and a22_(a22, p2, p1, p0, Cin);
    or  c2_(c2, g2, a20, a21, a22);

    // c3 calculation
    wire a30, a31, a32, a33, c3;
    and a30_(a30, p3, g2);
    and a31_(a31, p3, p2, g1);
    and a32_(a32, p3, p2, p1, g0);
    and a33_(a33, p3, p2, p1, p0, Cin);
    or  c3_(c3, g3, a30, a31, a32, a33);

    // c4 calculation
    wire a40, a41, a42, a43, a44, c4;
    and a40_(a40, p4, g3);
    and a41_(a41, p4, p3, g2);
    and a42_(a42, p4, p3, p2, g1);
    and a43_(a43, p4, p3, p2, p1, g0);
    and a44_(a44, p4, p3, p2, p1, p0, Cin);
    or  c4_(c4, g4, a40, a41, a42, a43, a44);

    // c5 calculation
    wire a50, a51, a52, a53, a54, a55, c5;
    and a50_(a50, p5, g4);
    and a51_(a51, p5, p4, g3);
    and a52_(a52, p5, p4, p3, g2);
    and a53_(a53, p5, p4, p3, p2, g1);
    and a54_(a54, p5, p4, p3, p2, p1, g0);
    and a55_(a55, p5, p4, p3, p2, p1, p0, Cin);
    or  c5_(c5, g5, a50, a51, a52, a53, a54, a55);

    // c6 calculation
    wire a60, a61, a62, a63, a64, a65, a66, c6;
    and a60_(a60, p6, g5);
    and a61_(a61, p6, p5, g4);
    and a62_(a62, p6, p5, p4, g3);
    and a63_(a63, p6, p5, p4, p3, g2);
    and a64_(a64, p6, p5, p4, p3, p2, g1);
    and a65_(a65, p6, p5, p4, p3, p2, p1, g0);
    and a66_(a66, p6, p5, p4, p3, p2, p1, p0, Cin);
    or  c6_(c6, g6, a60, a61, a62, a63, a64, a65, a66);

    // c7 calculation (Cout)
    wire a70, a71, a72, a73, a74, a75, a76, a77, Cout;
    and a70_(a70, p7, g6);
    and a71_(a71, p7, p6, g5);
    and a72_(a72, p7, p6, p5, g4);
    and a73_(a73, p7, p6, p5, p4, g3);
    and a74_(a74, p7, p6, p5, p4, p3, g2);
    and a75_(a75, p7, p6, p5, p4, p3, p2, g1);
    and a76_(a76, p7, p6, p5, p4, p3, p2, p1, g0);
    and a77_(a77, p7, p6, p5, p4, p3, p2, p1, p0, Cin);
    or  Cout_(Cout, g7, a70, a71, a72, a73, a74, a75, a76, a77);

    // Constructing the adder modules

    full_adder adder0(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout());
    full_adder adder1(.A(A[1]),.B(B[1]),.Cin(c0),.S(S[1]),.Cout());
    full_adder adder2(.A(A[2]),.B(B[2]),.Cin(c1),.S(S[2]),.Cout());
    full_adder adder3(.A(A[3]),.B(B[3]),.Cin(c2),.S(S[3]),.Cout());
    full_adder adder4(.A(A[4]),.B(B[4]),.Cin(c3),.S(S[4]),.Cout());
    full_adder adder5(.A(A[5]),.B(B[5]),.Cin(c4),.S(S[5]),.Cout());
    full_adder adder6(.A(A[6]),.B(B[6]),.Cin(c5),.S(S[6]),.Cout());
    full_adder adder7(.A(A[7]),.B(B[7]),.Cin(c6),.S(S[7]),.Cout());

    and bigp(P, p0, p1, p2, p3, p4, p5, p6, p7);
    assign G = Cout;

endmodule