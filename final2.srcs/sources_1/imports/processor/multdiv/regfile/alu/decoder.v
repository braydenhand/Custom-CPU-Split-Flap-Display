module decoder(out, A);


    // 5 bit decoder
    input [4:0] A;
    output [31:0] out;
    not not0(nA0, A[0]);
    not not1(nA1, A[1]);
    not not2(nA2, A[2]);
    not not3(nA3, A[3]);
    not not4(nA4, A[4]);
    // assigning input names that are more convenient to type
    wire A0, A1, A2, A3, A4;
    assign A0 = A[0];
    assign A1 = A[1];
    assign A2 = A[2];
    assign A3 = A[3];
    assign A4 = A[4];
    
    and and0(a0,nA4, nA3, nA2, nA1, nA0);
    and and1(a1,nA4,nA3,nA2,nA1,A0);
    and and2(a2,nA4,nA3,nA2,A1,nA0);
    and and3(a3,nA4,nA3,nA2,A1,A0);
    and and4(a4,nA4,nA3,A2,nA1,nA0);
    and and5(a5,nA4,nA3,A2,nA1,A0);
    and and6(a6,nA4,nA3,A2,A1,nA0);
    and and7(a7,nA4,nA3,A2,A1,A0);
    
    and and8(a8,nA4,A3,nA2,nA1,nA0);
    and and9(a9,nA4,A3,nA2,nA1,A0);
    and and10(a10,nA4,A3,nA2,A1,nA0);
    and and11(a11,nA4,A3,nA2,A1,A0);
    and and12(a12,nA4,A3,A2,nA1,nA0);
    and and13(a13,nA4,A3,A2,nA1,A0);
    and and14(a14,nA4,A3,A2,A1,nA0);
    and and15(a15,nA4,A3,A2,A1,A0);
    
    and and16(a16,A4, nA3, nA2, nA1, nA0);
    and and17(a17,A4,nA3,nA2,nA1,A0);
    and and18(a18,A4,nA3,nA2,A1,nA0);
    and and19(a19,A4,nA3,nA2,A1,A0);
    and and20(a20,A4,nA3,A2,nA1,nA0);
    and and21(a21,A4,nA3,A2,nA1,A0);
    and and22(a22,A4,nA3,A2,A1,nA0);
    and and23(a23,A4,nA3,A2,A1,A0);
    
    and and24(a24,A4,A3,nA2,nA1,nA0);
    and and25(a25,A4,A3,nA2,nA1,A0);
    and and26(a26,A4,A3,nA2,A1,nA0);
    and and27(a27,A4,A3,nA2,A1,A0);
    and and28(a28,A4,A3,A2,nA1,nA0);
    and and29(a29,A4,A3,A2,nA1,A0);
    and and30(a30,A4,A3,A2,A1,nA0);
    and and31(a31,A4,A3,A2,A1,A0);




    assign out[0] = a0;
    assign out[1] = a1;
    assign out[2] = a2;
    assign out[3] = a3;
    assign out[4] = a4;
    assign out[5] = a5;
    assign out[6] = a6;
    assign out[7] = a7;
    assign out[8] = a8;
    assign out[9] = a9;
    assign out[10] = a10;
    assign out[11] = a11;
    assign out[12] = a12;
    assign out[13] = a13;
    assign out[14] = a14;
    assign out[15] = a15;
    assign out[16] = a16;
    assign out[17] = a17;
    assign out[18] = a18;
    assign out[19] = a19;
    assign out[20] = a20;
    assign out[21] = a21;
    assign out[22] = a22;
    assign out[23] = a23;
    assign out[24] = a24;
    assign out[25] = a25;
    assign out[26] = a26;
    assign out[27] = a27;
    assign out[28] = a28;
    assign out[29] = a29;
    assign out[30] = a30;
    assign out[31] = a31;



endmodule