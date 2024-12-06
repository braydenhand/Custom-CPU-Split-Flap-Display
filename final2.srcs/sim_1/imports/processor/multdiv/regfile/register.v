module register #(parameter WIDTH=32) (clk, in_en, out_en, in, out, clr);
    input [WIDTH-1:0] in; 
    input clk, in_en, out_en; 
    input clr; 
    output [WIDTH-1:0] out;
    genvar i; 
    generate
        for (i=0; i < WIDTH; i = i + 1) begin : dff_loop
            dffe_ref dff(.q(out[i]), .d(in[i]), .clk(clk), .en(in_en), .clr(clr));
        end
    endgenerate

endmodule