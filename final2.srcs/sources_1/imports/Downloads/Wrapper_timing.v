`timescale 1ns / 1ps
/**
 * 
 * READ THIS DESCRIPTION:
 *
 * This is the Wrapper module that will serve as the header file combining your processor, 
 * RegFile and Memory elements together.
 *
 * This file will be used to generate the bitstream to upload to the FPGA.
 * We have provided a sibling file, Wrapper_tb.v so that you can test your processor's functionality.
 * 
 * We will be using our own separate Wrapper_tb.v to test your code. You are allowed to make changes to the Wrapper files 
 * for your own individual testing, but we expect your final processor.v and memory modules to work with the 
 * provided Wrapper interface.
 * 
 * Refer to Lab 5 documents for detailed instructions on how to interface 
 * with the memory elements. Each imem and dmem modules will take 12-bit 
 * addresses and will allow for storing of 32-bit values at each address. 
 * Each memory module should receive a single clock. At which edges, is 
 * purely a design choice (and thereby up to you). 
 * 
 * You must change line 36 to add the memory file of the test you created using the assembler
 * For example, you would add sample inside of the quotes on line 38 after assembling sample.s
 *
 **/
 
module Wrapper (
    input clk_100mhz,
    input BTNU, BTNR,
    input [2:0] JB,
    output [4:1] JA1,
    output [4:1] JA2,
    inout ps2_clk,
    inout ps2_data,
    
    input [15:0] SW,
    output reg [15:0] LED);
    wire clock, reset;
    assign clock = clk_100mhz;
    assign reset = BTNU; 
	wire rwe, mwe;
	wire[4:0] rd, rs1, rs2;
	wire[31:0] instAddr, instData, 
		rData, regA, regB,
		memAddr, memDataIn, memDataOut, q_dmem, data;
    reg [15:0] SW_Q, SW_M;  
    
    wire io_read, io_write;
    
    assign io_read = (memAddr == 32'd4096) ? 1'b1: 1'b0;
    assign io_write = (memAddr == 32'd4097) ? 1'b1: 1'b0;
     always @(negedge clock) begin
           SW_M <= SW;
           SW_Q <= SW_M; 
       end
       
    //   always @(posedge clock) begin
    //       if (io_write == 1'b1) begin
     //          LED <= memDataIn[15:0];
    //       end else begin
     //          LED <= LED;
      //     end
      // end
    assign q_dmem = (io_read == 1'b1) ? SW_Q : memDataOut;
	// ADD YOUR MEMORY FILE HERE
	localparam INSTR_FILE = "ece_final_slow";
	
//	 BTNR,
//    JB,
//    JA,
//    ps2_clk,
//    ps2_data,
	
	
	reg [8:0] clk_div;
	reg cpu_clock;
	always @(posedge clock) begin
	   clk_div = clk_div + 1;
	   
	   if (clk_div == 9'b1) cpu_clock = ~cpu_clock;
//	   LED <= {register1[13:0],LED_wire[0]};
//	   LED <= {fd_op_test[4:0],LED_wire[0]};
	   LED <= {LED_wire [15:0]};
//	   LED <= {SW};

    end
    
    wire [15:0] LED_wire;
    
    // hello
    
	// Main Processing Unit
	processor CPU(.stepper_clock(clk_100mhz), .clock(cpu_clock), .reset(reset), 
								
		// ROM
		.address_imem(instAddr), .q_imem(instData),
									
		// Regfile
		.ctrl_writeEnable(rwe),     .ctrl_writeReg(rd),
		.ctrl_readRegA(rs1),     .ctrl_readRegB(rs2), 
		.data_writeReg(rData), .data_readRegA(regA), .data_readRegB(regB),
									
		// RAM
		.wren(mwe), .address_dmem(memAddr), 
		.data(memDataIn), .q_dmem(q_dmem),
		
		// stepper
		.BTNR(BTNR), .JB(JB),
		.JA1(JA1), .JA2(JA2), .ps2_clk(ps2_clk),
		.ps2_data(ps2_data),
		
		.LED(LED_wire),
		.fd_op_test(fd_op_test),
		
		// Registers for stepper targets
		.register1(register1),
		.register2(register2),
		
		// switches for mode control
        .SW(SW)		
		
		); 
		
		wire [4:0] fd_op_test;
	
	// Instruction Memory (ROM)
	ROM #(.MEMFILE({INSTR_FILE, ".mem"}))
	InstMem(.clk(cpu_clock), 
		.addr(instAddr[11:0]), 
		.dataOut(instData));
		
		
	ROM #(.MEMFILE({INSTR_FILE, ".mem"}))
	TestMem(.clk(cpu_clock), 
		.addr(12'b000000000000), 
		.dataOut(test_rom));
		
	wire [31:0] test_rom;
	
	
	wire [31:0] register1; 
	wire [31:0] register2;
	// Register File
	regfile RegisterFile(.clock(cpu_clock), 
		.ctrl_writeEnable(rwe), .ctrl_reset(reset), 
		.ctrl_writeReg(rd),
		.ctrl_readRegA(rs1), .ctrl_readRegB(rs2), 
		.data_writeReg(rData), .data_readRegA(regA), .data_readRegB(regB), .register1(register1),.register2(register2));
						
	// Processor Memory (RAM)
	RAM ProcMem(.clk(cpu_clock), 
		.wEn(mwe), 
		.addr(memAddr[11:0]), 
		.dataIn(memDataIn), 
		.dataOut(memDataOut));
		
	

endmodule
