`timescale 1 ns / 100 ps
module counter_tb;
    reg clk;
    wire [3:0] curr;

    counter c(clk, 1'b1, curr);


    initial begin

        clk = 0;
        
        // Time delay
        #360;
        $finish;

    end

    always 
        #10 clk = ~clk;

    always @(clk) begin
        #1
        if (clk) begin
        $display("clk:%b, counter:%b", clk, curr);
        end
    end

    initial begin
        $dumpfile("counter.vcd");

        $dumpvars(0, counter_tb);
    end


endmodule