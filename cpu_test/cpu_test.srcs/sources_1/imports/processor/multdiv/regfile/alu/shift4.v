module shift4(out, A, dir, fill);
    input [31:0] A;
    output [31:0] out;
    input dir, fill;
    
    // if dir is 0, shift left, else shift right
    // if fill is 1, fill with ones, else fill with zeros
    assign out = dir ? {fill ? 4'b1111 : 4'b0000, A[31:4]} : {A[27:0], fill ? 4'b1111 : 4'b0000};
endmodule