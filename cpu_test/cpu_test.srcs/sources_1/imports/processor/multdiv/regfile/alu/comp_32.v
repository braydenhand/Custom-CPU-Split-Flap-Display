module comp_32(EQ1, GT1, A, B, EQ0, GT0);
    input EQ1, GT1;
    input [31:0] A, B;
    output EQ0, GT0;
    wire EQ2, EQ3, EQ4, EQ5, EQ6, EQ7, GT2, GT3, GT4, GT5, GT6, GT7, EQone, EQzero, GTone, GTzero;
    // GT1 and EQ1 are used here for interface purposes. When we get to the logical EQ1 and GT1 it will be
    // called GTone and EQone
    comp_8 comp8_7(.EQ1(EQ1),.GT1(GT1),.A(A[31:24]),.B(B[31:24]),.EQ0(EQ6),.GT0(GT6));
    comp_8 comp8_6(.EQ1(EQ6),.GT1(GT6),.A(A[23:16]),.B(B[23:16]),.EQ0(EQ5),.GT0(GT5));
    comp_8 comp8_5(.EQ1(EQ5),.GT1(GT5),.A(A[15:8]),.B(B[15:8]),.EQ0(EQ4),.GT0(GT4));
    comp_8 comp8_4(.EQ1(EQ4),.GT1(GT4),.A(A[7:0]),.B(B[7:0]),.EQ0(EQ0),.GT0(GT0));

endmodule