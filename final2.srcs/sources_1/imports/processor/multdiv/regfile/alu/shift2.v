module shift2(out, A, dir, fill);
    input [31:0] A;
    output [31:0] out;
    input dir, fill;
    
    // if dir is 0, shift left, else shift right
    // if fill is 1, fill with ones, else fill with zeros
    assign out = dir ? {fill ? 2'b11 : 2'b00, A[31:2]} : {A[29:0], fill ? 2'b11 : 2'b00};
endmodule