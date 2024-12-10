/**
 * READ THIS DESCRIPTION!
 *
 * This is your processor module that will contain the bulk of your code submission. You are to implement
 * a 5-stage pipelined processor in this module, accounting for hazards and implementing bypasses as
 * necessary.
 *
 * Ultimately, your processor will be tested by a master skeleton, so the
 * testbench can see which controls signal you active when. Therefore, there needs to be a way to
 * "inject" imem, dmem, and regfile interfaces from some external controller module. The skeleton
 * file, Wrapper.v, acts as a small wrapper around your processor for this purpose. Refer to Wrapper.v
 * for more details.
 *
 * As a result, this module will NOT contain the RegFile nor the memory modules. Study the inputs 
 * very carefully - the RegFile-related I/Os are merely signals to be sent to the RegFile instantiated
 * in your Wrapper module. This is the same for your memory elements. 
 *
 *
 */
 

module processor(
    BTNR,
    JB,
    JA1,
    JA2,
    JC1,
    JC2,
    JD1,
    JD2,
    ps2_clk,
    ps2_data,
    
    // Control signals
    stepper_clock,
    clock,                          // I: The master clock
    reset,                          // I: A reset signal

    // Imem
    address_imem,                   // O: The address of the data to get from imem
    q_imem,                         // I: The data from imem

    // Dmem
    address_dmem,                   // O: The address of the data to get or put from/to dmem
    data,                           // O: The data to write to dmem
    wren,                           // O: Write enable for dmem
    q_dmem,                         // I: The data from dmem

    // Regfile
    ctrl_writeEnable,               // O: Write enable for RegFile
    ctrl_writeReg,                  // O: Register to write to in RegFile
    ctrl_readRegA,                  // O: Register to read from port A of RegFile
    ctrl_readRegB,                  // O: Register to read from port B of RegFile
    data_writeReg,                  // O: Data to write to for RegFile
    data_readRegA,                  // I: Data from port A of RegFile
    data_readRegB,                   // I: Data from port B of RegFile
    
    // LED debugging
    LED,
    
    // Making sure that we are sending opcodes
    fd_op_test,
    
    // The registers that control targets of the units
    register1,
    register2,
    register3,
    register4,
    register5,
    register6,
    
    // Switches for mode control
    SW
	 
	);
	
	
	input BTNR;
	
	input [6:1] JB;
	output [4:1] JA1;
    output [4:1] JA2;
    output [4:1] JC1;
    output [4:1] JC2;
    output [4:1] JD1;
    output [4:1] JD2;
	inout ps2_clk;
	inout ps2_data;
	 
	

	// Control signals
	input clock, reset, stepper_clock;
	// Imem
    output [31:0] address_imem;
	input [31:0] q_imem;

	// Dmem
	output [31:0] address_dmem, data;
	output wren;
	input [31:0] q_dmem;

	// Regfile
	output ctrl_writeEnable;
	output [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
	output [31:0] data_writeReg;
	input [31:0] data_readRegA, data_readRegB;
	output [4:0] fd_op_test;
	
	output reg [15:0] LED;
	
	// registers for controlling target for barrel units
	input [31:0] register1;
	input [31:0] register2;
	input [31:0] register3;
	input [31:0] register4;
	input [31:0] register5;
	input [31:0] register6;
	// switches for animation vs keyboard
    input [15:0] SW;

    	
	wire [15:0] LED_wire1;
	wire [15:0] LED_wire2;
	wire [15:0] LED_wire3;
	
	assign fd_op_test = fd_op;
	
	
	

	/* YOUR CODE STARTS HERE */
	


    // PC ////////////////////////////////////////////////////////
    wire [4:0] dx_op, dx_rs, dx_rd, dx_rt, dx_shamt, dx_aluop;
    wire [31:0] ctrl_pc_in;
    wire [31:0] pc_out;
    wire to_stall = am_multdiv & !data_resultRDY || load_use_hazard || jr_hazard || blt_bne_hazard || bex_hazard;
    register #(32) pc(.clk(!clock),.in_en(!to_stall),.out_en(1'b1),.in(ctrl_pc_in),.out(pc_out),.clr(reset));
     
    wire [31:0] pc_plus_one;
    wire Coutadd, overflowadd; 
    cla_adder_32 pc_add(.A(pc_out),.B(32'b00000000000000000000000000000001),.Cin(1'b0),.S(pc_plus_one),.Cout(Coutadd),.overflow(overflowadd));

    wire ctrl_pc_branch = (dx_op == 5'b00010 & alu_ne) | 
                        (dx_op == 5'b00110 & alu_ilt);

    wire ctrl_JI = (dx_op == 5'b00011) | (dx_op == 5'b00001) | (dx_op == 5'b10110 & alu_a_bypass != 32'b0);
    wire ctrl_JII =  (dx_op == 5'b00100);
    assign ctrl_pc_in = ctrl_pc_branch ? jump_calc : 
                        ctrl_JI ? ctrl_dx_out[26:0] : 
                        ctrl_JII ? dx_out_A : pc_plus_one;
    assign address_imem = pc_out;
    
    // STALLING //////////////////////////////////////////////////

    wire [31:0] nop = 32'b00000000000000000000000000000000;

    wire load_use_hazard = (dx_op == 5'b01000) && // previous instruction is lw
                      ((fd_rs == dx_rd && dx_rd != 5'b0)); // next instruction reads from lw destination 
    wire jr_hazard = (fd_op == 5'b00100) && // JR instruction
                 ((fd_rs == dx_rd && dx_rd != 5'b0) ||  // value coming from previous instruction
                 (fd_rd == xm_rd && xm_rd != 5'b0));
    wire blt_bne_hazard = (fd_op == 5'b00010 || fd_op == 5'b00110) && 
                ((fd_rs == dx_rd) || (fd_rd == dx_rd)) &&
                (dx_op == 5'b01000);
    wire bex_hazard = (fd_op == 5'b10110) && !ctrl_dx_itype && dx_rd == 5'b11110;

    


    // FLUSHING //////////////////////////////////////////////////
    wire to_flush = (dx_op == 5'b00001) |  //j
                    (dx_op == 5'b00010 & alu_ne) | //bne
                    (dx_op == 5'b00011) | //jal
                    (dx_op == 5'b00100) | //jr
                    (dx_op == 5'b00110 & alu_ilt) |
                    (dx_op == 5'b10110 & (alu_a_bypass != 32'b0)); //blt


    // F/D ///////////////////////////////////////////////////////
    wire [63:0] fd_in, ctrl_fd_out;
    assign fd_in = {pc_plus_one,q_imem};
    register #(64) fd(.clk(!clock),.in_en(!to_stall),.out_en(1'b1),.in(to_flush ? {nop,nop} : fd_in),.out(ctrl_fd_out),.clr(reset));
    
    wire [31:0] fd_pc;
    wire [4:0] fd_op, fd_rd, fd_rs, fd_rt, fd_shamt, fd_aluop;
    wire [16:0] fd_immediate;
    wire [1:0] fd_zeroes;
    assign {fd_pc, fd_op, fd_rd, fd_rs, fd_rt, fd_shamt, fd_aluop, fd_zeroes} = ctrl_fd_out;
    assign {fd_immediate} = ctrl_fd_out[16:0];
        
        // will let the compiler optimize so I can have all opcodes for readability. 
    wire ctrl_itype = (fd_op == 5'b00101) | (fd_op == 5'b00111) | (fd_op == 5'b01000) |
                (fd_op == 5'b00001) | (fd_op == 5'b00010) | (fd_op == 5'b00011) |
                (fd_op == 5'b00100) | (fd_op == 5'b00110) | (fd_op == 5'b10110) | 
                (fd_op == 5'b10101);

        // Registerfile


 
    wire [31:0] reg_data_A, reg_data_B;
    assign ctrl_writeEnable = (!(mw_op == 5'b00111) & // not a sw
                              !(mw_op == 5'b00010) & // not a bne
                              !(ctrl_mw_out[31:0] == 32'b0) & // not a nop 
                              !(mw_op == 5'b00001) &  //not a j
                              !(mw_op == 5'b00110) & // not a blt 
                              !(mw_op == 5'b00100) & // not a jr
                              !(mw_op == 5'b10110)) | // not a bex
                              (pw_ready);  
                              // O: Write enable for RegFile
    assign ctrl_writeReg = sw_reg;                  // O: Register to write to in RegFile
    // Special read slicing for JII instructions
    assign ctrl_readRegA = (fd_op == 5'b00100 | fd_op == 5'b00010 | fd_op == 5'b00110) ? ctrl_fd_out[26:22] : 
                            (fd_op == 5'b10110) ? 5'b11110 : fd_rs;// O: Register to read from port A of RegFile
    assign ctrl_readRegB = (fd_op == 5'b00010 | fd_op == 5'b00110) ? fd_rs : (fd_op == 5'b00111) ? fd_rd : fd_rt;                  // O: Register to read from port B of RegFile
    assign data_writeReg = sw_data;                  // O: Data to write to for RegFile
    assign reg_data_A = data_readRegA;                  // I: Data from port A of RegFile
    assign reg_data_B = data_readRegB;                   // I: Data from port B of RegFile
	 

    // D/X ///////////////////////////////////////////////////////
    wire [127:0] dx_in, ctrl_dx_out;
    assign dx_in = {fd_pc, reg_data_A, reg_data_B, ctrl_fd_out[31:0]};
    register #(128) dx(.clk(!clock),.in_en(1'b1),.out_en(1'b1),.in((to_flush | to_stall) ? {nop,nop,nop,nop} : dx_in),.out(ctrl_dx_out),.clr(reset));
    

    wire about_to_multdiv = ((fd_op == 5'b00000) & (fd_aluop == 5'b00110)) | //mult
                      ((fd_op == 5'b00000) & (fd_aluop == 5'b00111)); //div
    wire am_multdiv;
    register #(1) am_md(.clk(!clock),.in_en(1'b1),
                        .out_en(1'b1),
                        .in((about_to_multdiv && !to_stall) ? 1'b1 : (data_resultRDY ? 1'b0 : am_multdiv)),
                        .out(am_multdiv),.clr(reset));


    wire [31:0] dx_out_A, dx_out_B;
    wire [31:0] dx_pc;
    
    wire [16:0] dx_immediate;
    wire [1:0] dx_zeroes;
    
    assign {dx_pc, dx_out_A, dx_out_B, dx_op, dx_rd, dx_rs, dx_rt, dx_shamt, dx_aluop, dx_zeroes} = ctrl_dx_out;
    assign {dx_immediate} = ctrl_dx_out[16:0];
    wire ctrl_dx_itype = (dx_op == 5'b00101) | (dx_op == 5'b00111) | (dx_op == 5'b01000) |
                        (dx_op == 5'b00001) | (dx_op == 5'b00011) | (dx_op == 5'b00100) | 
                        (dx_op == 5'b10110) | (dx_op == 5'b10101);


    wire dxpc_add,dxpc_of;
    wire [31:0] dx_imm_sx; 
    assign dx_imm_sx = dx_immediate[16] ? {15'b111111111111111, dx_immediate} : {15'b000000000000000, dx_immediate};
    
    wire [31:0] jump_calc;
    cla_adder_32 jump_add(.A(dx_pc),.B(dx_imm_sx),.Cin(1'b0),.S(jump_calc),.Cout(dxpc_add),.overflow(dxpc_of));

    wire [31:0] alu_a_bypass = 
    // From P/W stage
    (((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rd : dx_rs) == pw_rd && 
     pw_rd != 5'b0 && pw_ready) ? pw_data :
    // From X/M stage
    (dx_op == 5'b10110 && xm_op == 5'b10101) ? {5'b0, xm_immediate} : // checking bex after setx
    (((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rd : dx_rs) == xm_rd && 
     xm_rd != 5'b0 && !(xm_op == 5'b00111)) ? xm_out_O :
    // From M/W stage
    (dx_op == 5'b10110 && mw_rd == 5'b11110) ? mw_out_D :
    (((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rd : dx_rs) == mw_rd && 
     mw_rd != 5'b0 && !(mw_op == 5'b00111)) ? 
        (ctrl_lw_d ? mw_out_D : mw_out_O) :
    dx_out_A;  // Default: no bypass

wire [31:0] alu_b_bypass = 
    // From P/W stage
    ((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rs : dx_rt) == pw_rd && 
     pw_rd != 5'b0 && pw_ready ? pw_data :
    // From X/M stage
    ((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rs : dx_rt) == xm_rd &&  
     xm_rd != 5'b0 && !(xm_op == 5'b00111 || xm_op == 5'b00110) ? xm_out_O : 
    // From M/W stage
    ((dx_op == 5'b00010 || dx_op == 5'b00110) ? dx_rs : dx_rt) == mw_rd && 
     mw_rd != 5'b0 && !(mw_op == 5'b00111) ? 
        (ctrl_lw_d ? mw_out_D : mw_out_O) :
    // Special case for $r30 (rstatus) when there's an overflow
    (dx_rt == 5'b11110 && xm_alu_of) ? xm_of_val :
    (dx_rt == 5'b11110 && mw_alu_of) ? of_val :
    dx_out_B;  // Default: no bypass

    wire [4:0] alu_opcode = (ctrl_dx_itype && dx_op != 5'b00010 && dx_op != 5'b00110) ? 5'b00000 : 
                        (dx_op == 5'b00010 || dx_op == 5'b00110) ? 5'b00001 : 
                        dx_aluop;
    wire alu_ne, alu_ilt, alu_of;
    wire [31:0] aluout;
    alu my_alu(.data_operandA(alu_a_bypass), .data_operandB(ctrl_dx_itype ? dx_imm_sx : alu_b_bypass), 
    .ctrl_ALUopcode((ctrl_dx_itype) ? 5'b00000 : 
                    (dx_op == 5'b00010 | dx_op == 5'b00110) ? 5'b00001 : dx_aluop), 
    .ctrl_shiftamt(dx_shamt), 
    .data_result(aluout), 
    .isNotEqual(alu_ne), 
    .isLessThan(alu_ilt), 
    .overflow(alu_of));

    // P/W ///////////////////////////////////////////////////////
    
    wire ctrl_mult = !ctrl_dx_itype & (dx_op == 5'b00000) & (dx_aluop == 5'b00110); 
    wire ctrl_div = !ctrl_dx_itype & (dx_op ==5'b00000) & (dx_aluop == 5'b00111);

    
    wire [69:0] multdiv_latch;
    wire [31:0] multdiv_A, multdiv_B;
    wire [4:0] multdiv_rd;
    wire is_div;
    
    register #(70) md(.clk(!clock),.in_en(ctrl_div | ctrl_mult),.out_en(1'b1),.in({ctrl_div, dx_rd,alu_a_bypass,alu_b_bypass}),.out(multdiv_latch),.clr(reset));
    assign {is_div, multdiv_rd, multdiv_A, multdiv_B} = multdiv_latch;


    wire [38:0] ctrl_pw_out;
    register #(39) pw(.clk(!clock),.in_en(1'b1),.out_en(1'b1),.in({exception, am_multdiv ? data_resultRDY : 1'b0,multdiv_rd,multdiv_data[31:0]}),.out(ctrl_pw_out),.clr(reset));
    wire [4:0] pw_rd; 
    wire pw_ready,md_except;
    wire [31:0] pw_data;
    assign {md_except, pw_ready, pw_rd, pw_data} = ctrl_pw_out;

    wire exception, data_resultRDY;
    wire [31:0] multdiv_data;
    multdiv mdunit(.data_operandA(multdiv_A),.data_operandB(multdiv_B),.ctrl_MULT(ctrl_mult),.ctrl_DIV(ctrl_div),
    .clock(clock),.data_result(multdiv_data),.data_exception(exception),.data_resultRDY(data_resultRDY));    

   

    // X/M ///////////////////////////////////////////////////////
    wire [128:0] xm_in, ctrl_xm_out;
    assign xm_in = {alu_of, dx_pc, aluout, dx_out_B, ctrl_dx_out[31:0]};
    register #(129) xm(.clk(!clock),.in_en(1'b1),.out_en(1'b1),.in(xm_in),.out(ctrl_xm_out),.clr(reset));
    wire [31:0] xm_out_O, xm_out_B, xm_pc;
    wire [4:0] xm_op, xm_rs, xm_rd, xm_rt, xm_shamt, xm_aluop;
    wire [16:0] xm_immediate;
    wire [1:0] xm_zeroes;
    wire xm_alu_of;
    
    assign {xm_alu_of, xm_pc, xm_out_O, xm_out_B, xm_op, xm_rd, xm_rs, xm_rt, xm_shamt, xm_aluop, xm_zeroes} = ctrl_xm_out;
    assign {xm_immediate} = ctrl_xm_out[16:0];
    wire ctrl_xm_itype = (xm_op == 5'b00101) | (xm_op == 5'b00111) | (xm_op == 5'b01000) |
                        (xm_op == 5'b00001) | (xm_op == 5'b00011) | (xm_op == 5'b00100) | 
                        (xm_op == 5'b10110) | (xm_op == 5'b10101);

    wire [31:0] xm_of_val = (xm_aluop == 5'b00001) ? 32'b00000000000000000000000000000011 :
                  (xm_op == 5'b00101) ? 32'b00000000000000000000000000000010 :
                  32'b00000000000000000000000000000001;
        // Dmem

    wire [31:0] dmem_data_bypass = 
    // From X/M stage
    (((xm_rt == mw_rd) || (xm_rd == mw_rd)) && mw_rd != 5'b0 && 
     mw_op == 5'b01000) ?  // is a load word
        mw_out_D :  // bypass the loaded data
    // From M/W stage
    (((xm_rt == mw_rd) || (xm_rd == mw_rd)) && mw_rd != 5'b0 && 
     !(mw_op == 5'b00111) &&  // not sw
     !(mw_op == 5'b00010) &&  // not bne
     !(mw_op == 5'b00110) &&  // not blt
     !(mw_op == 5'b00001)) ?  // not j
        (ctrl_lw_d ? mw_out_D : mw_out_O) :
    xm_out_B;  // Default: no bypass
    
    // TODO make ctrl_dmem_we
    wire ctrl_dmem_we = (xm_op == 5'b00111);
    assign address_dmem = xm_out_O;                   // O: The address of the data to get or put from/to dmem
    assign data = dmem_data_bypass;                           // O: The data to write to dmem
    assign wren = ctrl_dmem_we;                           // O: Write enable for dmem


    // M/W ///////////////////////////////////////////////////////
    wire [128:0] mw_in, ctrl_mw_out;
    assign mw_in = {xm_alu_of, xm_pc, xm_out_O,q_dmem, ctrl_xm_out[31:0]};

    register #(129) mw(.clk(!clock),.in_en(1'b1),.out_en(1'b1),.in(mw_in),.out(ctrl_mw_out),.clr(reset));
    wire [31:0] mw_out_O, mw_out_D, mw_pc;
    wire [4:0] mw_op, mw_rs, mw_rd, mw_rt, mw_shamt, mw_aluop;
    wire [16:0] mw_immediate;
    wire [1:0] mw_zeroes;
    wire mw_alu_of;
    
    assign {mw_alu_of, mw_pc, mw_out_O, mw_out_D, mw_op, mw_rd, mw_rs, mw_rt, mw_shamt, mw_aluop, mw_zeroes} = ctrl_mw_out;
    assign {mw_immediate} = ctrl_mw_out[16:0];

    wire ctrl_lw_d = (mw_op == 5'b01000);
    wire [31:0] of_val = (mw_aluop == 5'b00001) ? 32'b00000000000000000000000000000011 :
                  (mw_op == 5'b00101) ? 32'b00000000000000000000000000000010 :
                  32'b00000000000000000000000000000001;

    wire exception_type = (mw_aluop == 5'b00001) || (mw_op == 5'b00101) || 
                     ((mw_aluop == 5'b00000 || mw_aluop == 5'b00110 || 
                       mw_aluop == 5'b00111) && mw_op == 5'b00000);


    wire [31:0] md_except_val = is_div ? 32'b00000000000000000000000000000101 : 32'b00000000000000000000000000000100;
    wire [4:0] sw_reg = (mw_alu_of || mw_op == 5'b10101) ? 5'b11110 : 
                    (pw_ready && md_except) ? 5'b11110 :
                    (pw_ready) ? pw_rd :
                    (mw_op == 5'b00011) ? 5'b11111 : mw_rd;

    wire [31:0] sw_data = (mw_alu_of && exception_type) ? of_val :
                    (pw_ready && md_except) ? md_except_val :
                    (mw_op == 5'b10101) ? {5'b0, ctrl_mw_out[26:0]} : 
                    (pw_ready) ? pw_data :
                    ctrl_lw_d ? mw_out_D : 
                    (mw_op == 5'b00011) ? mw_pc : mw_out_O;



////////////////////////////////              STEPPERS                /////////////////////////////////////////////////////////////////////
    reg [31:0] curr_reg1;
    reg [31:0] curr_reg2;
    
    always @(negedge clock) begin
        if (sw_reg == 5'b00001) curr_reg1 = sw_data;
        if (sw_reg == 5'b00010) curr_reg2 = sw_data;
    end 
   
    reg [2:0] curr_reel; 
    wire [5:0] update;
    reg just_updated;
    reg slow_clock;
    reg [12:0] slow_clock_div;
    always @(posedge clock) begin
        slow_clock_div = slow_clock_div + 1;
        if (slow_clock_div == 25'b1) begin
                if (!just_updated && update[0] || curr_reel == 2'b00) curr_reel = curr_reel+1;
                just_updated <= update[0];       
        end
//        if ((curr_reel == 3'b000 && update[0]) ||
//        (curr_reel == 3'b001 && update[1]) || 
//        (curr_reel == 3'b010 && update[2])) begin
//        curr_reel = curr_reel + 1;
//        end
 
    end 
//(curr_reel == 3'b000)
    // todo: pass inouts from board to top level module and all the way down
    
    // HARDCODED OFFSETS
    wire [9:0] offset1;
    wire [9:0] offset2;
    wire [9:0] offset3;
    wire [9:0] offset4;
    wire [9:0] offset5;
    wire [9:0] offset6;
    
    assign offset1 = 16'b0;
    assign offset2 = 16'b0;
    assign offset3 = 16'b0;
    assign offset4 = 16'b0;
 
     
    stepper stepper1(stepper_clock, BTNR, JB[1], JA1[4:1], ps2_clk, ps2_data,(curr_reel == 3'b001),update[0], LED_wire1, register1, SW, offset1);
    stepper stepper2(stepper_clock, BTNR, JB[2], JA2[4:1], ps2_clk, ps2_data,(curr_reel == 3'b010),update[1], LED_wire2, register2, SW, offset2);
    stepper stepper3(stepper_clock, BTNR, JB[3], JD1[4:1], ps2_clk, ps2_data,(curr_reel == 3'b011),update[2], LED_wire3, register3, SW, offset3); // @TODO: change JB on this one
    stepper stepper4(stepper_clock, BTNR, JB[4], JC2[4:1], ps2_clk, ps2_data,(curr_reel == 3'b100),update[2], LED_wire3, register4, SW, offset4);
    always @(posedge stepper_clock) begin   
        LED <= {LED_wire1};
    end

	/* END CODE */

endmodule
