module multdiv(
	data_operandA, data_operandB, 
	ctrl_MULT, ctrl_DIV, 
	clock, 
	data_result, data_exception, data_resultRDY);
    
    input [31:0] data_operandA, data_operandB;
    input ctrl_MULT, ctrl_DIV, clock;
    output [31:0] data_result;
    output data_exception, data_resultRDY;
    //output [63:0] hilo_out;
    wire [31:0] mult_data_result;
    wire mult_data_exception, mult_data_resultRDY;

    mult multiplier(data_operandA, data_operandB, 
	ctrl_MULT, ctrl_DIV, 
	clock, 
	mult_data_result, mult_data_exception, mult_data_resultRDY);

    wire [31:0] div_data_result;
    wire div_data_exception, div_data_resultRDY;

    div divider(data_operandA, data_operandB, 
	ctrl_MULT, ctrl_DIV, 
	clock, 
	div_data_result, div_data_exception, div_data_resultRDY);
    
    //latches ctrl_mult to check if we are multiplying or dividing
    wire q;
    dffe_ref dff(q, ctrl_MULT, clock, (ctrl_MULT | ctrl_DIV), 1'b0); 
  
    assign data_result = q ? mult_data_result : div_data_result;
    assign data_exception = q ? mult_data_exception : div_data_exception;
    assign data_resultRDY = q ? mult_data_resultRDY : div_data_resultRDY;

endmodule