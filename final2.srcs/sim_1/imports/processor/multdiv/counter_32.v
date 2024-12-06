module counter_32(clk, en, curr, reset);
    
    input clk, en, reset;
    output [5:0] curr; 

    //32 bit counter
    tff tff1(.T(en), .clk(clk), .Q(curr[0]), .reset(reset));
    tff tff2(.T(en & curr[0]), .clk(clk), .Q(curr[1]), .reset(reset));
    tff tff4(.T(en & curr[0] & curr[1]), .clk(clk), .Q(curr[2]), .reset(reset));
    tff tff8(.T(en & curr[0] & curr[1] & curr[2]), .clk(clk), .Q(curr[3]), .reset(reset));
    tff tff16(.T(en & curr[0] & curr[1] & curr[2] & curr[3]), .clk(clk), .Q(curr[4]), .reset(reset));
    tff tff32(.T(en & curr[0] & curr[1] & curr[2] & curr[3] & curr[4]), .clk(clk), .Q(curr[5]), .reset(reset));

    

endmodule
