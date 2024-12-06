module shift16(out, A, dir, fill);
    input [31:0] A;
    output [31:0] out;
    input dir, fill;
    
    // if dir is 0, shift left, else shift right
    // if fill is 1, fill with ones, else fill with zeros
    assign out = dir ? {fill ? 16'b1111111111111111 : 16'b0000000000000000, A[31:16]} : {A[15:0], fill ? 16'b1111111111111111 : 16'b0000000000000000};
endmodule