module mux_8_2(out, select, in0, in1, in2, in3, in4, in5, in6, in7);

    // interface for one bit inputs
    input [2:0] select;
    input in0, in1, in2, in3, in4, in5, in6, in7;
    output out;
    wire [31:0] w1, w2, o;
    assign out = o[0];

    mux_4 first_top(w1, select[1:0], {31'b0,in0}, {31'b0,in1}, {31'b0,in2}, {31'b0,in2});
    mux_4 first_bottom(w2, select[1:0], {31'b0,in4}, {31'b0,in5}, {31'b0,in6}, {31'b0,in7});
    mux_2 second(o, select[2], w1[0], w2[0]);

endmodule