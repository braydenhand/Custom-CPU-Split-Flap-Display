module mult_ctrl(last3, counter, add, sub, shift);
    
    input [2:0] last3;
    input [4:0] counter;
    output add, sub; 
    output shift; 


    
    wire [31:0] muxOut;
    
    // This mux is a lookup table for the correct add, subtract, and shift amounts for modified booths. 
    mux_8 choose(muxOut, last3, 32'b00000000000000000000000000000000, 
    32'b00000000000000000000000000000100, 
    32'b00000000000000000000000000000100, 
    32'b00000000000000000000000000000101, 
    32'b00000000000000000000000000000011,
    32'b00000000000000000000000000000010, 
    32'b00000000000000000000000000000010, 
    32'b00000000000000000000000000000000);

    assign {add, sub, shift} = muxOut[2:0];

    



endmodule