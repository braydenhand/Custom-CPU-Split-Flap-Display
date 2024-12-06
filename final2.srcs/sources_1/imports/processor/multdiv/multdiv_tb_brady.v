`timescale 1ns/100ps
module multdiv_tb_brady;

    // module inputs
    reg clock = 0, ctrl_Mult, ctrl_Div, interrupt;
    reg signed [31:0] operandA, operandB;
    wire signed [63:0] hilo, newone;  // Changed to wire since it's an output from the DUT
    wire [31:0] alu_out;  // Changed to wire since it's an output from the DUT
    wire [31:0] alu_A;  // Changed to wire since it's an output from the DUT
    wire [31:0] alu_B;  // Changed to wire since it's an output from the DUT
	wire ctrl_add, ctrl_sub, ctrl_shift;
	wire [3:0] cycle;
	wire of, prev_sign, bonus_bit;
    // expected module outputs
    reg exp_except;
    reg signed [31:0] exp_result;

    // module outputs
    wire ready, except;
    wire signed [31:0] result;

    // For tracking HILO changes
    reg signed [65:0] prev_hilo = 0;

    // Instantiate multdiv
    multdiv tester(operandA, operandB, ctrl_Mult, ctrl_Div, clock,
        result, except, ready, hilo);

    // Initialize our strings
    reg[511:0] testName;

    // Where to store file error codes
    integer     expFile,        diffFile,      actFile,
                expScan;

    // Metadata
    integer errors = 0,
            tests = 0;

    reg[7:0] counter = 0;
    integer i = 0;

    initial begin
        // Assign Command Line Arguments to the Inputs
        if(! $value$plusargs("test=%s", testName)) begin
            $display("Please specify the test");
            $finish;
        end

        // Output file name
        $dumpfile({testName, ".vcd"});
        // Module to capture and what level, 0 means all wires
        $dumpvars(0, multdiv_tb_brady);

        // Read the expected file
        expFile = $fopen({testName, "_exp.csv"}, "r");

        // Check for any errors in opening the file
        if(!expFile) begin
            $display("Couldn't read the output file.",
                "\nMake sure you are in the right directory and the %0s_exp.csv file exists.", testName);
            $finish;
        end

        // Create the files to store the output
        actFile   = $fopen({testName, "_actual.csv"},   "w");
        diffFile  = $fopen({testName, "_diff.csv"},  "w");

        // Add the headers to the Actual and Difference files
        $fdisplay(actFile, "OperandA, OperandB, Result, Exception");
        $fdisplay(diffFile, "Test Number, OperandA, OperandB, Result, Exception, Exp Result, Exp Exception");

        // Ignore the header of the Expected file
        expScan = $fscanf(expFile, "%s,%s,%s,%s,%s,%s,%s", 
            operandA, operandB, 
            ctrl_Mult, ctrl_Div, interrupt, 
            exp_result, exp_except);

        // Get the first line of the expected file
        expScan = $fscanf(expFile, "%d,%d,%d,%d,%d,%d,%d", 
            operandA, operandB, 
            ctrl_Mult, ctrl_Div, interrupt,
            exp_result, exp_except);

        // Iterate until reaching the end of the file
        while(expScan == 7) begin
            tests = tests + 1;
            
            // Display test inputs
            $display("\nTest %3d:", tests);
            $display("  Operand A: %d (%b)", operandA, operandA);
            $display("  Operand B: %d (%b)", operandB, operandB);

            @(negedge clock);
            {ctrl_Mult, ctrl_Div} = 0;

            if(interrupt) begin
                for (i = 0; i < 5; i = i + 1) begin
                    @(negedge clock);
                end
            end else begin
                for (i = 0; i < 100; i = i + 1) begin
                    @(negedge clock);
                    
                    
                    
					
					//$display("    alu_: %b", alu_out);
					//$display("   cycle: %b", cycle);
					$display("    HILO: %b %b", hilo[63:32], hilo[31:0]);
					//$display("    Ins : %b %b", alu_A, alu_B);
					//$display("    ALU_: %b %b", alu_out[31:16], alu_out[15:0]);
					//$display("    of_sub_prev_bb: %b%b%b%b", of, ctrl_sub, prev_sign, bonus_bit);
					//$display("    add_sub_shift: %b%b%b", ctrl_add, ctrl_sub, ctrl_shift);
					//$display("    newone: %b", newone);


                    if(ready) begin
                        i = 150;
                    end
                end

                if (i == 100) begin
                    $display("  Status: Timed Out");
                    // Write the timed out module outputs to the actual file
                    $fdisplay(actFile, "%d,%d,Timed Out,Timed Out",
                        operandA, operandB);
                    errors = errors + 1;
                    $fdisplay(diffFile, "%0d,%d,%d,Timed Out,Timed Out,%d,%d",
                        tests, operandA, operandB, exp_result, exp_except);
                end else begin
                    // Display final result
                    $display("  Final Result: %h (%d)", result, result);
                    $display("  Exception: %b", except);
                    
                    $fdisplay(actFile, "%d,%d,%d,%d",
                        operandA, operandB, result, except);
        
                    if((result !== exp_result) | (except !== exp_except)) begin
                        errors = errors + 1;
                        $display("  Status: FAILED");
                        $fdisplay(diffFile, "%0d,%d,%d,%d,%d,%d,%d",
                            tests, operandA, operandB, 
                            result, except,
                            exp_result, exp_except);
                    end else begin
                        $display("  Status: PASSED");
                    end
                end

                @(negedge clock);
            end

            // Read the next line
            expScan = $fscanf(expFile, "%d,%d,%d,%d,%d,%d,%d", 
                operandA, operandB, 
                ctrl_Mult, ctrl_Div, interrupt,
                exp_result, exp_except);
        end

        // Close the Files
        $fclose(expFile);
        $fclose(actFile);
        $fclose(diffFile);

        // Display the tests and errors
        $display("\nFinished %0d test%c with %0d error%c", 
            tests, "s"*(tests != 1), errors, "s"*(errors != 1));

        #100;
        $finish;
    end

    always 
        #20 clock = !clock;

endmodule