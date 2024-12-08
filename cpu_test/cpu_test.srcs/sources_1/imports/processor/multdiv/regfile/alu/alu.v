module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
        
    input [31:0] data_operandA, data_operandB;
    input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

    output [31:0] data_result;
    output isNotEqual, isLessThan, overflow;

    // Wires for opcode and outputs
    wire [31:0] in0, in1, in2, in3, in4, in5;
    wire Coutadd, Coutsub, overflowadd, overflowsub;
    wire [31:0] notB;
    not_32 nb(notB, data_operandB);
    // Add/subtract operation (in0: add, in1: subtract)
    cla_adder_32 add(.A(data_operandA),.B(data_operandB),.Cin(1'b0),.S(in0),.Cout(Coutadd),.overflow(overflowadd));
    cla_adder_32 sub(.A(data_operandA),.B(notB),.Cin(1'b1),.S(in1),.Cout(Coutsub),.overflow(overflowsub));

    // overflow select for add or sub
    assign overflow = ctrl_ALUopcode[0] ? overflowsub : overflowadd;

    // and & or bitwise
    and_32 andm(.out(in2), .A(data_operandA), .B(data_operandB));
    or_32 orm(.out(in3), .A(data_operandA), .B(data_operandB));

    // Shift operations
    barrel_shifter shft_left(.out(in4), .A(data_operandA), .shamt(ctrl_shiftamt), .dir(1'b0), .fill(1'b0));  // Shift left
    barrel_shifter shft_right(.out(in5), .A(data_operandA), .shamt(ctrl_shiftamt), .dir(1'b1), .fill(data_operandA[31])); // Arithmetic right

    // Mux to select result based on opcode
    // i know this setup is a little silly with a bunch of 32 bit zeros but its just how i designed it originally and i dont really want to adjust it.
    mux_32 m32(data_result, ctrl_ALUopcode, in0, in1, in2, in3, in4, in5, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0, 32'b0);

    // Compute isEqual, isNotEqual, isLessThan
    wire isEqual, greaterThan;
    assign isNotEqual = !(in1 == 32'b0);
    assign greaterThan = in1[31] ? 1'b0 : 1'b1;
    
    // isLessThan calculation for both signed and unsigned comparisons
    wire signed_lt, unsigned_lt, smallSign, sameSign, slt;
    
    and sl(smallSign, data_operandA[31], data_operandB[31] ? 1'b0 : 1'b1);
    xnor sSign(sameSign, data_operandA[31], data_operandB[31]);
    and stillLess(slt, sameSign, in1[31]);
    or signed_lt_val(signed_lt, slt, smallSign);

    

    assign unsigned_lt = !Coutsub;
    assign isLessThan = ctrl_ALUopcode[0] ? signed_lt : unsigned_lt;
    
endmodule