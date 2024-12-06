`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:19:57 AM
// Design Name: 
// Module Name: dff
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


module dff(q,d,clk,en,clr);

    input d,clk,en,clr;
    
    wire clr;
    
    output q;
    reg q;
    
    initial
    begin
        q = 1'b0;
    end
    
    
    always @(posedge clk or posedge clr) begin
        if (clr) begin
            q <= 1'b0;
        end else if (en) begin
            q <=d;
        end
    end
    
endmodule
