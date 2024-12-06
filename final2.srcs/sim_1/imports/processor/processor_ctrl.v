module processor_ctrl(instruction,ctrl_pc_jump,ctrl_pc_curr, ctrl_xmb, ctrl_mult, ctrl_div);
    input [31:0] instruction; 

    output ctrl_pc_mux, ctrl_xmb, ctrl_mult, ctrl_div;

    //todo add ctrl_pc_out, branch_add, ctrl_branch, pc_plus_one to inputs/outputs
   
    assign ctrl_pc_jump = 1'b0; // no jumps currently

    

    



endmodule