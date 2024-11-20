module stepper(
    input CLK100MHZ, 
    input BTNR, 
    input [1:0] JB,
    output [4:1] JA,
    output [15:0] LED,
    inout ps2_clk,
    inout ps2_data
    );
    
    reg [31:0] target; 
    reg init;
    reg [31:0] current; 
    reg accept_new_key;
    reg [19:0] count;
    reg [3:0] control;
     // Lab Memory Files Location
    localparam FILES_PATH = "C:/Users/bkh18/final2/";
    wire [7:0] scancode;
    wire read_data, busy, err;
    wire [6:0] posData;
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
    
    
    wire [6:0] asciiData;
    RAM #(
        .DEPTH(94),                               // Set depth to contain every ASCII character
        .DATA_WIDTH(7),                           // Set data width for ASCII
        .ADDRESS_WIDTH($clog2(94) + 1),           // Set address width according to the ASCII count
        .MEMFILE({FILES_PATH, "lookup.mem"}))      // Memory initialization
    ScanCode(
        .clk(CLK100MHZ),                                // Rising edge of the 100 MHz clk
        .addr(scancode),                          // Address from the PS/2 interface
        .dataOut(posData),                      // ASCII data output
        .wEn(1'b0));        

    // Assign control to both JA and LED outputs
    // vincent said to do this, i really didn't want to but he said to, im gonna
    assign JA = control;
//    assign LED = {busy, read_data, target[3:0]};

    assign LED = {posData[6:0], current[7:0]};
    reg [9:0] data_delay;
    // FSM logic
    always @ (posedge CLK100MHZ) begin
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
                if (posData != 7'b0 && !BTNR ) begin
                    target <= posData; //get the key position
                end
                    
                accept_new_key = 1'b0; // dont accept any more input until button is let go
            end
        end
        if (BTNR) begin
            // Reset logic when button is pressed
//            target <= 0;
            
            count <= 20'b0;  
            current <= 31'b0; // zero out current pos
            control <= 4'b1010; // Initial control state
            init <= 1'b0;
        end else if (!init) begin
            // Initialize position to zero if the magnet is found
            count <= count + 1;
            if (JB[1] == 1) begin // Magnet found, zero out position
                if (count == 20'b11111111111111111111) begin
                    // State transitions
                    case (control)
                        4'b1010: control <= 4'b0110;
                        4'b0110: control <= 4'b0101;
                        4'b0101: control <= 4'b1001;
                        4'b1001: control <= 4'b1010;
                    endcase         
                end
            end else begin
                // Magnet found, proceed to initialization
                init <= 1'b1;
                current <= 32'b0;
            end
        end else if (init) begin
//            posData = 6'b0;
            count <= count + 1;
            // FSM: Update control state based on count
            if (count == 19'b1111111111111111111 && current != target) begin
                // State transitions
                case (control)
                    4'b1010: control <= 4'b0110;
                    4'b0110: control <= 4'b0101;
                    4'b0101: control <= 4'b1001;
                    4'b1001: control <= 4'b1010;
                endcase
                current = current + 1; // Increment step count
                if (current >= 200) begin
                    current = 32'b0;
                end
               
            end
        end
    end
endmodule
