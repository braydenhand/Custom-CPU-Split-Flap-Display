module stepper(
    input CLK100MHZ, 
    input BTNR, 
    input [1:0] JB,
    output [4:1] JA,
    inout ps2_clk,
    inout ps2_data,
    input my_turn,
    output wire i_updated_wire,
    output reg [15:0] LED,
    input [31:0] curr_reg,
    input [15:0] SW 
    );
    reg [9:0] data_delay;
    reg [31:0] target; 
    reg init;
    reg [31:0] current; 
    reg accept_new_key;
    reg [17:0] count;
    reg [3:0] control;
    reg [24:0] check_target;
    
    reg i_updated;
    
    assign i_updated_wire = i_updated;
     // Lab Memory Files Location
    localparam FILES_PATH = "C:/Users/bkh18/ece350-newfinal/";
   
    wire read_data, busy, err;
    wire [9:0] posData;
    wire [7:0] scancode;
    //
    
    

    PS2Interface ps2(
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .clk(CLK100MHZ),
        .rst(1'b0),
        .tx_data(8'b0),
        .write_data(1'b0),
        .rx_data(scancode),
        .read_data(read_data),
        .busy(busy),
        .err(err)
    ); 
    
    
    wire [9:0] asciiData;
    RAM #(
        .DEPTH(94),                               // Set depth to contain every ASCII character
        .DATA_WIDTH(10),                           // Set data width for ASCII
        .ADDRESS_WIDTH($clog2(94) + 1),           // Set address width according to the ASCII count
        .MEMFILE({FILES_PATH, "lookup.mem"}))      // Memory initialization
    ScanCode(
        .clk(CLK100MHZ),                                // Rising edge of the 100 MHz clk
        .addr(scancode),                          // Address from the PS/2 interface
        .dataOut(posData),                      // ASCII data output
        .wEn(1'b0));        
 
    reg [14:0] clk_check;
    
 always @(posedge CLK100MHZ) begin
    LED = {target[15:0]};
//    LED = {16'b1111111111111111};

end
 
 
assign JA = control;
//    assign LED = {current[15:0]};  // width to match LED[15:0]
    always @(posedge CLK100MHZ) begin
        i_updated = (scancode == 8'b01001100);
        // do animation mode if SW[0] is on
        if (SW[0]) target = curr_reg;
//        else begin // else, get keyboard input

        // Add reset synchronization
        if (BTNR) begin
            check_target <= 25'b0;
            count <= 18'b0;
            current <= 32'b0;
            control <= 4'b1010;
            init <= 1'b0;
            accept_new_key <= 1'b1;
            data_delay <= 10'b0;
            target <= 32'b0;
        end
        else begin
          if (!accept_new_key) begin // if you arent currently ready to accept input
                if (!read_data) begin // button is let go
                    accept_new_key =1'b1; //accept new input
                end
            end
            if (read_data && accept_new_key) begin // if we press a button and we arent currently processing a button
                if (data_delay != 10'b1) begin // start a timer
                        data_delay = data_delay + 1; // wait till its done
                end 
                if (data_delay == 10'b1) begin // timer is done
                    data_delay = 10'b0; // reset timer
                    if (1'b1)begin
//                        target = curr_reg; // check this
                    end
//                    if (1'b1) begin // magic number that we set all our registers to so we know we are ready to take inputs
                        else if (posData != 10'b0 && !BTNR && my_turn) begin
                            target = posData; //get the key position
                        end
                        
                    accept_new_key = 1'b0; // dont accept any more input until button is let go
                end
            end
//        end


            // Initialization and stepping logic
            if (!init) begin
                count <= count + 1;
                if (JB[1]) begin // Magnet not found
                    if (count == 18'h3FFFF) begin  
                        case (control)
                            4'b1010: control <= 4'b0110;
                            4'b0110: control <= 4'b0101;
                            4'b0101: control <= 4'b1001;
                            4'b1001: control <= 4'b1010;
                            default: control <= 4'b1010;
                        endcase
                        count <= 18'b0;  // Reset count after state change
                    end
                end 
                else begin // Magnet found
                    init <= 1'b1;
                    current <= 32'b0;
                end
            end  
            else begin // Normal operation
                if (current != target) begin
                    count <= count + 1;
                    if (count == 18'h3FFFF) begin
                        case (control)
                            4'b1010: control <= 4'b0110;
                            4'b0110: control <= 4'b0101;
                            4'b0101: control <= 4'b1001;
                            4'b1001: control <= 4'b1010;
                            default: control <= 4'b1010;
                        endcase
                        count <= 18'b0;  // Reset count
                        if (current < 800) begin  // Position limit check
                            current <= current + 1;
                        end
                        else begin
                            current <= 32'b0;
                        end
                    end
                end
            end
        end
    end 
endmodule
