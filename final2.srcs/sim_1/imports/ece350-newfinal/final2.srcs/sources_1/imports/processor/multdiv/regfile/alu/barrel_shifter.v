module barrel_shifter(out, A, shamt, dir, fill);
    input [31:0] A;
    input [4:0] shamt;
    input dir, fill;
    output [31:0] out;

    wire [31:0] out16, out8, out4, out2, out1;
    wire [31:0] outm16, outm8, outm4, outm2;

    shift16 s16(.out(out16), .A(A), .dir(dir), .fill(fill));
    mux_2 m16(.out(outm16), .select(shamt[4]), .in0(A), .in1(out16));

    shift8 s8(.out(out8), .A(outm16), .dir(dir), .fill(fill));
    mux_2 m8(.out(outm8), .select(shamt[3]), .in0(outm16), .in1(out8));

    shift4 s4(.out(out4), .A(outm8), .dir(dir), .fill(fill));
    mux_2 m4(.out(outm4), .select(shamt[2]), .in0(outm8), .in1(out4));

    shift2 s2(.out(out2), .A(outm4), .dir(dir), .fill(fill));
    mux_2 m2(.out(outm2), .select(shamt[1]), .in0(outm4), .in1(out2));

    shift1 s1(.out(out1), .A(outm2), .dir(dir), .fill(fill));
    mux_2 m1(.out(out), .select(shamt[0]), .in0(outm2), .in1(out1));

endmodule

