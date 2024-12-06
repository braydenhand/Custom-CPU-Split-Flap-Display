module mux_32_bus(out, select, in);
    //this is an interface for my 32 bit mux because I built it stupid and got tired of typing each bit as an input. 
    input [4:0] select;
    input [1023:0] in;
    output [31:0] out;

    wire [31:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31;
    assign {in31, in30, in29, in28, in27, in26, in25, in24, in23, in22, in21, in20, in19, in18, in17, in16, in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0} = in;
    mux_32 m(out, select, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31);
   

endmodule