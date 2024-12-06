module shift1(out, A, dir, fill);
    input [31:0] A;
    output [31:0] out;
    input dir, fill;
    
    // if dir is 0, shift left, else shift right
    // if fill is 1, fill with ones, else fill with zeros
    assign out = dir ? {fill ? 1'b1 : 1'b0, A[31:1]} : {A[30:0], fill ? 1'b1 : 1'b0};
endmodule