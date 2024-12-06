module div(
	data_operandA, data_operandB, 
	ctrl_MULT, ctrl_DIV, 
	clock, 
	data_result, data_exception, data_resultRDY);
    //, hilo, alu_out, ctrl_add, ctrl_sub,ctrl_shift, newone, cycle
        // output [31:0] alu_output;
    // output [31:0] alu_in_A;
    // output [31:0] alu_in_B;
    // assign alu_output = alu_out;
    // assign ctrl_sub_out = ctrl_sub;
    //assign prev_sign_out = prev_sign;
        //output [3:0] cycle;
   // output of_out, ctrl_sub_out, prev_sign_out, bonus_bit_out;

   // assign of_out = of;
    //output [63:0] hilo_out;
    assign hilo_out = hilo;

    input [31:0] data_operandA, data_operandB; // A is numerator (dividend) D, B is denominator (divisor) V
    input ctrl_MULT, ctrl_DIV, clock;
    output [31:0] data_result;
    output data_exception, data_resultRDY;
    wire [63:0] paddedBonus; // 
    wire[31:0] positive_A;
    wire[31:0] positive_B;
    
    alu invertdivAALU(.data_operandA(~data_operandA), .data_operandB(32'b00000000000000000000000000000001), .ctrl_ALUopcode(5'b00000), .ctrl_shiftamt(5'b00000), .data_result(positive_A), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    alu invertdivBALU(.data_operandA(~data_operandB), .data_operandB(32'b00000000000000000000000000000001), .ctrl_ALUopcode(5'b00000), .ctrl_shiftamt(5'b00000), .data_result(positive_B), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    

    assign paddedBonus = {32'b0000000000000000000000000000000, data_operandA[31] ? positive_A : data_operandA};
     
    wire [63:0] newone;                 
    
    wire [5:0] cycle; 
    // counter signal
    counter_32 c(.clk(clock), .en(!(cycle == 6'b100001)), .curr(cycle), .reset(ctrl_MULT | ctrl_DIV));
    wire init_cycle = (!cycle[0] & !cycle[1] & !cycle[2] & !cycle[3] & !cycle[4] & !cycle[5]);

    wire [31:0] alu_out;
    wire isNotEqual, isLessThan, of;

    
    wire [63:0] hilo;
    wire [63:0] current_value;
    assign current_value = init_cycle ? paddedBonus : hilo;

    wire [63:0] shifted_current;
    assign shifted_current = {current_value[62:0], 1'b0};

    wire add;
    assign add = init_cycle ? 1'b0 : current_value[63];

    wire [31:0] alu_in_A;
    wire [31:0] alu_in_B;
    assign alu_in_A = shifted_current[63:32];
    assign alu_in_B = data_operandB[31] ? positive_B : data_operandB;

    alu divALU(.data_operandA(alu_in_A), .data_operandB(alu_in_B), .ctrl_ALUopcode(add ? 5'b00000 : 5'b00001), .ctrl_shiftamt(5'b00000), .data_result(alu_out), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    
   
    
    assign newone = {alu_out, shifted_current[31:1], !(alu_out[31])};

    register #(64) HILO(.clk(clock), .in_en(1'b1), .out_en(1'b1), .in(newone), .out(hilo), .clr((ctrl_MULT | ctrl_DIV)));

    wire [31:0]lastop;
    alu lastopALU(.data_operandA(hilo[63:32]), .data_operandB(data_operandB[31] ? positive_B : data_operandB), .ctrl_ALUopcode(5'b00000), .ctrl_shiftamt(5'b00000), .data_result(lastop), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    

    wire [31:0]fixSign;
    alu fixSignALU(.data_operandA(~hilo[31:0]), .data_operandB(32'b00000000000000000000000000000001), .ctrl_ALUopcode(5'b00000), .ctrl_shiftamt(5'b00000), .data_result(fixSign), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    
    // Output logic
    assign data_result = data_operandA[31] ^ data_operandB[31] ? fixSign :  hilo[31:0];

    assign data_exception = !(data_operandB[0] | data_operandB[1] | data_operandB[2] | data_operandB[3] | 
                            data_operandB[4] | data_operandB[5] | data_operandB[6] | data_operandB[7] | 
                            data_operandB[8] | data_operandB[9] | data_operandB[10] | data_operandB[11] | 
                            data_operandB[12] | data_operandB[13] | data_operandB[14] | data_operandB[15] | 
                            data_operandB[16] | data_operandB[17] | data_operandB[18] | data_operandB[19] | 
                            data_operandB[20] | data_operandB[21] | data_operandB[22] | data_operandB[23] | 
                            data_operandB[24] | data_operandB[25] | data_operandB[26] | data_operandB[27] | 
                            data_operandB[28] | data_operandB[29] | data_operandB[30] | data_operandB[31]);
                        
    assign data_resultRDY = (cycle == 6'b100000);

endmodule