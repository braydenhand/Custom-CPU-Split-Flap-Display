module mult(
	data_operandA, data_operandB, 
	ctrl_MULT, ctrl_DIV, 
	clock, 
	data_result, data_exception, data_resultRDY);
    //, hilo, alu_out, ctrl_add, ctrl_sub,ctrl_shift, newone, cycle
    input [31:0] data_operandA, data_operandB;
    input ctrl_MULT, ctrl_DIV, clock;
    //output [3:0] cycle;
   // output of_out, ctrl_sub_out, prev_sign_out, bonus_bit_out;
    assign of_out = of;
    // output [31:0] alu_output;
    // output [31:0] alu_in_A;
    // output [31:0] alu_in_B;
    // assign alu_output = alu_out;
    // assign ctrl_sub_out = ctrl_sub;
    //assign prev_sign_out = prev_sign;
    output [31:0] data_result;
    output [65:0] hilo;
    output data_exception, data_resultRDY;
    wire [65:0] paddedBonus; // this is for the init cycle. we need to put 32 bits (plus one bit for overflow) in the high register
    // then the multiplier, then one extra 0 for modified booths algorithm. 
    assign paddedBonus = {33'b000000000000000000000000000000000, data_operandB, 1'b0};
    

    wire ctrl_add, ctrl_sub, ctrl_shift;  
    wire [65:0] newone;                 
    
    wire [4:0] cycle; 
    // counter signal
    counter c(.clk(clock), .en(!(cycle == 5'b10001)), .curr(cycle), .reset(ctrl_MULT | ctrl_DIV));
    wire init_cycle = (!cycle[0] & !cycle[1] & !cycle[2] & !cycle[3] & !cycle[4]);

    wire [31:0] alu_out;
    wire isNotEqual, isLessThan, of;

    
    wire bonus_bit;
    
    assign bonus_bit = alu_out[31];
    
    assign alu_in_A = init_cycle ? paddedBonus[64:33] : hilo[64:33];
    assign alu_in_B = ctrl_shift ? {data_operandA[30:0], 1'b0} : data_operandA;
    alu multALU(.data_operandA(init_cycle ? paddedBonus[64:33] : hilo[64:33]), .data_operandB(ctrl_shift ? {data_operandA[30:0], 1'b0} : data_operandA), .ctrl_ALUopcode(ctrl_sub ? 5'b00001 : 5'b00000), .ctrl_shiftamt(5'b00000), .data_result(alu_out), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(of));
    
    //when do we actually need to adjust the sign? 
    
    // the shift right of the next cycle ones or zeros is determined by whether the result is positive or negative
    wire [65:0] hilo;
    // Select between direct padding and ALU result for first cycle
    wire [65:0] first_cycle_result = (ctrl_add | ctrl_sub) ? {bonus_bit, alu_out, paddedBonus[32:0]} : paddedBonus;
    // We need to choose what to put into mux, either whats already in it or the result of ALU_Out.
    assign newone = (ctrl_add | ctrl_sub) ? {bonus_bit, alu_out, hilo[32:0]} : hilo;


    wire [65:0] shifted_first_cycle_result;
    assign shifted_first_cycle_result = {$signed(first_cycle_result) >>> 2};
    wire [65:0] shifted_result;
    assign shifted_result = {$signed(newone) >>> 2};


    register #(66) HILO(.clk(clock), .in_en(1'b1), .out_en(1'b1), .in(init_cycle ? shifted_first_cycle_result : shifted_result), .out(hilo), .clr((ctrl_MULT | ctrl_DIV)));



    mult_ctrl ctrl(.last3(init_cycle ? paddedBonus[2:0] : hilo[2:0]), .counter(cycle), .add(ctrl_add), .sub(ctrl_sub), .shift(ctrl_shift));
    

    wire overflow_occurred;
    wire final_overflow;
    wire overflow_reg_in = (ctrl_MULT | ctrl_DIV) ? 1'b0 : ((ctrl_add | ctrl_sub) & of) ? 1'b1 : overflow_occurred;
    
    
    register #(1) overflow_tracker(.clk(clock), .in_en(1'b1), .out_en(1'b1), .in(overflow_reg_in), .out(overflow_occurred), .clr((ctrl_MULT | ctrl_DIV))); 


    //we have overflow if any addition or sub overflows or if any of the high bits don't equal msb of lo. 
    assign final_overflow = 
    (!hilo[32] & (
        hilo[33] | hilo[34] | hilo[35] | hilo[36] | 
        hilo[37] | hilo[38] | hilo[39] | hilo[40] |
        hilo[41] | hilo[42] | hilo[43] | hilo[44] |
        hilo[45] | hilo[46] | hilo[47] | hilo[48] |
        hilo[49] | hilo[50] | hilo[51] | hilo[52] |
        hilo[53] | hilo[54] | hilo[55] | hilo[56] |
        hilo[57] | hilo[58] | hilo[59] | hilo[60] |
        hilo[61] | hilo[62] | hilo[63] | hilo[64] |
        hilo[65]
    )) | 
    (hilo[32] & (
        !hilo[33] | !hilo[34] | !hilo[35] | !hilo[36] |
        !hilo[37] | !hilo[38] | !hilo[39] | !hilo[40] |
        !hilo[41] | !hilo[42] | !hilo[43] | !hilo[44] |
        !hilo[45] | !hilo[46] | !hilo[47] | !hilo[48] |
        !hilo[49] | !hilo[50] | !hilo[51] | !hilo[52] |
        !hilo[53] | !hilo[54] | !hilo[55] | !hilo[56] |
        !hilo[57] | !hilo[58] | !hilo[59] | !hilo[60] |
        !hilo[61] | !hilo[62] | !hilo[63] | !hilo[64] |
        !hilo[65]
    ));
    
    // Output logic
    assign data_result = hilo[32:1];
    assign data_exception = (overflow_occurred | final_overflow);
    assign data_resultRDY = !ctrl_MULT & !ctrl_DIV & (cycle == 5'b10000);

endmodule