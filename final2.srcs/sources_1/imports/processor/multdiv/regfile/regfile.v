module regfile (
    clock,
    ctrl_writeEnable, ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB, register1, register2, register3, register4, register5, register6
);

    input clock, ctrl_writeEnable, ctrl_reset;
    input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    input [31:0] data_writeReg;

    output [31:0] data_readRegA, data_readRegB;
    output [31:0] register1, register2, register3, register4, register5, register6;


    wire [31:0] wr;
    decoder d(.out(wr), .A(ctrl_writeReg )); 
	
	assign register1 = reg_vals[1];
	assign register2 = reg_vals[2];
	assign register3 = reg_vals[3];
	assign register4 = reg_vals[4];
	assign register5 = reg_vals[5];
	assign register6 = reg_vals[6];
	
    wire [31:0] reg_vals [31:0];
	assign reg_vals[0] = 32'b00000000000000000000000000000000; //reg 0 always reads 0

    genvar i; 

    
    generate 
        for (i=1; i < 32; i = i + 1) begin : reg_loop
            register #(32) reg1(.clk(clock), 
			.in_en(ctrl_writeEnable ? wr[i] : 1'b0), 
			.out_en(1'b1), .in(data_writeReg), 
			.out(reg_vals[i]),
			.clr(ctrl_reset)); 
        end
    endgenerate

	assign data_readRegA = reg_vals[ctrl_readRegA];
    assign data_readRegB = reg_vals[ctrl_readRegB];
endmodule


