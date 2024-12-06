module shift8(out, A, dir, fill);
    input [31:0] A;
    output [31:0] out;
    input dir, fill;
    
    // if dir is 0, shift left, else shift right
    // if fill is 1, fill with ones, else fill with zeros
    assign out = dir ? {fill ? 8'b11111111 : 8'b00000000, A[31:8]} : {A[23:0], fill ? 8'b11111111 : 8'b00000000};
endmodule