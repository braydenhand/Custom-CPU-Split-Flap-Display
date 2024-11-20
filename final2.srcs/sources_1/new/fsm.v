`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:11:12 AM
// Design Name: 
// Module Name: fsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fsm(BTNL, CPU_RESETN,BTNR, LED, CA, CB, CC, CD, CE, CF, CG, AN);
    input BTNR, BTNL;
    output [1:0] LED;
    
    output CA, CB, CC, CD, CE, CF, CG, AN;
    reg CAr, CBr, CCr, CDr, CEr, CFr, CGr;
    assign {CA,CB, CC, CD, CE, CF, CG} = {CAr, CBr, CCr, CDr, CEr, CFr, CGr}; 
    input  CPU_RESETN;
    reg [1:0] curr_state;
    reg out;
    wire reset;
    assign LED[0] = out;
    assign reset = CPU_RESETN;
    assign AN = 1'b1;
    always @(posedge BTNL) begin

        if (BTNR & curr_state == 2'b00) begin
            curr_state <= 2'b01;
            out <= 1'b0;
            {CCr, CBr} <= 2'b00;
            {CAr, CDr, CEr, CFr, CGr} <= 5'b11111;
            end
         
        
        else if (BTNR & curr_state == 2'b01) begin
            curr_state <= 2'b10;
            out <= 1'b0;
            
            {CAr, CBr, CGr, CDr, CEr} <= 5'b00000;
            {CCr, CFr} <= 2'b11;
            end
        
        else if ((BTNR & curr_state == 2'b10)) begin
            curr_state <= 2'b11;
            out <= 1'b1;
            
            {CCr, CBr, CAr, CDr, CGr} <= 5'b00000;
            {CEr, CFr} <= 2'b11;
            end
            
        
        else if ((BTNR & curr_state == 2'b11)  | reset) begin
            curr_state <= 2'b00;
            out <= 1'b0;
            
            {CAr, CBr, CCr, CDr, CEr, CFr} <=6'b000000;
            {CGr} <= 1'b1;
            end
    end
endmodule


//        if (BTNR) begin
//            curr_state <= curr_state + 1;
//            if (curr_state == 2'b11) begin
//            out <= 1'b1;
//            end  
//            else out <= 1'b0;
//        end/