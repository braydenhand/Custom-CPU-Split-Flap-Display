// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Dec  7 19:35:43 2024
// Host        : P1-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/bkh18/ece350-newfinal/final2.sim/sim_1/impl/timing/xsim/Wrapper_time_impl.v
// Design      : Wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD1
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module Ps2Interface
   (read_data,
    ps2_clk_h,
    accept_new_key0,
    \rx_data_reg[6]_0 ,
    clk_100mhz_IBUF_BUFG,
    ps2_data_IBUF,
    ps2_clk_IBUF,
    pwropt);
  output read_data;
  output ps2_clk_h;
  output accept_new_key0;
  output [6:0]\rx_data_reg[6]_0 ;
  input clk_100mhz_IBUF_BUFG;
  input ps2_data_IBUF;
  input ps2_clk_IBUF;
  output pwropt;

  wire [7:0]CONV_INTEGER;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_state[4]_i_1__0_n_0 ;
  wire \FSM_onehot_state[5]_i_1__0_n_0 ;
  wire \FSM_onehot_state[5]_i_2__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire accept_new_key0;
  wire [3:0]bit_count_reg;
  wire clk_100mhz_IBUF_BUFG;
  wire \clk_count[0]_i_1__0_n_0 ;
  wire \clk_count[1]_i_1__0_n_0 ;
  wire \clk_count[2]_i_1__0_n_0 ;
  wire \clk_count[3]_i_2__0_n_0 ;
  wire [3:0]clk_count_reg;
  wire clk_inter;
  wire clk_inter0;
  wire \data_count[0]_i_1__0_n_0 ;
  wire \data_count[1]_i_1__0_n_0 ;
  wire \data_count[2]_i_1__0_n_0 ;
  wire \data_count[3]_i_2__0_n_0 ;
  wire [3:0]data_count_reg;
  wire data_inter;
  wire data_inter0;
  wire \frame_reg_n_0_[10] ;
  wire \frame_reg_n_0_[9] ;
  wire load_rx_data;
  wire [3:0]plusOp__1;
  wire ps2_clk_IBUF;
  wire ps2_clk_clean;
  wire ps2_clk_clean_i_1__0_n_0;
  wire ps2_clk_clean_i_2__0_n_0;
  wire ps2_clk_h;
  wire ps2_clk_s;
  wire ps2_data_IBUF;
  wire ps2_data_clean;
  wire ps2_data_clean_i_1__0_n_0;
  wire ps2_data_clean_i_2__0_n_0;
  wire ps2_data_h;
  wire ps2_data_s;
  wire read_data;
  wire reset_bit_count;
  wire [6:0]\rx_data_reg[6]_0 ;
  wire rx_parity;
  wire rx_parity_i_1__0_n_0;
  wire rx_parity_i_2__0_n_0;
  wire shift_frame;

  assign pwropt = load_rx_data;
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(ps2_clk_s),
        .I3(reset_bit_count),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555540444444)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(ps2_clk_s),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .I4(\FSM_onehot_state[5]_i_2__0_n_0 ),
        .I5(reset_bit_count),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(shift_frame),
        .I1(ps2_clk_s),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80888888)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(ps2_clk_s),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .I4(\FSM_onehot_state[5]_i_2__0_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000080008000000)) 
    \FSM_onehot_state[4]_i_1__0 
       (.I0(\FSM_onehot_state[5]_i_2__0_n_0 ),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[2]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(rx_parity),
        .I5(\frame_reg_n_0_[9] ),
        .O(\FSM_onehot_state[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000800)) 
    \FSM_onehot_state[5]_i_1__0 
       (.I0(\FSM_onehot_state[5]_i_2__0_n_0 ),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[2]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(rx_parity),
        .I5(\frame_reg_n_0_[9] ),
        .O(\FSM_onehot_state[5]_i_1__0_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_2__0 
       (.I0(bit_count_reg[1]),
        .I1(bit_count_reg[0]),
        .O(\FSM_onehot_state[5]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(reset_bit_count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(shift_frame),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    accept_new_key_i_1__0
       (.I0(read_data),
        .O(accept_new_key0));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1__0 
       (.I0(bit_count_reg[0]),
        .O(plusOp__1[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1__0 
       (.I0(bit_count_reg[1]),
        .I1(bit_count_reg[0]),
        .O(plusOp__1[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1__0 
       (.I0(bit_count_reg[2]),
        .I1(bit_count_reg[0]),
        .I2(bit_count_reg[1]),
        .O(plusOp__1[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_1__0 
       (.I0(bit_count_reg[3]),
        .I1(bit_count_reg[1]),
        .I2(bit_count_reg[0]),
        .I3(bit_count_reg[2]),
        .O(plusOp__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[0]),
        .Q(bit_count_reg[0]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[1]),
        .Q(bit_count_reg[1]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[2]),
        .Q(bit_count_reg[2]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[3]),
        .Q(bit_count_reg[3]),
        .R(reset_bit_count));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \clk_count[0]_i_1__0 
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[2]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[0]),
        .O(\clk_count[0]_i_1__0_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "148" *) 
  LUT4 #(
    .INIT(16'h8FF0)) 
    \clk_count[1]_i_1__0 
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[2]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[0]),
        .O(\clk_count[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \clk_count[2]_i_1__0 
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[2]),
        .O(\clk_count[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clk_count[3]_i_1__0 
       (.I0(clk_inter),
        .I1(ps2_clk_IBUF),
        .O(clk_inter0));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \clk_count[3]_i_2__0 
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[2]),
        .O(\clk_count[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[0]_i_1__0_n_0 ),
        .Q(clk_count_reg[0]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[1]_i_1__0_n_0 ),
        .Q(clk_count_reg[1]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[2]_i_1__0_n_0 ),
        .Q(clk_count_reg[2]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[3]_i_2__0_n_0 ),
        .Q(clk_count_reg[3]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b1)) 
    clk_inter_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_IBUF),
        .Q(clk_inter),
        .R(1'b0));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \data_count[0]_i_1__0 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[2]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[0]),
        .O(\data_count[0]_i_1__0_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "150" *) 
  LUT4 #(
    .INIT(16'h8FF0)) 
    \data_count[1]_i_1__0 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[2]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[0]),
        .O(\data_count[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \data_count[2]_i_1__0 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[2]),
        .O(\data_count[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_count[3]_i_1__0 
       (.I0(data_inter),
        .I1(ps2_data_IBUF),
        .O(data_inter0));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_count[3]_i_2__0 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[2]),
        .O(\data_count[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[0]_i_1__0_n_0 ),
        .Q(data_count_reg[0]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[1]_i_1__0_n_0 ),
        .Q(data_count_reg[1]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[2]_i_1__0_n_0 ),
        .Q(data_count_reg[2]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[3]_i_2__0_n_0 ),
        .Q(data_count_reg[3]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b1)) 
    data_inter_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_IBUF),
        .Q(data_inter),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[10] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(ps2_data_s),
        .Q(\frame_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[1]),
        .Q(CONV_INTEGER[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[2]),
        .Q(CONV_INTEGER[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[3]),
        .Q(CONV_INTEGER[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[4]),
        .Q(CONV_INTEGER[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[5]),
        .Q(CONV_INTEGER[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[6]),
        .Q(CONV_INTEGER[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[7] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[7]),
        .Q(CONV_INTEGER[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[8] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(\frame_reg_n_0_[9] ),
        .Q(CONV_INTEGER[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[9] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(\frame_reg_n_0_[10] ),
        .Q(\frame_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    load_rx_data_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1__0_n_0 ),
        .Q(load_rx_data),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF80)) 
    ps2_clk_clean_i_1__0
       (.I0(clk_inter),
        .I1(ps2_clk_IBUF),
        .I2(ps2_clk_clean_i_2__0_n_0),
        .I3(ps2_clk_clean),
        .O(ps2_clk_clean_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ps2_clk_clean_i_2__0
       (.I0(clk_count_reg[0]),
        .I1(clk_count_reg[1]),
        .I2(clk_count_reg[2]),
        .I3(clk_count_reg[3]),
        .O(ps2_clk_clean_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_clean_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_clean_i_1__0_n_0),
        .Q(ps2_clk_clean),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ps2_clk_h_inv_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_frame),
        .I3(reset_bit_count),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(ps2_data_h));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    ps2_clk_h_reg_inv
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_h),
        .Q(ps2_clk_h),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_s_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_clean),
        .Q(ps2_clk_s),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF80)) 
    ps2_data_clean_i_1__0
       (.I0(data_inter),
        .I1(ps2_data_IBUF),
        .I2(ps2_data_clean_i_2__0_n_0),
        .I3(ps2_data_clean),
        .O(ps2_data_clean_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ps2_data_clean_i_2__0
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[2]),
        .I3(data_count_reg[3]),
        .O(ps2_data_clean_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_clean_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_clean_i_1__0_n_0),
        .Q(ps2_data_clean),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_s_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_clean),
        .Q(ps2_data_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    read_data_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(read_data),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[0]),
        .Q(\rx_data_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[1]),
        .Q(\rx_data_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[2]),
        .Q(\rx_data_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[3]),
        .Q(\rx_data_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[4]),
        .Q(\rx_data_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[5]),
        .Q(\rx_data_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[6]),
        .Q(\rx_data_reg[6]_0 [6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    rx_parity_i_1__0
       (.I0(CONV_INTEGER[1]),
        .I1(CONV_INTEGER[0]),
        .I2(rx_parity_i_2__0_n_0),
        .O(rx_parity_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    rx_parity_i_2__0
       (.I0(CONV_INTEGER[3]),
        .I1(CONV_INTEGER[2]),
        .I2(CONV_INTEGER[6]),
        .I3(CONV_INTEGER[7]),
        .I4(CONV_INTEGER[4]),
        .I5(CONV_INTEGER[5]),
        .O(rx_parity_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_parity_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_parity_i_1__0_n_0),
        .Q(rx_parity),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Ps2Interface" *) 
module Ps2Interface_1062
   (read_data_0,
    ps2_clk_OBUF,
    ps2_data_OBUF,
    ps2_clk_TRI,
    ps2_data_TRI,
    accept_new_key0,
    Q,
    clk_100mhz_IBUF_BUFG,
    ps2_data_IBUF,
    ps2_clk_IBUF,
    ps2_clk_h,
    pwropt);
  output read_data_0;
  output ps2_clk_OBUF;
  output ps2_data_OBUF;
  output ps2_clk_TRI;
  output ps2_data_TRI;
  output accept_new_key0;
  output [7:0]Q;
  input clk_100mhz_IBUF_BUFG;
  input ps2_data_IBUF;
  input ps2_clk_IBUF;
  input ps2_clk_h;
  output pwropt;

  wire [7:0]CONV_INTEGER;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [7:0]Q;
  wire ZERO;
  wire accept_new_key0;
  wire [3:0]bit_count_reg;
  wire clk_100mhz_IBUF_BUFG;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[1]_i_1_n_0 ;
  wire \clk_count[2]_i_1_n_0 ;
  wire \clk_count[3]_i_2_n_0 ;
  wire [3:0]clk_count_reg;
  wire clk_inter;
  wire clk_inter0;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_2_n_0 ;
  wire [3:0]data_count_reg;
  wire data_inter;
  wire data_inter0;
  wire \frame_reg_n_0_[10] ;
  wire \frame_reg_n_0_[9] ;
  wire load_rx_data;
  wire [3:0]plusOp__1;
  wire ps2_clk_IBUF;
  wire ps2_clk_TRI;
  wire ps2_clk_clean;
  wire ps2_clk_clean_i_1_n_0;
  wire ps2_clk_clean_i_2_n_0;
  wire ps2_clk_h;
  wire ps2_clk_h_1;
  wire ps2_clk_s;
  wire ps2_data_IBUF;
  wire ps2_data_TRI;
  wire ps2_data_clean;
  wire ps2_data_clean_i_1_n_0;
  wire ps2_data_clean_i_2_n_0;
  wire ps2_data_h;
  wire ps2_data_s;
  wire read_data_0;
  wire reset_bit_count;
  wire rx_parity;
  wire rx_parity_i_1_n_0;
  wire rx_parity_i_2_n_0;
  wire shift_frame;

  assign ps2_clk_OBUF = ZERO;
  assign ps2_data_OBUF = ZERO;
  assign pwropt = load_rx_data;
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(reset_bit_count),
        .I3(ps2_clk_s),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555540444444)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(ps2_clk_s),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(reset_bit_count),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(shift_frame),
        .I1(ps2_clk_s),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80888888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ps2_clk_s),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000600000000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\frame_reg_n_0_[9] ),
        .I1(rx_parity),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(bit_count_reg[3]),
        .I4(bit_count_reg[2]),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\frame_reg_n_0_[9] ),
        .I1(rx_parity),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(bit_count_reg[3]),
        .I4(bit_count_reg[2]),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[1]),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(reset_bit_count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(shift_frame),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_wait_ack:00010000000000000,tx_wait_up_edge_before_ack:00001000000000000,tx_clk_h:10000000000000000,rx_down_edge:00000000000000010,rx_clk_l:00000000000000100,tx_error_no_ack:01000000000000000,rx_clk_h:00000000000001000,tx_wait_up_edge:00000100000000000,idle:00000000000000001,tx_clk_l:00000010000000000,tx_bring_data_down:00000000010000000,tx_force_clk_l:00000000001000000,tx_first_wait_down_edge:00000001000000000,tx_release_clk:00000000100000000,rx_data_ready:00000000000100000,rx_error_parity:00000000000010000,tx_received_ack:00100000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  GND GND_1
       (.G(ZERO));
  LUT1 #(
    .INIT(2'h1)) 
    accept_new_key_i_1
       (.I0(read_data_0),
        .O(accept_new_key0));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count_reg[0]),
        .O(plusOp__1[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "189" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[1]),
        .O(plusOp__1[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1 
       (.I0(bit_count_reg[2]),
        .I1(bit_count_reg[1]),
        .I2(bit_count_reg[0]),
        .O(plusOp__1[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_1 
       (.I0(bit_count_reg[3]),
        .I1(bit_count_reg[0]),
        .I2(bit_count_reg[1]),
        .I3(bit_count_reg[2]),
        .O(plusOp__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[0]),
        .Q(bit_count_reg[0]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[1]),
        .Q(bit_count_reg[1]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[2]),
        .Q(bit_count_reg[2]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(plusOp__1[3]),
        .Q(bit_count_reg[3]),
        .R(reset_bit_count));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hB333)) 
    \clk_count[0]_i_1 
       (.I0(clk_count_reg[2]),
        .I1(clk_count_reg[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[3]),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBC3C)) 
    \clk_count[1]_i_1 
       (.I0(clk_count_reg[2]),
        .I1(clk_count_reg[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[3]),
        .O(\clk_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA6A)) 
    \clk_count[2]_i_1 
       (.I0(clk_count_reg[2]),
        .I1(clk_count_reg[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_count_reg[3]),
        .O(\clk_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clk_count[3]_i_1 
       (.I0(ps2_clk_IBUF),
        .I1(clk_inter),
        .O(clk_inter0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \clk_count[3]_i_2 
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[1]),
        .I2(clk_count_reg[0]),
        .I3(clk_count_reg[2]),
        .O(\clk_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(clk_count_reg[0]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[1]_i_1_n_0 ),
        .Q(clk_count_reg[1]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[2]_i_1_n_0 ),
        .Q(clk_count_reg[2]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_count[3]_i_2_n_0 ),
        .Q(clk_count_reg[3]),
        .R(clk_inter0));
  FDRE #(
    .INIT(1'b1)) 
    clk_inter_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_IBUF),
        .Q(clk_inter),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hB333)) 
    \data_count[0]_i_1 
       (.I0(data_count_reg[2]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[3]),
        .O(\data_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBC3C)) 
    \data_count[1]_i_1 
       (.I0(data_count_reg[2]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[3]),
        .O(\data_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA6A)) 
    \data_count[2]_i_1 
       (.I0(data_count_reg[2]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[3]),
        .O(\data_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_count[3]_i_1 
       (.I0(ps2_data_IBUF),
        .I1(data_inter),
        .O(data_inter0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_count[3]_i_2 
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[0]),
        .I3(data_count_reg[2]),
        .O(\data_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(data_count_reg[0]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[1]_i_1_n_0 ),
        .Q(data_count_reg[1]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(data_count_reg[2]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b0)) 
    \data_count_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_count[3]_i_2_n_0 ),
        .Q(data_count_reg[3]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b1)) 
    data_inter_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_IBUF),
        .Q(data_inter),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[10] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(ps2_data_s),
        .Q(\frame_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[1]),
        .Q(CONV_INTEGER[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[2]),
        .Q(CONV_INTEGER[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[3]),
        .Q(CONV_INTEGER[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[4]),
        .Q(CONV_INTEGER[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[5]),
        .Q(CONV_INTEGER[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[6]),
        .Q(CONV_INTEGER[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[7] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(CONV_INTEGER[7]),
        .Q(CONV_INTEGER[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[8] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(\frame_reg_n_0_[9] ),
        .Q(CONV_INTEGER[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[9] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(shift_frame),
        .D(\frame_reg_n_0_[10] ),
        .Q(\frame_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    load_rx_data_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(load_rx_data),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ps2_clk_IOBUF_inst_i_3
       (.I0(ps2_clk_h_1),
        .I1(ps2_clk_h),
        .O(ps2_clk_TRI));
  LUT4 #(
    .INIT(16'hFE08)) 
    ps2_clk_clean_i_1
       (.I0(ps2_clk_IBUF),
        .I1(clk_inter),
        .I2(ps2_clk_clean_i_2_n_0),
        .I3(ps2_clk_clean),
        .O(ps2_clk_clean_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ps2_clk_clean_i_2
       (.I0(clk_count_reg[3]),
        .I1(clk_count_reg[1]),
        .I2(clk_count_reg[0]),
        .I3(clk_count_reg[2]),
        .O(ps2_clk_clean_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_clean_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_clean_i_1_n_0),
        .Q(ps2_clk_clean),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ps2_clk_h_inv_i_1
       (.I0(reset_bit_count),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_frame),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(ps2_data_h));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    ps2_clk_h_reg_inv
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_h),
        .Q(ps2_clk_h_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_s_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_clk_clean),
        .Q(ps2_clk_s),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ps2_data_IOBUF_inst_i_3
       (.I0(ps2_clk_h_1),
        .I1(ps2_clk_h),
        .O(ps2_data_TRI));
  LUT4 #(
    .INIT(16'hFE08)) 
    ps2_data_clean_i_1
       (.I0(ps2_data_IBUF),
        .I1(data_inter),
        .I2(ps2_data_clean_i_2_n_0),
        .I3(ps2_data_clean),
        .O(ps2_data_clean_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ps2_data_clean_i_2
       (.I0(data_count_reg[3]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[0]),
        .I3(data_count_reg[2]),
        .O(ps2_data_clean_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_clean_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_clean_i_1_n_0),
        .Q(ps2_data_clean),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_s_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(ps2_data_clean),
        .Q(ps2_data_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    read_data_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(read_data_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(load_rx_data),
        .D(CONV_INTEGER[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    rx_parity_i_1
       (.I0(CONV_INTEGER[1]),
        .I1(CONV_INTEGER[0]),
        .I2(rx_parity_i_2_n_0),
        .O(rx_parity_i_1_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    rx_parity_i_2
       (.I0(CONV_INTEGER[3]),
        .I1(CONV_INTEGER[2]),
        .I2(CONV_INTEGER[6]),
        .I3(CONV_INTEGER[7]),
        .I4(CONV_INTEGER[4]),
        .I5(CONV_INTEGER[5]),
        .O(rx_parity_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_parity_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_parity_i_1_n_0),
        .Q(rx_parity),
        .R(1'b0));
endmodule

module RAM
   (DOBDO,
    MemoryArray_reg_0,
    curr_reel_reg,
    MemoryArray_reg_1,
    MemoryArray_reg_2,
    S,
    MemoryArray_reg_3,
    MemoryArray_reg_4,
    MemoryArray_reg_5,
    MemoryArray_reg_6,
    MemoryArray_reg_7,
    MemoryArray_reg_8,
    \target_reg[9] ,
    MemoryArray_reg_9,
    MemoryArray_reg_10,
    MemoryArray_reg_11,
    MemoryArray_reg_12,
    MemoryArray_reg_13,
    MemoryArray_reg_14,
    MemoryArray_reg_15,
    MemoryArray_reg_16,
    MemoryArray_reg_17,
    \target_reg[9]_0 ,
    SR,
    E,
    init_reg,
    init_reg_0,
    clk_100mhz_IBUF_BUFG,
    Q,
    MemoryArray_reg_18,
    \target_reg[0] ,
    \target_reg[1] ,
    \target_reg[2] ,
    \count_reg[17]_i_3__0 ,
    \target_reg[3] ,
    \target_reg[4] ,
    \target_reg[5] ,
    \target_reg[6] ,
    \target_reg[7] ,
    \target_reg[8] ,
    \target_reg[9]_1 ,
    D,
    \target_reg[9]_2 ,
    read_data,
    \count_reg[17]_i_3_0 ,
    \target_reg[0]_0 ,
    \target_reg[1]_0 ,
    \target_reg[2]_0 ,
    \target_reg[3]_0 ,
    \target_reg[4]_0 ,
    \target_reg[5]_0 ,
    \target_reg[6]_0 ,
    \target_reg[7]_0 ,
    \target_reg[8]_0 ,
    \target_reg[9]_3 ,
    \target_reg[9]_4 ,
    read_data_0,
    \current_reg[0] ,
    \count_reg[0] ,
    BTNR_IBUF,
    \current_reg[0]_0 ,
    \current_reg[0]_1 ,
    \current_reg[0]_2 ,
    pwropt,
    pwropt_1);
  output [0:0]DOBDO;
  output MemoryArray_reg_0;
  output curr_reel_reg;
  output MemoryArray_reg_1;
  output MemoryArray_reg_2;
  output [0:0]S;
  output MemoryArray_reg_3;
  output MemoryArray_reg_4;
  output MemoryArray_reg_5;
  output MemoryArray_reg_6;
  output MemoryArray_reg_7;
  output MemoryArray_reg_8;
  output \target_reg[9] ;
  output MemoryArray_reg_9;
  output MemoryArray_reg_10;
  output MemoryArray_reg_11;
  output MemoryArray_reg_12;
  output MemoryArray_reg_13;
  output MemoryArray_reg_14;
  output MemoryArray_reg_15;
  output MemoryArray_reg_16;
  output MemoryArray_reg_17;
  output \target_reg[9]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output [0:0]init_reg;
  output [0:0]init_reg_0;
  input clk_100mhz_IBUF_BUFG;
  input [6:0]Q;
  input [6:0]MemoryArray_reg_18;
  input \target_reg[0] ;
  input \target_reg[1] ;
  input \target_reg[2] ;
  input [2:0]\count_reg[17]_i_3__0 ;
  input \target_reg[3] ;
  input \target_reg[4] ;
  input \target_reg[5] ;
  input \target_reg[6] ;
  input \target_reg[7] ;
  input \target_reg[8] ;
  input \target_reg[9]_1 ;
  input [0:0]D;
  input \target_reg[9]_2 ;
  input read_data;
  input [9:0]\count_reg[17]_i_3_0 ;
  input \target_reg[0]_0 ;
  input \target_reg[1]_0 ;
  input \target_reg[2]_0 ;
  input \target_reg[3]_0 ;
  input \target_reg[4]_0 ;
  input \target_reg[5]_0 ;
  input \target_reg[6]_0 ;
  input \target_reg[7]_0 ;
  input \target_reg[8]_0 ;
  input \target_reg[9]_3 ;
  input \target_reg[9]_4 ;
  input read_data_0;
  input \current_reg[0] ;
  input \count_reg[0] ;
  input BTNR_IBUF;
  input \current_reg[0]_0 ;
  input [0:0]\current_reg[0]_1 ;
  input \current_reg[0]_2 ;
  input pwropt;
  input pwropt_1;

  wire BTNR_IBUF;
  wire \CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_1 ;
  wire \CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_2 ;
  wire [0:0]D;
  wire [0:0]DOBDO;
  wire [0:0]E;
  wire MemoryArray_reg_0;
  wire MemoryArray_reg_1;
  wire MemoryArray_reg_10;
  wire MemoryArray_reg_11;
  wire MemoryArray_reg_12;
  wire MemoryArray_reg_13;
  wire MemoryArray_reg_14;
  wire MemoryArray_reg_15;
  wire MemoryArray_reg_16;
  wire MemoryArray_reg_17;
  wire [6:0]MemoryArray_reg_18;
  wire MemoryArray_reg_2;
  wire MemoryArray_reg_3;
  wire MemoryArray_reg_4;
  wire MemoryArray_reg_5;
  wire MemoryArray_reg_6;
  wire MemoryArray_reg_7;
  wire MemoryArray_reg_8;
  wire MemoryArray_reg_9;
  wire [6:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire clk_100mhz_IBUF_BUFG;
  wire \count[17]_i_10_n_0 ;
  wire \count[17]_i_7_n_0 ;
  wire \count[17]_i_8_n_0 ;
  wire \count[17]_i_9_n_0 ;
  wire \count_reg[0] ;
  wire [9:0]\count_reg[17]_i_3_0 ;
  wire [2:0]\count_reg[17]_i_3__0 ;
  wire \count_reg[17]_i_3_n_0 ;
  wire curr_reel_reg;
  wire \current_reg[0] ;
  wire \current_reg[0]_0 ;
  wire [0:0]\current_reg[0]_1 ;
  wire \current_reg[0]_2 ;
  wire [0:0]init_reg;
  wire [0:0]init_reg_0;
  wire [9:0]posData;
  wire pwropt;
  wire pwropt_1;
  wire read_data;
  wire read_data_0;
  wire [8:0]\stepper2/posData ;
  wire \target[9]_i_2_n_0 ;
  wire \target[9]_i_3__0_n_0 ;
  wire \target[9]_i_3_n_0 ;
  wire \target[9]_i_4__0_n_0 ;
  wire \target[9]_i_4_n_0 ;
  wire \target_reg[0] ;
  wire \target_reg[0]_0 ;
  wire \target_reg[1] ;
  wire \target_reg[1]_0 ;
  wire \target_reg[2] ;
  wire \target_reg[2]_0 ;
  wire \target_reg[3] ;
  wire \target_reg[3]_0 ;
  wire \target_reg[4] ;
  wire \target_reg[4]_0 ;
  wire \target_reg[5] ;
  wire \target_reg[5]_0 ;
  wire \target_reg[6] ;
  wire \target_reg[6]_0 ;
  wire \target_reg[7] ;
  wire \target_reg[7]_0 ;
  wire \target_reg[8] ;
  wire \target_reg[8]_0 ;
  wire \target_reg[9] ;
  wire \target_reg[9]_0 ;
  wire \target_reg[9]_1 ;
  wire \target_reg[9]_2 ;
  wire \target_reg[9]_3 ;
  wire \target_reg[9]_4 ;
  wire [15:10]NLW_MemoryArray_reg_DOADO_UNCONNECTED;
  wire [15:10]NLW_MemoryArray_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_MemoryArray_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_MemoryArray_reg_DOPBDOP_UNCONNECTED;
  wire [2:0]\NLW_count_reg[17]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[17]_i_3_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b1)) 
    \CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_gate_1_cooolDelFlop 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt),
        .Q(\CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_1 ));
  FDCE #(
    .INIT(1'b1)) 
    \CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_gate_3_cooolDelFlop 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt_1),
        .Q(\CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_control[3]_i_1 
       (.I0(\count_reg[0] ),
        .I1(E),
        .O(init_reg));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENBWREN=NEW:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "940" *) 
  (* RTL_RAM_NAME = "MemoryArray" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000003C00000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000020D019D0001015201D500000000000001FA012C00000000000000000000),
    .INIT_02(256'h00000245013F0164005E018A00000000000002200233004B003801AF00260000),
    .INIT_03(256'h0000027E026B017700A900E1000000000000025801C200710083001300F40000),
    .INIT_04(256'h0000002D0119000000CE0000000000000000029001E80107009600BC00000000),
    .INIT_05(256'h00000000005C0000005D00000000000000000000003D005B0000002700000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    MemoryArray_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,MemoryArray_reg_18,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_100mhz_IBUF_BUFG),
        .CLKBWRCLK(clk_100mhz_IBUF_BUFG),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_MemoryArray_reg_DOADO_UNCONNECTED[15:10],posData}),
        .DOBDO({NLW_MemoryArray_reg_DOBDO_UNCONNECTED[15:10],DOBDO,\stepper2/posData }),
        .DOPADOP(NLW_MemoryArray_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_MemoryArray_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(\CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_1 ),
        .ENBWREN(\CPU/stepper1/ScanCode/MemoryArray_reg_cooolgate_en_sig_2 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hB)) 
    \count[17]_i_1 
       (.I0(\count_reg[17]_i_3_n_0 ),
        .I1(\count_reg[0] ),
        .O(init_reg_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count[17]_i_10 
       (.I0(\count_reg[17]_i_3_0 [2]),
        .I1(MemoryArray_reg_9),
        .I2(\count_reg[17]_i_3_0 [0]),
        .I3(MemoryArray_reg_10),
        .I4(MemoryArray_reg_11),
        .I5(\count_reg[17]_i_3_0 [1]),
        .O(\count[17]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \count[17]_i_7 
       (.I0(\target_reg[9]_3 ),
        .I1(\target[9]_i_2_n_0 ),
        .I2(posData[9]),
        .I3(\count_reg[17]_i_3_0 [9]),
        .O(\count[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count[17]_i_8 
       (.I0(\count_reg[17]_i_3_0 [8]),
        .I1(MemoryArray_reg_15),
        .I2(\count_reg[17]_i_3_0 [6]),
        .I3(MemoryArray_reg_16),
        .I4(MemoryArray_reg_17),
        .I5(\count_reg[17]_i_3_0 [7]),
        .O(\count[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count[17]_i_8__0 
       (.I0(MemoryArray_reg_3),
        .I1(\count_reg[17]_i_3__0 [2]),
        .I2(\count_reg[17]_i_3__0 [1]),
        .I3(MemoryArray_reg_4),
        .I4(\count_reg[17]_i_3__0 [0]),
        .I5(MemoryArray_reg_5),
        .O(S));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count[17]_i_9 
       (.I0(\count_reg[17]_i_3_0 [5]),
        .I1(MemoryArray_reg_12),
        .I2(\count_reg[17]_i_3_0 [4]),
        .I3(MemoryArray_reg_13),
        .I4(MemoryArray_reg_14),
        .I5(\count_reg[17]_i_3_0 [3]),
        .O(\count[17]_i_9_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[17]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[17]_i_3_n_0 ,\NLW_count_reg[17]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_count_reg[17]_i_3_O_UNCONNECTED [3:0]),
        .S({\count[17]_i_7_n_0 ,\count[17]_i_8_n_0 ,\count[17]_i_9_n_0 ,\count[17]_i_10_n_0 }));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \current[9]_i_1 
       (.I0(\current_reg[0] ),
        .I1(E),
        .I2(\count_reg[0] ),
        .I3(BTNR_IBUF),
        .O(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \current[9]_i_2 
       (.I0(\current_reg[0]_0 ),
        .I1(\count_reg[17]_i_3_n_0 ),
        .I2(\current_reg[0]_1 ),
        .I3(\current_reg[0]_2 ),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[0]_i_1 
       (.I0(posData[0]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[0]_0 ),
        .O(MemoryArray_reg_10));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[0]_i_1__0 
       (.I0(\stepper2/posData [0]),
        .I1(curr_reel_reg),
        .I2(\target_reg[0] ),
        .O(MemoryArray_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[1]_i_1 
       (.I0(posData[1]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[1]_0 ),
        .O(MemoryArray_reg_11));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[1]_i_1__0 
       (.I0(\stepper2/posData [1]),
        .I1(curr_reel_reg),
        .I2(\target_reg[1] ),
        .O(MemoryArray_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[2]_i_1 
       (.I0(posData[2]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[2]_0 ),
        .O(MemoryArray_reg_9));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[2]_i_1__0 
       (.I0(\stepper2/posData [2]),
        .I1(curr_reel_reg),
        .I2(\target_reg[2] ),
        .O(MemoryArray_reg_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[3]_i_1 
       (.I0(posData[3]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[3]_0 ),
        .O(MemoryArray_reg_14));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[3]_i_1__0 
       (.I0(\stepper2/posData [3]),
        .I1(curr_reel_reg),
        .I2(\target_reg[3] ),
        .O(MemoryArray_reg_5));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[4]_i_1 
       (.I0(posData[4]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[4]_0 ),
        .O(MemoryArray_reg_13));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[4]_i_1__0 
       (.I0(\stepper2/posData [4]),
        .I1(curr_reel_reg),
        .I2(\target_reg[4] ),
        .O(MemoryArray_reg_4));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[5]_i_1 
       (.I0(posData[5]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[5]_0 ),
        .O(MemoryArray_reg_12));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[5]_i_1__0 
       (.I0(\stepper2/posData [5]),
        .I1(curr_reel_reg),
        .I2(\target_reg[5] ),
        .O(MemoryArray_reg_3));
  (* \PinAttr:I2:HOLD_DETOUR  = "180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \target[6]_i_1 
       (.I0(posData[6]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[6]_0 ),
        .O(MemoryArray_reg_16));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[6]_i_1__0 
       (.I0(\stepper2/posData [6]),
        .I1(curr_reel_reg),
        .I2(\target_reg[6] ),
        .O(MemoryArray_reg_6));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[7]_i_1 
       (.I0(posData[7]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[7]_0 ),
        .O(MemoryArray_reg_17));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[7]_i_1__0 
       (.I0(\stepper2/posData [7]),
        .I1(curr_reel_reg),
        .I2(\target_reg[7] ),
        .O(MemoryArray_reg_7));
  LUT3 #(
    .INIT(8'hB8)) 
    \target[8]_i_1 
       (.I0(posData[8]),
        .I1(\target[9]_i_2_n_0 ),
        .I2(\target_reg[8]_0 ),
        .O(MemoryArray_reg_15));
  (* \PinAttr:I2:HOLD_DETOUR  = "182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \target[8]_i_1__0 
       (.I0(\stepper2/posData [8]),
        .I1(curr_reel_reg),
        .I2(\target_reg[8] ),
        .O(MemoryArray_reg_8));
  LUT3 #(
    .INIT(8'hE2)) 
    \target[9]_i_1 
       (.I0(\target_reg[9]_3 ),
        .I1(\target[9]_i_2_n_0 ),
        .I2(posData[9]),
        .O(\target_reg[9]_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \target[9]_i_1__0 
       (.I0(\target_reg[9]_1 ),
        .I1(curr_reel_reg),
        .I2(DOBDO),
        .O(\target_reg[9] ));
  LUT5 #(
    .INIT(32'h00008088)) 
    \target[9]_i_2 
       (.I0(\target_reg[9]_4 ),
        .I1(read_data_0),
        .I2(\target[9]_i_3_n_0 ),
        .I3(\target[9]_i_4_n_0 ),
        .I4(D),
        .O(\target[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2000000)) 
    \target[9]_i_2__0 
       (.I0(D),
        .I1(\target[9]_i_3__0_n_0 ),
        .I2(\target[9]_i_4__0_n_0 ),
        .I3(\target_reg[9]_2 ),
        .I4(read_data),
        .O(curr_reel_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \target[9]_i_3 
       (.I0(posData[8]),
        .I1(posData[7]),
        .I2(posData[1]),
        .I3(posData[3]),
        .I4(posData[4]),
        .I5(posData[9]),
        .O(\target[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \target[9]_i_3__0 
       (.I0(\stepper2/posData [7]),
        .I1(\stepper2/posData [6]),
        .I2(\stepper2/posData [8]),
        .I3(\stepper2/posData [4]),
        .O(\target[9]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \target[9]_i_4 
       (.I0(posData[6]),
        .I1(posData[0]),
        .I2(posData[5]),
        .I3(posData[2]),
        .O(\target[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \target[9]_i_4__0 
       (.I0(\stepper2/posData [3]),
        .I1(\stepper2/posData [0]),
        .I2(\stepper2/posData [5]),
        .I3(\stepper2/posData [2]),
        .I4(\stepper2/posData [1]),
        .I5(DOBDO),
        .O(\target[9]_i_4__0_n_0 ));
endmodule

module ROM
   (instData,
    D,
    clk_100mhz_IBUF_BUFG,
    \dataOut_reg[27]_0 ,
    \dataOut_reg[27]_1 ,
    \dataOut_reg[23]_0 ,
    \dataOut_reg[4]_0 ,
    \dataOut_reg[3]_0 ,
    \dataOut_reg[2]_0 );
  output [5:0]instData;
  input [0:0]D;
  input clk_100mhz_IBUF_BUFG;
  input \dataOut_reg[27]_0 ;
  input \dataOut_reg[27]_1 ;
  input \dataOut_reg[23]_0 ;
  input \dataOut_reg[4]_0 ;
  input \dataOut_reg[3]_0 ;
  input \dataOut_reg[2]_0 ;

  wire [0:0]D;
  wire clk_100mhz_IBUF_BUFG;
  wire \dataOut_reg[23]_0 ;
  wire \dataOut_reg[27]_0 ;
  wire \dataOut_reg[27]_1 ;
  wire \dataOut_reg[2]_0 ;
  wire \dataOut_reg[3]_0 ;
  wire \dataOut_reg[4]_0 ;
  wire [5:0]instData;

  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[22] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(instData[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \dataOut_reg[23] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\dataOut_reg[23]_0 ),
        .Q(instData[4]),
        .S(\dataOut_reg[27]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \dataOut_reg[27] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\dataOut_reg[27]_1 ),
        .Q(instData[5]),
        .S(\dataOut_reg[27]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \dataOut_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\dataOut_reg[2]_0 ),
        .Q(instData[0]),
        .S(\dataOut_reg[27]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \dataOut_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\dataOut_reg[3]_0 ),
        .Q(instData[1]),
        .S(\dataOut_reg[27]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \dataOut_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\dataOut_reg[4]_0 ),
        .Q(instData[2]),
        .S(\dataOut_reg[27]_0 ));
endmodule

(* ECO_CHECKSUM = "dc6426ee" *) (* INSTR_FILE = "addi_basic" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Wrapper
   (clk_100mhz,
    BTNU,
    BTNR,
    JB,
    JA1,
    JA2,
    ps2_clk,
    ps2_data,
    SW,
    LED);
  input clk_100mhz;
  input BTNU;
  input BTNR;
  input [2:0]JB;
  output [4:1]JA1;
  output [4:1]JA2;
  inout ps2_clk;
  inout ps2_data;
  input [15:0]SW;
  output [15:0]LED;

  wire BTNR;
  wire BTNR_IBUF;
  wire BTNU;
  wire BTNU_IBUF;
  wire CPU_n_10;
  wire CPU_n_5;
  wire CPU_n_6;
  wire CPU_n_62;
  wire CPU_n_63;
  wire CPU_n_64;
  wire CPU_n_65;
  wire CPU_n_8;
  wire CPU_n_9;
  wire [4:1]JA1;
  wire [4:1]JA1_OBUF;
  wire [4:1]JA2;
  wire [4:1]JA2_OBUF;
  wire [15:0]LED;
  wire [14:0]LED_OBUF;
  wire [14:0]LED_wire;
  wire RegisterFile_n_0;
  wire RegisterFile_n_1;
  wire RegisterFile_n_10;
  wire RegisterFile_n_11;
  wire RegisterFile_n_12;
  wire RegisterFile_n_13;
  wire RegisterFile_n_14;
  wire RegisterFile_n_15;
  wire RegisterFile_n_16;
  wire RegisterFile_n_17;
  wire RegisterFile_n_18;
  wire RegisterFile_n_19;
  wire RegisterFile_n_2;
  wire RegisterFile_n_20;
  wire RegisterFile_n_21;
  wire RegisterFile_n_22;
  wire RegisterFile_n_23;
  wire RegisterFile_n_24;
  wire RegisterFile_n_25;
  wire RegisterFile_n_26;
  wire RegisterFile_n_27;
  wire RegisterFile_n_28;
  wire RegisterFile_n_29;
  wire RegisterFile_n_3;
  wire RegisterFile_n_30;
  wire RegisterFile_n_31;
  wire RegisterFile_n_4;
  wire RegisterFile_n_5;
  wire RegisterFile_n_6;
  wire RegisterFile_n_7;
  wire RegisterFile_n_8;
  wire RegisterFile_n_9;
  wire clk_100mhz;
  wire clk_100mhz_IBUF;
  wire clk_100mhz_IBUF_BUFG;
  wire clk_div;
  wire cpu_clock;
  wire cpu_clock_BUFG;
  wire cpu_clock_i_1_n_0;
  wire in1;
  wire in_en0;
  wire in_en011_out;
  wire in_en013_out;
  wire in_en015_out;
  wire in_en017_out;
  wire in_en019_out;
  wire in_en01_out;
  wire in_en021_out;
  wire in_en023_out;
  wire in_en025_out;
  wire in_en027_out;
  wire in_en029_out;
  wire in_en031_out;
  wire in_en033_out;
  wire in_en035_out;
  wire in_en037_out;
  wire in_en039_out;
  wire in_en03_out;
  wire in_en041_out;
  wire in_en043_out;
  wire in_en045_out;
  wire in_en047_out;
  wire in_en049_out;
  wire in_en051_out;
  wire in_en053_out;
  wire in_en055_out;
  wire in_en057_out;
  wire in_en059_out;
  wire in_en05_out;
  wire in_en07_out;
  wire in_en09_out;
  wire [27:2]instData;
  wire p_0_in;
  wire ps2_clk;
  wire ps2_clk_IBUF;
  wire ps2_clk_OBUF;
  wire ps2_clk_TRI;
  wire ps2_data;
  wire ps2_data_IBUF;
  wire ps2_data_OBUF;
  wire ps2_data_TRI;
  wire [31:0]rData;
  wire [4:0]rs1;

initial begin
 $sdf_annotate("Wrapper_time_impl.sdf",,,,"tool_control");
end
  IBUF BTNR_IBUF_inst
       (.I(BTNR),
        .O(BTNR_IBUF));
  IBUF BTNU_IBUF_inst
       (.I(BTNU),
        .O(BTNU_IBUF));
  processor CPU
       (.BTNR_IBUF(BTNR_IBUF),
        .JA1_OBUF(JA1_OBUF),
        .JA2_OBUF(JA2_OBUF),
        .Q(LED_wire),
        .clk0(cpu_clock_BUFG),
        .clk_100mhz_IBUF_BUFG(clk_100mhz_IBUF_BUFG),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .ctrl_reset(BTNU_IBUF),
        .dataOut0(CPU_n_62),
        .data_writeReg(rData),
        .in1(in1),
        .in_en0(in_en0),
        .in_en011_out(in_en011_out),
        .in_en013_out(in_en013_out),
        .in_en015_out(in_en015_out),
        .in_en017_out(in_en017_out),
        .in_en019_out(in_en019_out),
        .in_en01_out(in_en01_out),
        .in_en021_out(in_en021_out),
        .in_en023_out(in_en023_out),
        .in_en025_out(in_en025_out),
        .in_en027_out(in_en027_out),
        .in_en029_out(in_en029_out),
        .in_en031_out(in_en031_out),
        .in_en033_out(in_en033_out),
        .in_en035_out(in_en035_out),
        .in_en037_out(in_en037_out),
        .in_en039_out(in_en039_out),
        .in_en03_out(in_en03_out),
        .in_en041_out(in_en041_out),
        .in_en043_out(in_en043_out),
        .in_en045_out(in_en045_out),
        .in_en047_out(in_en047_out),
        .in_en049_out(in_en049_out),
        .in_en051_out(in_en051_out),
        .in_en053_out(in_en053_out),
        .in_en055_out(in_en055_out),
        .in_en057_out(in_en057_out),
        .in_en059_out(in_en059_out),
        .in_en05_out(in_en05_out),
        .in_en07_out(in_en07_out),
        .in_en09_out(in_en09_out),
        .instData({instData[27],instData[23:22],instData[4:2]}),
        .ps2_clk_IBUF(ps2_clk_IBUF),
        .ps2_clk_OBUF(ps2_clk_OBUF),
        .ps2_clk_TRI(ps2_clk_TRI),
        .ps2_data_IBUF(ps2_data_IBUF),
        .ps2_data_OBUF(ps2_data_OBUF),
        .ps2_data_TRI(ps2_data_TRI),
        .q_reg(CPU_n_8),
        .q_reg_0(CPU_n_9),
        .q_reg_1(CPU_n_10),
        .q_reg_10(RegisterFile_n_5),
        .q_reg_11(RegisterFile_n_6),
        .q_reg_12(RegisterFile_n_7),
        .q_reg_13(RegisterFile_n_8),
        .q_reg_14(RegisterFile_n_9),
        .q_reg_15(RegisterFile_n_10),
        .q_reg_16(RegisterFile_n_11),
        .q_reg_17(RegisterFile_n_12),
        .q_reg_18(RegisterFile_n_13),
        .q_reg_19(RegisterFile_n_14),
        .q_reg_2(CPU_n_63),
        .q_reg_20(RegisterFile_n_15),
        .q_reg_21(RegisterFile_n_16),
        .q_reg_22(RegisterFile_n_17),
        .q_reg_23(RegisterFile_n_18),
        .q_reg_24(RegisterFile_n_19),
        .q_reg_25(RegisterFile_n_20),
        .q_reg_26(RegisterFile_n_21),
        .q_reg_27(RegisterFile_n_22),
        .q_reg_28(RegisterFile_n_23),
        .q_reg_29(RegisterFile_n_24),
        .q_reg_3(CPU_n_64),
        .q_reg_30(RegisterFile_n_25),
        .q_reg_31(RegisterFile_n_26),
        .q_reg_32(RegisterFile_n_27),
        .q_reg_33(RegisterFile_n_28),
        .q_reg_34(RegisterFile_n_29),
        .q_reg_35(RegisterFile_n_30),
        .q_reg_36(RegisterFile_n_31),
        .q_reg_4(CPU_n_65),
        .q_reg_5(RegisterFile_n_0),
        .q_reg_6(RegisterFile_n_1),
        .q_reg_7(RegisterFile_n_2),
        .q_reg_8(RegisterFile_n_3),
        .q_reg_9(RegisterFile_n_4),
        .q_reg_rep(CPU_n_5),
        .q_reg_rep_0(CPU_n_6),
        .rs1(rs1));
  ROM InstMem
       (.D(CPU_n_62),
        .clk_100mhz_IBUF_BUFG(clk_100mhz_IBUF_BUFG),
        .\dataOut_reg[23]_0 (CPU_n_63),
        .\dataOut_reg[27]_0 (CPU_n_65),
        .\dataOut_reg[27]_1 (CPU_n_9),
        .\dataOut_reg[2]_0 (CPU_n_64),
        .\dataOut_reg[3]_0 (CPU_n_8),
        .\dataOut_reg[4]_0 (CPU_n_10),
        .instData({instData[27],instData[23:22],instData[4:2]}));
  OBUF \JA1_OBUF[1]_inst 
       (.I(JA1_OBUF[1]),
        .O(JA1[1]));
  OBUF \JA1_OBUF[2]_inst 
       (.I(JA1_OBUF[2]),
        .O(JA1[2]));
  OBUF \JA1_OBUF[3]_inst 
       (.I(JA1_OBUF[3]),
        .O(JA1[3]));
  OBUF \JA1_OBUF[4]_inst 
       (.I(JA1_OBUF[4]),
        .O(JA1[4]));
  OBUF \JA2_OBUF[1]_inst 
       (.I(JA2_OBUF[1]),
        .O(JA2[1]));
  OBUF \JA2_OBUF[2]_inst 
       (.I(JA2_OBUF[2]),
        .O(JA2[2]));
  OBUF \JA2_OBUF[3]_inst 
       (.I(JA2_OBUF[3]),
        .O(JA2[3]));
  OBUF \JA2_OBUF[4]_inst 
       (.I(JA2_OBUF[4]),
        .O(JA2[4]));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(1'b0),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(LED_OBUF[8]),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(LED_OBUF[9]),
        .O(LED[9]));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[0]),
        .Q(LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[10] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[10]),
        .Q(LED_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[11] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[11]),
        .Q(LED_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[12] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[12]),
        .Q(LED_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[13] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[13]),
        .Q(LED_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[14] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[14]),
        .Q(LED_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[1]),
        .Q(LED_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[2]),
        .Q(LED_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[3]),
        .Q(LED_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[4]),
        .Q(LED_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[5]),
        .Q(LED_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[6]),
        .Q(LED_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[7] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[7]),
        .Q(LED_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[8] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[8]),
        .Q(LED_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[9] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(LED_wire[9]),
        .Q(LED_OBUF[9]),
        .R(1'b0));
  regfile RegisterFile
       (.clk_100mhz_IBUF_BUFG(clk_100mhz_IBUF_BUFG),
        .ctrl_reset(BTNU_IBUF),
        .data_writeReg(rData),
        .in1(in1),
        .in_en0(in_en0),
        .in_en011_out(in_en011_out),
        .in_en013_out(in_en013_out),
        .in_en015_out(in_en015_out),
        .in_en017_out(in_en017_out),
        .in_en019_out(in_en019_out),
        .in_en01_out(in_en01_out),
        .in_en021_out(in_en021_out),
        .in_en023_out(in_en023_out),
        .in_en025_out(in_en025_out),
        .in_en027_out(in_en027_out),
        .in_en029_out(in_en029_out),
        .in_en031_out(in_en031_out),
        .in_en033_out(in_en033_out),
        .in_en035_out(in_en035_out),
        .in_en037_out(in_en037_out),
        .in_en039_out(in_en039_out),
        .in_en03_out(in_en03_out),
        .in_en041_out(in_en041_out),
        .in_en043_out(in_en043_out),
        .in_en045_out(in_en045_out),
        .in_en047_out(in_en047_out),
        .in_en049_out(in_en049_out),
        .in_en051_out(in_en051_out),
        .in_en053_out(in_en053_out),
        .in_en055_out(in_en055_out),
        .in_en057_out(in_en057_out),
        .in_en059_out(in_en059_out),
        .in_en05_out(in_en05_out),
        .in_en07_out(in_en07_out),
        .in_en09_out(in_en09_out),
        .q_reg(RegisterFile_n_0),
        .q_reg_0(RegisterFile_n_1),
        .q_reg_1(RegisterFile_n_2),
        .q_reg_10(RegisterFile_n_11),
        .q_reg_11(RegisterFile_n_12),
        .q_reg_12(RegisterFile_n_13),
        .q_reg_13(RegisterFile_n_14),
        .q_reg_14(RegisterFile_n_15),
        .q_reg_15(RegisterFile_n_16),
        .q_reg_16(RegisterFile_n_17),
        .q_reg_17(RegisterFile_n_18),
        .q_reg_18(RegisterFile_n_19),
        .q_reg_19(RegisterFile_n_20),
        .q_reg_2(RegisterFile_n_3),
        .q_reg_20(RegisterFile_n_21),
        .q_reg_21(RegisterFile_n_22),
        .q_reg_22(RegisterFile_n_23),
        .q_reg_23(RegisterFile_n_24),
        .q_reg_24(RegisterFile_n_25),
        .q_reg_25(RegisterFile_n_26),
        .q_reg_26(RegisterFile_n_27),
        .q_reg_27(RegisterFile_n_28),
        .q_reg_28(RegisterFile_n_29),
        .q_reg_29(RegisterFile_n_30),
        .q_reg_3(RegisterFile_n_4),
        .q_reg_30(RegisterFile_n_31),
        .q_reg_4(RegisterFile_n_5),
        .q_reg_5(RegisterFile_n_6),
        .q_reg_6(RegisterFile_n_7),
        .q_reg_7(RegisterFile_n_8),
        .q_reg_8(RegisterFile_n_9),
        .q_reg_9(RegisterFile_n_10),
        .q_reg_i_4_0(CPU_n_6),
        .q_reg_i_4_1(CPU_n_5),
        .rs1(rs1));
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG clk_100mhz_IBUF_BUFG_inst
       (.I(clk_100mhz_IBUF),
        .O(clk_100mhz_IBUF_BUFG));
  IBUF clk_100mhz_IBUF_inst
       (.I(clk_100mhz),
        .O(clk_100mhz_IBUF));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT1 #(
    .INIT(2'h1)) 
    clk_div_i_1
       (.I0(clk_div),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_div),
        .R(1'b0));
  BUFG cpu_clock_BUFG_inst
       (.I(cpu_clock),
        .O(cpu_clock_BUFG));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cpu_clock_i_1
       (.I0(clk_div),
        .I1(cpu_clock),
        .O(cpu_clock_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpu_clock_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(cpu_clock_i_1_n_0),
        .Q(cpu_clock),
        .R(1'b0));
  IOBUF_UNIQ_BASE_ ps2_clk_IOBUF_inst
       (.I(ps2_clk_OBUF),
        .IO(ps2_clk),
        .O(ps2_clk_IBUF),
        .T(ps2_clk_TRI));
  IOBUF_HD1 ps2_data_IOBUF_inst
       (.I(ps2_data_OBUF),
        .IO(ps2_data),
        .O(ps2_data_IBUF),
        .T(ps2_data_TRI));
endmodule

module alu
   (q_reg,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    \i_/q_i_2_0 ,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output q_reg;
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  input [17:0]\i_/q_i_2_0 ;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;

  wire [17:0]\i_/q_i_2_0 ;
  wire \i_/q_i_3__0_n_0 ;
  wire \i_/q_i_4_n_0 ;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_/q_i_2 
       (.I0(\i_/q_i_3__0_n_0 ),
        .I1(\i_/q_i_2_0 [11]),
        .I2(\i_/q_i_2_0 [10]),
        .I3(\i_/q_i_2_0 [15]),
        .I4(\i_/q_i_2_0 [14]),
        .I5(\i_/q_i_4_n_0 ),
        .O(q_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_2__0 
       (.I0(\i_/q_i_2_0 [11]),
        .I1(\i_/q_i_2_0 [10]),
        .I2(q_reg_5),
        .I3(\i_/q_i_2_0 [3]),
        .I4(\i_/q_i_2_0 [2]),
        .I5(q_reg_0),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_/q_i_2__1 
       (.I0(q_reg_0),
        .I1(\i_/q_i_2_0 [2]),
        .I2(\i_/q_i_2_0 [3]),
        .I3(\i_/q_i_2_0 [0]),
        .I4(q_reg_4),
        .I5(\i_/q_i_2_0 [1]),
        .O(q_reg_2));
  LUT4 #(
    .INIT(16'h0002)) 
    \i_/q_i_2__2 
       (.I0(q_reg_6),
        .I1(\i_/q_i_2_0 [7]),
        .I2(\i_/q_i_2_0 [5]),
        .I3(\i_/q_i_2_0 [6]),
        .O(q_reg_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_3 
       (.I0(\i_/q_i_2_0 [7]),
        .I1(\i_/q_i_2_0 [5]),
        .I2(\i_/q_i_2_0 [6]),
        .I3(\i_/q_i_2_0 [8]),
        .I4(\i_/q_i_2_0 [9]),
        .I5(\i_/q_i_2_0 [4]),
        .O(q_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i_/q_i_3__0 
       (.I0(\i_/q_i_2_0 [17]),
        .I1(\i_/q_i_2_0 [16]),
        .I2(\i_/q_i_2_0 [13]),
        .I3(\i_/q_i_2_0 [12]),
        .O(\i_/q_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_4 
       (.I0(q_reg_0),
        .I1(\i_/q_i_2_0 [3]),
        .I2(\i_/q_i_2_0 [0]),
        .I3(q_reg_4),
        .I4(\i_/q_i_2_0 [1]),
        .I5(\i_/q_i_2_0 [2]),
        .O(\i_/q_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module alu_1152
   (q_reg,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    positive_A,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    \i_/q_i_2_0 ,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output q_reg;
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output [0:0]positive_A;
  output q_reg_3;
  output q_reg_4;
  input [2:0]q_reg_5;
  input [14:0]\i_/q_i_2_0 ;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;

  wire [14:0]\i_/q_i_2_0 ;
  wire \i_/q_i_3__0_n_0 ;
  wire \i_/q_i_4_n_0 ;
  wire [0:0]positive_A;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [2:0]q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_/q_i_2 
       (.I0(\i_/q_i_3__0_n_0 ),
        .I1(q_reg_5[2]),
        .I2(\i_/q_i_2_0 [8]),
        .I3(\i_/q_i_2_0 [12]),
        .I4(\i_/q_i_2_0 [11]),
        .I5(\i_/q_i_4_n_0 ),
        .O(q_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_2__0 
       (.I0(q_reg_5[2]),
        .I1(\i_/q_i_2_0 [8]),
        .I2(q_reg_7),
        .I3(\i_/q_i_2_0 [1]),
        .I4(\i_/q_i_2_0 [0]),
        .I5(q_reg_0),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_/q_i_2__1 
       (.I0(q_reg_0),
        .I1(\i_/q_i_2_0 [0]),
        .I2(\i_/q_i_2_0 [1]),
        .I3(q_reg_5[0]),
        .I4(q_reg_6),
        .I5(q_reg_5[1]),
        .O(q_reg_2));
  LUT4 #(
    .INIT(16'h1E0F)) 
    \i_/q_i_2__2 
       (.I0(\i_/q_i_2_0 [4]),
        .I1(\i_/q_i_2_0 [3]),
        .I2(\i_/q_i_2_0 [5]),
        .I3(q_reg_8),
        .O(positive_A));
  LUT4 #(
    .INIT(16'h0002)) 
    \i_/q_i_2__3 
       (.I0(q_reg_8),
        .I1(\i_/q_i_2_0 [5]),
        .I2(\i_/q_i_2_0 [3]),
        .I3(\i_/q_i_2_0 [4]),
        .O(q_reg_3));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i_/q_i_2__4 
       (.I0(q_reg_5[1]),
        .I1(q_reg_6),
        .I2(q_reg_5[0]),
        .I3(\i_/q_i_2_0 [1]),
        .I4(\i_/q_i_2_0 [0]),
        .O(q_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_3 
       (.I0(\i_/q_i_2_0 [5]),
        .I1(\i_/q_i_2_0 [3]),
        .I2(\i_/q_i_2_0 [4]),
        .I3(\i_/q_i_2_0 [6]),
        .I4(\i_/q_i_2_0 [7]),
        .I5(\i_/q_i_2_0 [2]),
        .O(q_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i_/q_i_3__0 
       (.I0(\i_/q_i_2_0 [14]),
        .I1(\i_/q_i_2_0 [13]),
        .I2(\i_/q_i_2_0 [10]),
        .I3(\i_/q_i_2_0 [9]),
        .O(\i_/q_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/q_i_4 
       (.I0(q_reg_0),
        .I1(\i_/q_i_2_0 [1]),
        .I2(q_reg_5[0]),
        .I3(q_reg_6),
        .I4(q_reg_5[1]),
        .I5(\i_/q_i_2_0 [0]),
        .O(\i_/q_i_4_n_0 ));
endmodule

module counter
   (q_reg,
    q_reg_0,
    cpu_clock_BUFG,
    q_reg_1);
  output q_reg;
  output q_reg_0;
  input cpu_clock_BUFG;
  input q_reg_1;

  wire D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire D_3;
  wire cpu_clock_BUFG;
  wire [3:0]cycle;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;

  tff tff1
       (.D(D_2),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle[0]),
        .q_reg(q_reg_1));
  tff_1142 tff16
       (.D(D_1),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .q_reg(q_reg),
        .q_reg_0(q_reg_1));
  tff_1143 tff2
       (.D(D),
        .D_0(D_3),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle[1]),
        .q_i_2__25({cycle[3:2],cycle[0]}),
        .q_reg(q_reg_0),
        .q_reg_0(q_reg_1));
  tff_1144 tff4
       (.D(D_0),
        .D_0(D),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle({cycle[3],cycle[1:0]}),
        .q_reg(cycle[2]),
        .q_reg_0(q_reg_1));
  tff_1145 tff8
       (.D(D_3),
        .D_0(D_2),
        .D_1(D_1),
        .D_2(D_0),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle[3]),
        .q_reg(q_reg_1),
        .q_reg_0(cycle[2:0]),
        .q_reg_1(q_reg));
endmodule

module counter_32
   (p_1_out,
    data_resultRDY,
    q_reg,
    q_reg_0,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_1,
    am_multdiv,
    hilo,
    q_reg_2,
    cycle,
    q_reg_3);
  output [0:0]p_1_out;
  output data_resultRDY;
  output q_reg;
  output q_reg_0;
  output [29:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_1;
  input am_multdiv;
  input [30:0]hilo;
  input q_reg_2;
  input [0:0]cycle;
  input q_reg_3;

  wire D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire D_3;
  wire D_4;
  wire [29:0]alu_in_A;
  wire am_multdiv;
  wire cpu_clock_BUFG;
  wire [0:0]cycle;
  wire [5:0]cycle_0;
  wire data_resultRDY;
  wire [30:0]hilo;
  wire [0:0]p_1_out;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;

  tff_1153 tff1
       (.D(D_2),
        .alu_in_A(alu_in_A),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle_0(cycle_0[0]),
        .hilo(hilo),
        .q_reg(q_reg),
        .q_reg_0(q_reg_0),
        .q_reg_1(q_reg_1),
        .q_reg_2(cycle_0[5:1]));
  tff_1154 tff16
       (.D(D),
        .D_0(D_4),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle_0({cycle_0[5],cycle_0[3:0]}),
        .q_reg(cycle_0[4]),
        .q_reg_0(q_reg_1));
  tff_1155 tff2
       (.D(D_0),
        .D_0(D_3),
        .am_multdiv(am_multdiv),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle),
        .cycle_0(cycle_0[1]),
        .data_resultRDY(data_resultRDY),
        .p_1_out(p_1_out),
        .q_reg(q_reg_1),
        .q_reg_0({cycle_0[5:2],cycle_0[0]}),
        .q_reg_1(q_reg_2),
        .q_reg_2(q_reg_3));
  tff_1156 tff32
       (.D(D),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .q_reg(cycle_0[5]),
        .q_reg_0(q_reg_1));
  tff_1157 tff4
       (.D(D_3),
        .D_0(D_2),
        .D_1(D_1),
        .D_2(D_0),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle_0({cycle_0[5:3],cycle_0[1:0]}),
        .q_reg(cycle_0[2]),
        .q_reg_0(q_reg_1));
  tff_1158 tff8
       (.D(D_4),
        .D_0(D_1),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle_0(cycle_0[3]),
        .q_reg(q_reg_1),
        .q_reg_0({cycle_0[4],cycle_0[2:0]}));
endmodule

module dffe_ref
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_100
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1000
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1001
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1002
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1003
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1004
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1005
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1006
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1007
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1008
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1009
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_101
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1010
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1011
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1012
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1013
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1014
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1015
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1016
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1017
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1018
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1019
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_102
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1020
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1023
   (ctrl_xm_out,
    alu_of,
    clk0,
    ctrl_reset);
  output [0:0]ctrl_xm_out;
  input alu_of;
  input clk0;
  input ctrl_reset;

  wire alu_of;
  wire clk0;
  wire ctrl_reset;
  wire [0:0]ctrl_xm_out;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(alu_of),
        .Q(ctrl_xm_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1024
   (xm_rd,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]xm_rd;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]xm_rd;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(xm_rd));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1025
   (xm_rd,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]xm_rd;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]xm_rd;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(xm_rd));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1026
   (xm_rd,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]xm_rd;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]xm_rd;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(xm_rd));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1027
   (xm_rd,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    c5,
    c6,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    c5_0,
    c6_1,
    p_97_in,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    c4,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    alu_of,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    c3,
    c6_2,
    q_reg_20,
    c5_3,
    q_reg_21,
    w3,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    a00__0,
    c5_5,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    q_reg_33,
    q_reg_34,
    q_reg_35,
    c4_7,
    q_reg_36,
    q_reg_37,
    c4_8,
    q_reg_38,
    q_reg_39,
    q_reg_40,
    q_reg_41,
    q_reg_42,
    q_reg_43,
    q_reg_44,
    c0_9,
    q_reg_45,
    q_reg_46,
    q_reg_47,
    q_reg_48,
    q_reg_49,
    q_reg_50,
    q_reg_51,
    q_reg_52,
    q_i_4__8_0,
    q_reg_53,
    q_reg_54,
    c2,
    p_21_in,
    q_reg_55,
    q_reg_56,
    q_reg_57,
    ctrl_dx_out,
    clk0,
    ctrl_reset,
    q_reg_58,
    q_reg_59,
    p_39_in,
    q_reg_60,
    c1,
    q_reg_61,
    w1,
    q_i_3_0,
    P0,
    q_i_2__22,
    q_i_2__22_0,
    q_i_5,
    q_reg_62,
    q_reg_63,
    q_reg_64,
    p_3_in,
    G0,
    q_i_2__20_0,
    q_i_2__20_1,
    q_i_2__23,
    q_reg_65,
    q_reg_66,
    q_reg_67,
    q_reg_68,
    q_reg_69,
    q_reg_70,
    q_reg_71,
    q_reg_72,
    q_reg_73,
    q_reg_74,
    q_reg_75,
    q_reg_76,
    q_reg_77,
    q_reg_78,
    q_reg_79,
    q_reg_80,
    q_reg_81,
    q_reg_82,
    q_reg_83,
    q_reg_84,
    q_reg_85,
    q_reg_86,
    q_reg_87,
    q_reg_88,
    q_reg_89,
    q_reg_90,
    q_reg_91,
    q_reg_92,
    q_reg_93,
    q_reg_94,
    q_reg_95,
    q_reg_96,
    q_reg_97,
    q_reg_98,
    q_reg_99,
    q_reg_100,
    q_reg_101,
    q_reg_102,
    q_reg_103,
    q_reg_104,
    q_reg_105,
    q_reg_106,
    q_reg_107,
    q_reg_108,
    q_reg_109,
    q_reg_110,
    q_reg_111,
    q_reg_112,
    q_reg_113,
    q_reg_114,
    q_reg_115,
    q_reg_116,
    q_reg_117,
    q_reg_118,
    q_reg_119,
    q_reg_120,
    q_reg_121,
    q_reg_122,
    q_reg_123,
    q_reg_124,
    q_reg_125,
    q_reg_126,
    q_reg_127,
    q_reg_128,
    q_i_3__26_0);
  output [0:0]xm_rd;
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output c5;
  output c6;
  output q_reg_4;
  output q_reg_5;
  output q_reg_6;
  output q_reg_7;
  output c5_0;
  output c6_1;
  output p_97_in;
  output q_reg_8;
  output q_reg_9;
  output q_reg_10;
  output c4;
  output q_reg_11;
  output q_reg_12;
  output q_reg_13;
  output q_reg_14;
  output q_reg_15;
  output alu_of;
  output q_reg_16;
  output q_reg_17;
  output q_reg_18;
  output q_reg_19;
  output c3;
  output c6_2;
  output q_reg_20;
  output c5_3;
  output q_reg_21;
  output w3;
  output q_reg_22;
  output q_reg_23;
  output q_reg_24;
  output a00__0;
  output c5_5;
  output q_reg_25;
  output q_reg_26;
  output q_reg_27;
  output q_reg_28;
  output q_reg_29;
  output q_reg_30;
  output q_reg_31;
  output q_reg_32;
  output q_reg_33;
  output q_reg_34;
  output q_reg_35;
  output c4_7;
  output q_reg_36;
  output q_reg_37;
  output c4_8;
  output q_reg_38;
  output q_reg_39;
  output q_reg_40;
  output q_reg_41;
  output q_reg_42;
  output q_reg_43;
  output q_reg_44;
  output c0_9;
  output q_reg_45;
  output q_reg_46;
  output q_reg_47;
  output q_reg_48;
  output q_reg_49;
  output q_reg_50;
  output q_reg_51;
  output q_reg_52;
  output q_i_4__8_0;
  output q_reg_53;
  output q_reg_54;
  output c2;
  output p_21_in;
  output q_reg_55;
  output q_reg_56;
  output q_reg_57;
  input [2:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;
  input q_reg_58;
  input q_reg_59;
  input p_39_in;
  input q_reg_60;
  input c1;
  input q_reg_61;
  input w1;
  input q_i_3_0;
  input P0;
  input q_i_2__22;
  input q_i_2__22_0;
  input q_i_5;
  input q_reg_62;
  input q_reg_63;
  input q_reg_64;
  input [31:0]p_3_in;
  input G0;
  input q_i_2__20_0;
  input q_i_2__20_1;
  input q_i_2__23;
  input q_reg_65;
  input q_reg_66;
  input q_reg_67;
  input q_reg_68;
  input q_reg_69;
  input q_reg_70;
  input q_reg_71;
  input q_reg_72;
  input q_reg_73;
  input q_reg_74;
  input q_reg_75;
  input q_reg_76;
  input q_reg_77;
  input q_reg_78;
  input q_reg_79;
  input q_reg_80;
  input q_reg_81;
  input q_reg_82;
  input q_reg_83;
  input q_reg_84;
  input q_reg_85;
  input q_reg_86;
  input q_reg_87;
  input q_reg_88;
  input q_reg_89;
  input q_reg_90;
  input q_reg_91;
  input q_reg_92;
  input q_reg_93;
  input q_reg_94;
  input q_reg_95;
  input q_reg_96;
  input q_reg_97;
  input q_reg_98;
  input q_reg_99;
  input q_reg_100;
  input q_reg_101;
  input q_reg_102;
  input q_reg_103;
  input q_reg_104;
  input q_reg_105;
  input q_reg_106;
  input q_reg_107;
  input q_reg_108;
  input q_reg_109;
  input q_reg_110;
  input q_reg_111;
  input q_reg_112;
  input q_reg_113;
  input q_reg_114;
  input q_reg_115;
  input q_reg_116;
  input q_reg_117;
  input q_reg_118;
  input q_reg_119;
  input q_reg_120;
  input q_reg_121;
  input q_reg_122;
  input q_reg_123;
  input q_reg_124;
  input q_reg_125;
  input q_reg_126;
  input q_reg_127;
  input q_reg_128;
  input [3:0]q_i_3__26_0;

  wire G0;
  wire P0;
  wire a00__0;
  wire alu_of;
  wire c0_9;
  wire c1;
  wire c2;
  wire c3;
  wire c4;
  wire c4_7;
  wire c4_8;
  wire c5;
  wire c5_0;
  wire c5_3;
  wire c5_5;
  wire c6;
  wire c6_1;
  wire c6_2;
  wire clk0;
  wire [2:0]ctrl_dx_out;
  wire ctrl_reset;
  wire \my_alu/add/P1 ;
  wire \my_alu/add/P2 ;
  wire \my_alu/add/add2/p_23_in ;
  wire \my_alu/add/add2/p_39_in ;
  wire \my_alu/add/add3/p_23_in ;
  wire \my_alu/add/add3/p_39_in ;
  wire \my_alu/p_15_in__0 ;
  wire \my_alu/p_15_in__1 ;
  wire \my_alu/p_93_in__2 ;
  wire p_21_in;
  wire p_39_in;
  wire [31:0]p_3_in;
  wire p_97_in;
  wire q_i_2__20_0;
  wire q_i_2__20_1;
  wire q_i_2__22;
  wire q_i_2__22_0;
  wire q_i_2__23;
  wire q_i_3_0;
  wire q_i_3__0_n_0;
  wire [3:0]q_i_3__26_0;
  wire q_i_3__3_n_0;
  wire q_i_3__4_n_0;
  wire q_i_3_n_0;
  wire q_i_4__18_n_0;
  wire q_i_4__19_n_0;
  wire q_i_4__4_n_0;
  wire q_i_4__6_n_0;
  wire q_i_4__7_n_0;
  wire q_i_4__8_0;
  wire q_i_4__9_n_0;
  wire q_i_4_n_0;
  wire q_i_5;
  wire q_i_5__2_n_0;
  wire q_i_8__2_n_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_100;
  wire q_reg_101;
  wire q_reg_102;
  wire q_reg_103;
  wire q_reg_104;
  wire q_reg_105;
  wire q_reg_106;
  wire q_reg_107;
  wire q_reg_108;
  wire q_reg_109;
  wire q_reg_11;
  wire q_reg_110;
  wire q_reg_111;
  wire q_reg_112;
  wire q_reg_113;
  wire q_reg_114;
  wire q_reg_115;
  wire q_reg_116;
  wire q_reg_117;
  wire q_reg_118;
  wire q_reg_119;
  wire q_reg_12;
  wire q_reg_120;
  wire q_reg_121;
  wire q_reg_122;
  wire q_reg_123;
  wire q_reg_124;
  wire q_reg_125;
  wire q_reg_126;
  wire q_reg_127;
  wire q_reg_128;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_37;
  wire q_reg_38;
  wire q_reg_39;
  wire q_reg_4;
  wire q_reg_40;
  wire q_reg_41;
  wire q_reg_42;
  wire q_reg_43;
  wire q_reg_44;
  wire q_reg_45;
  wire q_reg_46;
  wire q_reg_47;
  wire q_reg_48;
  wire q_reg_49;
  wire q_reg_5;
  wire q_reg_50;
  wire q_reg_51;
  wire q_reg_52;
  wire q_reg_53;
  wire q_reg_54;
  wire q_reg_55;
  wire q_reg_56;
  wire q_reg_57;
  wire q_reg_58;
  wire q_reg_59;
  wire q_reg_6;
  wire q_reg_60;
  wire q_reg_61;
  wire q_reg_62;
  wire q_reg_63;
  wire q_reg_64;
  wire q_reg_65;
  wire q_reg_66;
  wire q_reg_67;
  wire q_reg_68;
  wire q_reg_69;
  wire q_reg_7;
  wire q_reg_70;
  wire q_reg_71;
  wire q_reg_72;
  wire q_reg_73;
  wire q_reg_74;
  wire q_reg_75;
  wire q_reg_76;
  wire q_reg_77;
  wire q_reg_78;
  wire q_reg_79;
  wire q_reg_8;
  wire q_reg_80;
  wire q_reg_81;
  wire q_reg_82;
  wire q_reg_83;
  wire q_reg_84;
  wire q_reg_85;
  wire q_reg_86;
  wire q_reg_87;
  wire q_reg_88;
  wire q_reg_89;
  wire q_reg_9;
  wire q_reg_90;
  wire q_reg_91;
  wire q_reg_92;
  wire q_reg_93;
  wire q_reg_94;
  wire q_reg_95;
  wire q_reg_96;
  wire q_reg_97;
  wire q_reg_98;
  wire q_reg_99;
  wire w1;
  wire w3;
  wire [0:0]xm_rd;

  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__144
       (.I0(q_reg_62),
        .I1(q_reg_45),
        .I2(q_reg_63),
        .I3(q_reg_64),
        .I4(p_3_in[0]),
        .O(q_reg_55));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__145
       (.I0(q_reg_65),
        .I1(q_reg_45),
        .I2(q_reg_66),
        .I3(q_reg_64),
        .I4(p_3_in[1]),
        .O(q_reg_56));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__146
       (.I0(q_reg_67),
        .I1(q_reg_45),
        .I2(q_reg_68),
        .I3(q_reg_64),
        .I4(p_3_in[2]),
        .O(q_reg_44));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__147
       (.I0(q_reg_69),
        .I1(q_reg_45),
        .I2(q_reg_70),
        .I3(q_reg_64),
        .I4(p_3_in[3]),
        .O(q_reg_43));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__148
       (.I0(q_reg_71),
        .I1(q_reg_45),
        .I2(q_reg_72),
        .I3(q_reg_64),
        .I4(p_3_in[4]),
        .O(q_reg_8));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__149
       (.I0(q_reg_73),
        .I1(q_reg_45),
        .I2(q_reg_74),
        .I3(q_reg_64),
        .I4(p_3_in[5]),
        .O(q_reg_10));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__150
       (.I0(q_reg_75),
        .I1(q_reg_45),
        .I2(q_reg_76),
        .I3(q_reg_64),
        .I4(p_3_in[6]),
        .O(q_reg_9));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__151
       (.I0(q_reg_77),
        .I1(q_reg_45),
        .I2(q_reg_78),
        .I3(q_reg_64),
        .I4(p_3_in[7]),
        .O(q_reg_46));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__152
       (.I0(q_reg_79),
        .I1(q_reg_45),
        .I2(q_reg_80),
        .I3(q_reg_64),
        .I4(p_3_in[8]),
        .O(q_reg_37));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__153
       (.I0(q_reg_81),
        .I1(q_reg_45),
        .I2(q_reg_82),
        .I3(q_reg_64),
        .I4(p_3_in[9]),
        .O(q_reg_36));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__154
       (.I0(q_reg_83),
        .I1(q_reg_45),
        .I2(q_reg_84),
        .I3(q_reg_64),
        .I4(p_3_in[10]),
        .O(q_reg_39));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__155
       (.I0(q_reg_85),
        .I1(q_reg_45),
        .I2(q_reg_86),
        .I3(q_reg_64),
        .I4(p_3_in[11]),
        .O(q_reg_40));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__156
       (.I0(q_reg_87),
        .I1(q_reg_45),
        .I2(q_reg_88),
        .I3(q_reg_64),
        .I4(p_3_in[12]),
        .O(q_reg_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__157
       (.I0(q_reg_89),
        .I1(q_reg_45),
        .I2(q_reg_90),
        .I3(q_reg_64),
        .I4(p_3_in[13]),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__158
       (.I0(q_reg_91),
        .I1(q_reg_45),
        .I2(q_reg_92),
        .I3(q_reg_64),
        .I4(p_3_in[14]),
        .O(q_reg_3));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__159
       (.I0(q_reg_93),
        .I1(q_reg_45),
        .I2(q_reg_94),
        .I3(q_reg_64),
        .I4(p_3_in[15]),
        .O(q_reg_2));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__160
       (.I0(q_reg_95),
        .I1(q_reg_45),
        .I2(q_reg_96),
        .I3(q_reg_64),
        .I4(p_3_in[16]),
        .O(q_reg_27));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__161
       (.I0(q_reg_97),
        .I1(q_reg_45),
        .I2(q_reg_98),
        .I3(q_reg_64),
        .I4(p_3_in[17]),
        .O(q_reg_28));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__162
       (.I0(q_reg_99),
        .I1(q_reg_45),
        .I2(q_reg_100),
        .I3(q_reg_64),
        .I4(p_3_in[18]),
        .O(q_reg_31));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__163
       (.I0(q_reg_101),
        .I1(q_reg_45),
        .I2(q_reg_102),
        .I3(q_reg_64),
        .I4(p_3_in[19]),
        .O(q_reg_34));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__164
       (.I0(q_reg_103),
        .I1(q_reg_45),
        .I2(q_reg_104),
        .I3(q_reg_64),
        .I4(p_3_in[20]),
        .O(q_reg_4));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__165
       (.I0(q_reg_105),
        .I1(q_reg_45),
        .I2(q_reg_106),
        .I3(q_reg_64),
        .I4(p_3_in[21]),
        .O(q_reg_5));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__166
       (.I0(q_reg_107),
        .I1(q_reg_45),
        .I2(q_reg_108),
        .I3(q_reg_64),
        .I4(p_3_in[22]),
        .O(q_reg_7));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__167
       (.I0(q_reg_109),
        .I1(q_reg_45),
        .I2(q_reg_110),
        .I3(q_reg_64),
        .I4(p_3_in[23]),
        .O(q_reg_6));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__168
       (.I0(q_reg_111),
        .I1(q_reg_45),
        .I2(q_reg_112),
        .I3(q_reg_64),
        .I4(p_3_in[24]),
        .O(q_reg_23));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__169
       (.I0(q_reg_113),
        .I1(q_reg_45),
        .I2(q_reg_114),
        .I3(q_reg_64),
        .I4(p_3_in[25]),
        .O(q_reg_14));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__170
       (.I0(q_reg_115),
        .I1(q_reg_45),
        .I2(q_reg_116),
        .I3(q_reg_64),
        .I4(p_3_in[26]),
        .O(q_reg_12));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__171
       (.I0(q_reg_117),
        .I1(q_reg_45),
        .I2(q_reg_118),
        .I3(q_reg_64),
        .I4(p_3_in[27]),
        .O(q_reg_13));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__172
       (.I0(q_reg_119),
        .I1(q_reg_45),
        .I2(q_reg_120),
        .I3(q_reg_64),
        .I4(p_3_in[28]),
        .O(q_reg_11));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__173
       (.I0(q_reg_121),
        .I1(q_reg_45),
        .I2(q_reg_122),
        .I3(q_reg_64),
        .I4(p_3_in[29]),
        .O(q_reg_25));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__174
       (.I0(q_reg_123),
        .I1(q_reg_45),
        .I2(q_reg_124),
        .I3(q_reg_64),
        .I4(p_3_in[30]),
        .O(q_reg_19));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    q_i_1__175
       (.I0(q_reg_125),
        .I1(q_reg_45),
        .I2(q_reg_126),
        .I3(q_reg_64),
        .I4(p_3_in[31]),
        .O(q_reg_18));
  LUT5 #(
    .INIT(32'h0CA00C0C)) 
    q_i_1__7
       (.I0(q_reg_16),
        .I1(q_reg_17),
        .I2(q_reg_18),
        .I3(q_reg_58),
        .I4(ctrl_dx_out[0]),
        .O(alu_of));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2
       (.I0(q_reg_11),
        .I1(q_reg_12),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .O(c4));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    q_i_2__0
       (.I0(q_i_4_n_0),
        .I1(q_reg_19),
        .I2(q_i_5__2_n_0),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .I5(q_reg_18),
        .O(q_reg_16));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__1
       (.I0(q_reg_12),
        .I1(q_reg_13),
        .I2(q_reg_14),
        .I3(q_reg_15),
        .O(c3));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__10
       (.I0(q_i_3__4_n_0),
        .I1(q_reg_28),
        .I2(q_reg_27),
        .I3(q_reg_26),
        .I4(q_i_4__19_n_0),
        .O(w3));
  LUT6 #(
    .INIT(64'hCFFFFFBB30000044)) 
    q_i_2__11
       (.I0(q_reg_26),
        .I1(q_reg_61),
        .I2(q_reg_30),
        .I3(q_reg_28),
        .I4(q_reg_27),
        .I5(q_reg_31),
        .O(q_reg_29));
  LUT6 #(
    .INIT(64'h0CFBFFFBF3040004)) 
    q_i_2__12
       (.I0(q_reg_26),
        .I1(ctrl_dx_out[0]),
        .I2(q_reg_58),
        .I3(q_reg_27),
        .I4(q_reg_30),
        .I5(q_reg_28),
        .O(q_reg_32));
  LUT6 #(
    .INIT(64'h0CFBFFFBF3040004)) 
    q_i_2__13
       (.I0(q_i_3_n_0),
        .I1(ctrl_dx_out[0]),
        .I2(q_reg_58),
        .I3(q_reg_31),
        .I4(q_i_4__6_n_0),
        .I5(q_reg_34),
        .O(q_reg_33));
  LUT6 #(
    .INIT(64'hE0EFEFEF1F101010)) 
    q_i_2__14
       (.I0(q_i_3__4_n_0),
        .I1(q_i_3_n_0),
        .I2(q_reg_61),
        .I3(\my_alu/add/add3/p_39_in ),
        .I4(q_i_4__6_n_0),
        .I5(q_reg_4),
        .O(q_reg_35));
  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__15
       (.I0(q_reg_4),
        .I1(q_i_3__4_n_0),
        .I2(q_i_3_n_0),
        .O(c4_7));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__16
       (.I0(q_i_3__3_n_0),
        .I1(q_reg_36),
        .I2(q_reg_37),
        .I3(w1),
        .I4(q_i_4__18_n_0),
        .O(q_reg_26));
  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__19
       (.I0(q_reg_0),
        .I1(q_i_3__3_n_0),
        .I2(q_i_3__0_n_0),
        .O(c4_8));
  LUT6 #(
    .INIT(64'h0CFBFFFBF3040004)) 
    q_i_2__20
       (.I0(q_i_3__0_n_0),
        .I1(ctrl_dx_out[0]),
        .I2(q_reg_58),
        .I3(q_reg_39),
        .I4(q_i_4__9_n_0),
        .I5(q_reg_40),
        .O(q_reg_38));
  LUT6 #(
    .INIT(64'hE0EFEFEF1F101010)) 
    q_i_2__21
       (.I0(q_i_3__3_n_0),
        .I1(q_i_3__0_n_0),
        .I2(q_reg_61),
        .I3(\my_alu/add/add2/p_39_in ),
        .I4(q_i_4__9_n_0),
        .I5(q_reg_0),
        .O(q_reg_41));
  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__3
       (.I0(q_reg_59),
        .I1(q_reg_9),
        .I2(q_reg_20),
        .O(c6_2));
  LUT6 #(
    .INIT(64'hFEFFEEFEEEFFEEEE)) 
    q_i_2__4
       (.I0(q_reg_10),
        .I1(q_reg_20),
        .I2(p_39_in),
        .I3(q_reg_60),
        .I4(q_reg_8),
        .I5(c1),
        .O(c5_3));
  LUT6 #(
    .INIT(64'hCFFFFFBB30000044)) 
    q_i_2__6
       (.I0(w3),
        .I1(q_reg_61),
        .I2(q_reg_22),
        .I3(q_reg_14),
        .I4(q_reg_23),
        .I5(q_reg_12),
        .O(q_reg_21));
  LUT6 #(
    .INIT(64'hCFFFFBFB30000404)) 
    q_i_2__7
       (.I0(q_reg_15),
        .I1(q_reg_61),
        .I2(q_reg_12),
        .I3(a00__0),
        .I4(q_reg_14),
        .I5(q_reg_13),
        .O(q_reg_24));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__8
       (.I0(q_reg_14),
        .I1(q_reg_13),
        .I2(q_reg_25),
        .I3(q_reg_11),
        .I4(q_reg_15),
        .I5(q_reg_12),
        .O(c5_5));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__9
       (.I0(q_reg_23),
        .I1(q_i_4__19_n_0),
        .I2(q_reg_26),
        .I3(q_reg_27),
        .I4(q_reg_28),
        .I5(q_i_3__4_n_0),
        .O(q_reg_15));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__93
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_i_3__3_n_0),
        .I3(q_i_3__0_n_0),
        .O(c5));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__94
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_i_3__0_n_0),
        .I3(q_reg_3),
        .I4(q_i_3__3_n_0),
        .O(c6));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__95
       (.I0(q_reg_4),
        .I1(q_reg_5),
        .I2(q_i_3__4_n_0),
        .I3(q_i_3_n_0),
        .O(c5_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__96
       (.I0(q_reg_4),
        .I1(q_reg_5),
        .I2(q_i_3_n_0),
        .I3(q_reg_7),
        .I4(q_i_3__4_n_0),
        .O(c6_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_3
       (.I0(w1),
        .I1(q_i_3__3_n_0),
        .I2(q_i_3__0_n_0),
        .I3(q_i_4__18_n_0),
        .I4(q_reg_27),
        .I5(q_reg_28),
        .O(q_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_3__0
       (.I0(q_reg_20),
        .I1(q_i_3_0),
        .I2(q_reg_42),
        .I3(P0),
        .I4(q_reg_37),
        .I5(q_reg_36),
        .O(q_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_3__10
       (.I0(\my_alu/add/add3/p_39_in ),
        .I1(\my_alu/add/add3/p_23_in ),
        .I2(q_i_4__4_n_0),
        .I3(q_reg_27),
        .I4(q_reg_30),
        .I5(q_reg_28),
        .O(q_reg_22));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_3__11
       (.I0(q_reg_28),
        .I1(q_reg_30),
        .I2(q_reg_27),
        .I3(q_i_4__4_n_0),
        .I4(\my_alu/add/add3/p_39_in ),
        .O(q_reg_50));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_3__12
       (.I0(q_i_4__6_n_0),
        .I1(q_reg_7),
        .I2(q_reg_5),
        .I3(q_reg_4),
        .I4(\my_alu/add/add3/p_39_in ),
        .O(q_reg_51));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_3__13
       (.I0(q_reg_28),
        .I1(q_reg_30),
        .I2(q_reg_27),
        .I3(q_reg_4),
        .I4(\my_alu/add/add3/p_39_in ),
        .O(q_reg_52));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_3__14
       (.I0(\my_alu/add/add2/p_39_in ),
        .I1(\my_alu/add/add2/p_23_in ),
        .I2(q_i_4__7_n_0),
        .I3(q_reg_37),
        .I4(G0),
        .I5(q_reg_36),
        .O(q_reg_30));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_3__15
       (.I0(q_i_4__9_n_0),
        .I1(q_i_4__7_n_0),
        .I2(\my_alu/add/add2/p_39_in ),
        .O(q_i_4__8_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_3__16
       (.I0(q_i_4__9_n_0),
        .I1(q_reg_3),
        .I2(q_reg_1),
        .I3(q_reg_0),
        .I4(\my_alu/add/add2/p_39_in ),
        .O(q_reg_53));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_3__17
       (.I0(q_i_4__9_n_0),
        .I1(q_reg_0),
        .I2(\my_alu/add/add2/p_39_in ),
        .O(q_reg_54));
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    q_i_3__26
       (.I0(q_i_8__2_n_0),
        .I1(ctrl_dx_out[1]),
        .I2(xm_rd),
        .I3(q_reg_127),
        .I4(q_reg_128),
        .O(q_reg_45));
  LUT2 #(
    .INIT(4'hE)) 
    q_i_3__3
       (.I0(q_reg_39),
        .I1(q_reg_40),
        .O(q_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    q_i_3__4
       (.I0(q_reg_31),
        .I1(q_reg_34),
        .O(q_i_3__4_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    q_i_3__5
       (.I0(\my_alu/p_93_in__2 ),
        .I1(q_reg_23),
        .I2(q_reg_22),
        .I3(q_reg_14),
        .I4(q_reg_18),
        .O(q_reg_17));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_3__6
       (.I0(q_reg_23),
        .I1(q_reg_22),
        .I2(q_reg_14),
        .I3(q_reg_12),
        .I4(q_reg_13),
        .O(q_reg_47));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_3__7
       (.I0(q_reg_14),
        .I1(q_reg_22),
        .I2(q_reg_23),
        .I3(q_reg_11),
        .I4(q_reg_12),
        .I5(q_reg_13),
        .O(q_reg_48));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_3__8
       (.I0(a00__0),
        .I1(q_reg_25),
        .I2(q_reg_11),
        .I3(q_reg_13),
        .I4(q_reg_14),
        .I5(q_reg_12),
        .O(q_reg_49));
  LUT6 #(
    .INIT(64'hCCCC800000000000)) 
    q_i_3__9
       (.I0(q_reg_28),
        .I1(q_reg_30),
        .I2(q_reg_27),
        .I3(\my_alu/p_15_in__1 ),
        .I4(\my_alu/add/P2 ),
        .I5(q_reg_23),
        .O(a00__0));
  LUT2 #(
    .INIT(4'hE)) 
    q_i_4
       (.I0(q_reg_12),
        .I1(q_reg_13),
        .O(q_i_4_n_0));
  LUT6 #(
    .INIT(64'h2B222B2200002B22)) 
    q_i_4__1
       (.I0(q_reg_43),
        .I1(q_i_2__22),
        .I2(q_i_2__22_0),
        .I3(q_reg_44),
        .I4(q_reg_60),
        .I5(q_reg_8),
        .O(q_reg_20));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_4__18
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_reg_2),
        .I3(q_reg_3),
        .O(q_i_4__18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_4__19
       (.I0(q_reg_4),
        .I1(q_reg_5),
        .I2(q_reg_6),
        .I3(q_reg_7),
        .O(q_i_4__19_n_0));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFEFFFE)) 
    q_i_4__2
       (.I0(q_reg_46),
        .I1(q_reg_9),
        .I2(q_reg_10),
        .I3(q_reg_8),
        .I4(ctrl_dx_out[2]),
        .I5(q_reg_58),
        .O(q_reg_42));
  LUT4 #(
    .INIT(16'h8000)) 
    q_i_4__3
       (.I0(\my_alu/add/add3/p_39_in ),
        .I1(q_reg_6),
        .I2(q_reg_7),
        .I3(q_i_4__4_n_0),
        .O(\my_alu/p_15_in__1 ));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__4
       (.I0(q_reg_4),
        .I1(q_reg_5),
        .O(q_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__5
       (.I0(q_reg_34),
        .I1(q_reg_31),
        .O(\my_alu/add/add3/p_39_in ));
  LUT6 #(
    .INIT(64'hAA80808000000000)) 
    q_i_4__6
       (.I0(q_reg_27),
        .I1(G0),
        .I2(\my_alu/add/P1 ),
        .I3(\my_alu/p_15_in__0 ),
        .I4(q_i_4__9_n_0),
        .I5(q_reg_28),
        .O(q_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__7
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .O(q_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__8
       (.I0(q_reg_40),
        .I1(q_reg_39),
        .O(\my_alu/add/add2/p_39_in ));
  LUT6 #(
    .INIT(64'hAA00800000000000)) 
    q_i_4__9
       (.I0(q_reg_37),
        .I1(q_i_2__20_0),
        .I2(c2),
        .I3(p_21_in),
        .I4(q_i_2__20_1),
        .I5(q_reg_36),
        .O(q_i_4__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    q_i_5__2
       (.I0(q_reg_11),
        .I1(q_reg_25),
        .O(q_i_5__2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_5__3
       (.I0(q_i_4__4_n_0),
        .I1(q_reg_27),
        .I2(q_reg_28),
        .I3(q_reg_7),
        .I4(q_reg_6),
        .I5(\my_alu/add/add3/p_39_in ),
        .O(\my_alu/add/P2 ));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_5__4
       (.I0(q_reg_6),
        .I1(q_reg_7),
        .O(\my_alu/add/add3/p_23_in ));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_5__5
       (.I0(q_i_4__7_n_0),
        .I1(q_reg_36),
        .I2(q_reg_37),
        .I3(\my_alu/add/add2/p_23_in ),
        .I4(\my_alu/add/add2/p_39_in ),
        .O(\my_alu/add/P1 ));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_5__6
       (.I0(q_reg_2),
        .I1(q_reg_3),
        .O(\my_alu/add/add2/p_23_in ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    q_i_5__8
       (.I0(q_reg_55),
        .I1(q_i_5),
        .I2(q_i_2__23),
        .I3(q_reg_56),
        .I4(q_i_2__22_0),
        .I5(q_reg_44),
        .O(c2));
  LUT5 #(
    .INIT(32'h80000000)) 
    q_i_6__1
       (.I0(q_reg_13),
        .I1(q_reg_12),
        .I2(q_reg_11),
        .I3(q_reg_25),
        .I4(q_reg_19),
        .O(\my_alu/p_93_in__2 ));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_6__2
       (.I0(\my_alu/add/add2/p_39_in ),
        .I1(\my_alu/add/add2/p_23_in ),
        .I2(q_i_4__7_n_0),
        .O(\my_alu/p_15_in__0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    q_i_6__8
       (.I0(q_reg_8),
        .I1(ctrl_dx_out[2]),
        .I2(q_reg_58),
        .I3(q_reg_9),
        .I4(q_reg_10),
        .O(p_97_in));
  LUT6 #(
    .INIT(64'hFFFFDFD55555DFD5)) 
    q_i_7
       (.I0(q_i_5),
        .I1(q_reg_62),
        .I2(q_reg_45),
        .I3(q_reg_63),
        .I4(q_reg_64),
        .I5(p_3_in[0]),
        .O(c0_9));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_7__0
       (.I0(q_reg_46),
        .I1(q_reg_9),
        .I2(q_reg_10),
        .O(p_21_in));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_8__0
       (.I0(q_reg_10),
        .I1(q_reg_9),
        .O(q_reg_57));
  LUT5 #(
    .INIT(32'h00000001)) 
    q_i_8__2
       (.I0(xm_rd),
        .I1(q_i_3__26_0[0]),
        .I2(q_i_3__26_0[2]),
        .I3(q_i_3__26_0[3]),
        .I4(q_i_3__26_0[1]),
        .O(q_i_8__2_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out[1]),
        .Q(xm_rd));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1028
   (xm_rd,
    q_reg_0,
    ctrl_dx_out,
    clk0,
    ctrl_reset,
    q_i_3__26);
  output [0:0]xm_rd;
  output q_reg_0;
  input [1:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;
  input [0:0]q_i_3__26;

  wire clk0;
  wire [1:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]q_i_3__26;
  wire q_reg_0;
  wire [0:0]xm_rd;

  LUT4 #(
    .INIT(16'h6FF6)) 
    q_i_9__2
       (.I0(xm_rd),
        .I1(ctrl_dx_out[1]),
        .I2(q_i_3__26),
        .I3(ctrl_dx_out[0]),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out[1]),
        .Q(xm_rd));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1029
   (ctrl_xm_out,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]ctrl_xm_out;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]ctrl_xm_out;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(ctrl_xm_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_103
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1030
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1031
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1032
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1033
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1034
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1035
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1036
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1037
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1038
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1039
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_104
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1040
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1041
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1042
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1043
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1044
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1045
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1046
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1047
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1048
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1049
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_105
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1050
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1051
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1052
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1053
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1054
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1055
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1056
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1057
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1058
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1059
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_106
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1060
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1061
   (q_reg_0,
    aluout,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]aluout;
  input clk0;
  input ctrl_reset;

  wire [0:0]aluout;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(aluout),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1063
   (p_3_in,
    p0,
    multdiv_data,
    clk0,
    ctrl_reset,
    q_i_6,
    q_i_6_0,
    q_i_6_1,
    q_i_6_2,
    q_i_6_3);
  output [0:0]p_3_in;
  output p0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input q_i_6;
  input q_i_6_0;
  input q_i_6_1;
  input q_i_6_2;
  input q_i_6_3;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire p0;
  wire [0:0]p_3_in;
  wire q_i_6;
  wire q_i_6_0;
  wire q_i_6_1;
  wire q_i_6_2;
  wire q_i_6_3;

  LUT6 #(
    .INIT(64'hBBB888B8FFFFFFFF)) 
    q_i_10
       (.I0(p_3_in),
        .I1(q_i_6),
        .I2(q_i_6_0),
        .I3(q_i_6_1),
        .I4(q_i_6_2),
        .I5(q_i_6_3),
        .O(p0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1064
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[10] ,
    ctrl_pw_out);
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[10] ;
  input [0:0]ctrl_pw_out;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[10] ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[10]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[10] ),
        .I3(ctrl_pw_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1065
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[11] ,
    ctrl_pw_out);
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[11] ;
  input [0:0]ctrl_pw_out;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[11] ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[11]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[11] ),
        .I3(ctrl_pw_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1066
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[12] ,
    ctrl_pw_out);
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[12] ;
  input [0:0]ctrl_pw_out;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[12] ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[12]_i_3 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[12] ),
        .I3(ctrl_pw_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1067
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1068
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1069
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_107
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1070
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1071
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1072
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1073
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1074
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    q_reg_1,
    ctrl_pw_out);
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input q_reg_1;
  input [0:0]ctrl_pw_out;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;
  wire q_reg_1;

  LUT4 #(
    .INIT(16'h0ACA)) 
    q_i_2__62
       (.I0(data1),
        .I1(p_3_in),
        .I2(q_reg_1),
        .I3(ctrl_pw_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1075
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1076
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1077
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1078
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1079
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_108
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1080
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1081
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1082
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1083
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1084
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1085
   (q_reg_0,
    p2,
    data_writeReg,
    multdiv_data,
    clk0,
    ctrl_reset,
    q_i_6,
    q_i_6_0,
    q_i_6_1,
    q_i_6_2,
    q_i_6_3,
    q_reg_1,
    data1,
    ctrl_pw_out,
    q_reg_2);
  output q_reg_0;
  output p2;
  output [0:0]data_writeReg;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input q_i_6;
  input q_i_6_0;
  input q_i_6_1;
  input q_i_6_2;
  input q_i_6_3;
  input q_reg_1;
  input [0:0]data1;
  input [0:0]ctrl_pw_out;
  input q_reg_2;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire [0:0]multdiv_data;
  wire p2;
  wire q_i_6;
  wire q_i_6_0;
  wire q_i_6_1;
  wire q_i_6_2;
  wire q_i_6_3;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT5 #(
    .INIT(32'h0000FCB8)) 
    q_i_1__177
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(data1),
        .I3(ctrl_pw_out),
        .I4(q_reg_2),
        .O(data_writeReg));
  LUT6 #(
    .INIT(64'hBBB888B8FFFFFFFF)) 
    q_i_9
       (.I0(q_reg_0),
        .I1(q_i_6),
        .I2(q_i_6_0),
        .I3(q_i_6_1),
        .I4(q_i_6_2),
        .I5(q_i_6_3),
        .O(p2));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1086
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1087
   (p_3_in,
    multdiv_data,
    clk0,
    ctrl_reset);
  output [0:0]p_3_in;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1088
   (q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]q_reg_1;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire [0:0]q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1089
   (q_reg_0,
    rd,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_reg_3,
    ctrl_pw_out,
    \curr_reg1_reg[2] ,
    \curr_reg1_reg[2]_0 );
  output q_reg_0;
  output [0:0]rd;
  output q_reg_1;
  input [0:0]q_reg_2;
  input clk0;
  input ctrl_reset;
  input [2:0]q_reg_3;
  input [0:0]ctrl_pw_out;
  input \curr_reg1_reg[2] ;
  input \curr_reg1_reg[2]_0 ;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[2] ;
  wire \curr_reg1_reg[2]_0 ;
  wire q_reg_0;
  wire q_reg_1;
  wire [0:0]q_reg_2;
  wire [2:0]q_reg_3;
  wire [0:0]rd;

  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \curr_reg1[12]_i_5 
       (.I0(q_reg_3[1]),
        .I1(q_reg_0),
        .I2(q_reg_3[0]),
        .I3(\curr_reg1_reg[2] ),
        .I4(\curr_reg1_reg[2]_0 ),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'hFFFFFCAA)) 
    q_i_7__4
       (.I0(q_reg_3[1]),
        .I1(q_reg_0),
        .I2(ctrl_pw_out),
        .I3(\curr_reg1_reg[2] ),
        .I4(q_reg_3[2]),
        .O(rd));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_109
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1090
   (q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1091
   (ctrl_pw_out,
    rd,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    \curr_reg1_reg[2] );
  output [0:0]ctrl_pw_out;
  output [0:0]rd;
  output q_reg_0;
  input [0:0]q_reg_1;
  input clk0;
  input ctrl_reset;
  input [1:0]q_reg_2;
  input [0:0]q_reg_3;
  input \curr_reg1_reg[2] ;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[2] ;
  wire q_reg_0;
  wire [0:0]q_reg_1;
  wire [1:0]q_reg_2;
  wire [0:0]q_reg_3;
  wire [0:0]rd;

  LUT3 #(
    .INIT(8'hB8)) 
    \curr_reg1[12]_i_6 
       (.I0(ctrl_pw_out),
        .I1(\curr_reg1_reg[2] ),
        .I2(q_reg_2[0]),
        .O(q_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFCAA)) 
    q_i_6__6
       (.I0(q_reg_2[0]),
        .I1(ctrl_pw_out),
        .I2(q_reg_3),
        .I3(\curr_reg1_reg[2] ),
        .I4(q_reg_2[1]),
        .O(rd));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(ctrl_pw_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1092
   (ctrl_pw_out,
    rd,
    q_reg_0,
    clk0,
    ctrl_reset,
    q_reg_1,
    q_reg_2,
    q_reg_3);
  output [0:0]ctrl_pw_out;
  output [0:0]rd;
  input [0:0]q_reg_0;
  input clk0;
  input ctrl_reset;
  input [1:0]q_reg_1;
  input [0:0]q_reg_2;
  input q_reg_3;

  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire [1:0]q_reg_1;
  wire [0:0]q_reg_2;
  wire q_reg_3;
  wire [0:0]rd;

  LUT5 #(
    .INIT(32'hFFFFFCAA)) 
    q_i_5__10
       (.I0(q_reg_1[0]),
        .I1(ctrl_pw_out),
        .I2(q_reg_2),
        .I3(q_reg_3),
        .I4(q_reg_1[1]),
        .O(rd));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(ctrl_pw_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1093
   (q_reg_0,
    q_reg_1,
    p_1_out,
    clk0,
    ctrl_reset,
    ctrl_pw_out,
    ctrl_dx_out,
    q_reg_2,
    q_i_4__15_0);
  output q_reg_0;
  output q_reg_1;
  input [0:0]p_1_out;
  input clk0;
  input ctrl_reset;
  input [1:0]ctrl_pw_out;
  input [1:0]ctrl_dx_out;
  input q_reg_2;
  input [2:0]q_i_4__15_0;

  wire clk0;
  wire [1:0]ctrl_dx_out;
  wire [1:0]ctrl_pw_out;
  wire ctrl_reset;
  wire [0:0]p_1_out;
  wire q_i_11_n_0;
  wire [2:0]q_i_4__15_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    q_i_11
       (.I0(q_reg_0),
        .I1(ctrl_pw_out[0]),
        .I2(ctrl_pw_out[1]),
        .I3(q_i_4__15_0[1]),
        .I4(q_i_4__15_0[2]),
        .I5(q_i_4__15_0[0]),
        .O(q_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    q_i_4__15
       (.I0(q_i_11_n_0),
        .I1(ctrl_pw_out[0]),
        .I2(ctrl_dx_out[0]),
        .I3(ctrl_dx_out[1]),
        .I4(ctrl_pw_out[1]),
        .I5(q_reg_2),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(p_1_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1094
   (q_reg_0,
    data_writeReg,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    in_en057_out,
    in_en053_out,
    in_en049_out,
    in_en045_out,
    in_en041_out,
    in_en037_out,
    in_en033_out,
    in_en029_out,
    in_en025_out,
    in_en021_out,
    in_en017_out,
    in_en013_out,
    in_en09_out,
    in_en05_out,
    in_en01_out,
    in_en0,
    in_en03_out,
    in_en07_out,
    in_en011_out,
    in_en015_out,
    in_en019_out,
    in_en023_out,
    in_en027_out,
    in_en031_out,
    in_en035_out,
    in_en039_out,
    in_en043_out,
    in_en047_out,
    in_en051_out,
    in_en055_out,
    in_en059_out,
    exception,
    clk0,
    ctrl_reset,
    \curr_reg1_reg[2] ,
    q_reg_4,
    data1,
    q_reg_5,
    q_reg_6,
    p_3_in,
    \curr_reg1_reg[2]_0 ,
    q_reg_7,
    ctrl_pw_out,
    \curr_reg1_reg[2]_1 ,
    \curr_reg1_reg[2]_2 ,
    q_reg_8,
    q_reg_9,
    rwe);
  output [0:0]q_reg_0;
  output [28:0]data_writeReg;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output in_en057_out;
  output in_en053_out;
  output in_en049_out;
  output in_en045_out;
  output in_en041_out;
  output in_en037_out;
  output in_en033_out;
  output in_en029_out;
  output in_en025_out;
  output in_en021_out;
  output in_en017_out;
  output in_en013_out;
  output in_en09_out;
  output in_en05_out;
  output in_en01_out;
  output in_en0;
  output in_en03_out;
  output in_en07_out;
  output in_en011_out;
  output in_en015_out;
  output in_en019_out;
  output in_en023_out;
  output in_en027_out;
  output in_en031_out;
  output in_en035_out;
  output in_en039_out;
  output in_en043_out;
  output in_en047_out;
  output in_en051_out;
  output in_en055_out;
  output in_en059_out;
  input exception;
  input clk0;
  input ctrl_reset;
  input \curr_reg1_reg[2] ;
  input q_reg_4;
  input [30:0]data1;
  input q_reg_5;
  input q_reg_6;
  input [28:0]p_3_in;
  input \curr_reg1_reg[2]_0 ;
  input [3:0]q_reg_7;
  input [0:0]ctrl_pw_out;
  input \curr_reg1_reg[2]_1 ;
  input [1:0]\curr_reg1_reg[2]_2 ;
  input [2:0]q_reg_8;
  input q_reg_9;
  input rwe;

  wire \RegisterFile/d/nA2 ;
  wire clk0;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[2] ;
  wire \curr_reg1_reg[2]_0 ;
  wire \curr_reg1_reg[2]_1 ;
  wire [1:0]\curr_reg1_reg[2]_2 ;
  wire [30:0]data1;
  wire [28:0]data_writeReg;
  wire exception;
  wire in_en0;
  wire in_en011_out;
  wire in_en013_out;
  wire in_en015_out;
  wire in_en017_out;
  wire in_en019_out;
  wire in_en01_out;
  wire in_en021_out;
  wire in_en023_out;
  wire in_en025_out;
  wire in_en027_out;
  wire in_en029_out;
  wire in_en031_out;
  wire in_en033_out;
  wire in_en035_out;
  wire in_en037_out;
  wire in_en039_out;
  wire in_en03_out;
  wire in_en041_out;
  wire in_en043_out;
  wire in_en045_out;
  wire in_en047_out;
  wire in_en049_out;
  wire in_en051_out;
  wire in_en053_out;
  wire in_en055_out;
  wire in_en057_out;
  wire in_en059_out;
  wire in_en05_out;
  wire in_en07_out;
  wire in_en09_out;
  wire [28:0]p_3_in;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire [3:0]q_reg_7;
  wire [2:0]q_reg_8;
  wire q_reg_9;
  wire [0:0]rd;
  wire rwe;

  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \curr_reg1[12]_i_2 
       (.I0(\RegisterFile/d/nA2 ),
        .I1(\curr_reg1_reg[2]_0 ),
        .I2(q_reg_7[2]),
        .I3(\curr_reg1_reg[2] ),
        .I4(ctrl_pw_out),
        .I5(\curr_reg1_reg[2]_1 ),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'h00031103)) 
    \curr_reg1[12]_i_4 
       (.I0(q_reg_0),
        .I1(q_reg_7[3]),
        .I2(q_reg_7[1]),
        .I3(\curr_reg1_reg[2] ),
        .I4(\curr_reg1_reg[2]_2 [1]),
        .O(\RegisterFile/d/nA2 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    \curr_reg1[2]_i_1 
       (.I0(q_reg_0),
        .I1(data1[1]),
        .I2(\curr_reg1_reg[2] ),
        .I3(p_3_in[1]),
        .O(q_reg_3));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__178
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(q_reg_4),
        .I3(data1[2]),
        .I4(q_reg_5),
        .O(data_writeReg[0]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__179
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(q_reg_6),
        .I3(data1[3]),
        .I4(q_reg_5),
        .O(data_writeReg[1]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__180
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[2]),
        .I3(data1[4]),
        .I4(q_reg_5),
        .O(data_writeReg[2]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__181
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[3]),
        .I3(data1[5]),
        .I4(q_reg_5),
        .O(data_writeReg[3]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__182
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[4]),
        .I3(data1[6]),
        .I4(q_reg_5),
        .O(data_writeReg[4]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__183
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[5]),
        .I3(data1[7]),
        .I4(q_reg_5),
        .O(data_writeReg[5]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__184
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[6]),
        .I3(data1[8]),
        .I4(q_reg_5),
        .O(data_writeReg[6]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__185
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[7]),
        .I3(data1[9]),
        .I4(q_reg_5),
        .O(data_writeReg[7]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__186
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[8]),
        .I3(data1[10]),
        .I4(q_reg_5),
        .O(data_writeReg[8]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__187
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[9]),
        .I3(data1[11]),
        .I4(q_reg_5),
        .O(data_writeReg[9]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__188
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[10]),
        .I3(data1[12]),
        .I4(q_reg_5),
        .O(data_writeReg[10]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__189
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[11]),
        .I3(data1[13]),
        .I4(q_reg_5),
        .O(data_writeReg[11]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__190
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[12]),
        .I3(data1[14]),
        .I4(q_reg_5),
        .O(data_writeReg[12]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__191
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[13]),
        .I3(data1[15]),
        .I4(q_reg_5),
        .O(data_writeReg[13]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__192
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[14]),
        .I3(data1[16]),
        .I4(q_reg_5),
        .O(data_writeReg[14]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__193
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[15]),
        .I3(data1[17]),
        .I4(q_reg_5),
        .O(data_writeReg[15]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__194
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[16]),
        .I3(data1[18]),
        .I4(q_reg_5),
        .O(data_writeReg[16]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__195
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[17]),
        .I3(data1[19]),
        .I4(q_reg_5),
        .O(data_writeReg[17]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__196
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[18]),
        .I3(data1[20]),
        .I4(q_reg_5),
        .O(data_writeReg[18]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__197
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[19]),
        .I3(data1[21]),
        .I4(q_reg_5),
        .O(data_writeReg[19]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__198
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[20]),
        .I3(data1[22]),
        .I4(q_reg_5),
        .O(data_writeReg[20]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__199
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[21]),
        .I3(data1[23]),
        .I4(q_reg_5),
        .O(data_writeReg[21]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__200
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[22]),
        .I3(data1[24]),
        .I4(q_reg_5),
        .O(data_writeReg[22]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__201
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[23]),
        .I3(data1[25]),
        .I4(q_reg_5),
        .O(data_writeReg[23]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__202
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[24]),
        .I3(data1[26]),
        .I4(q_reg_5),
        .O(data_writeReg[24]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__203
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[25]),
        .I3(data1[27]),
        .I4(q_reg_5),
        .O(data_writeReg[25]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__204
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[26]),
        .I3(data1[28]),
        .I4(q_reg_5),
        .O(data_writeReg[26]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__205
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[27]),
        .I3(data1[29]),
        .I4(q_reg_5),
        .O(data_writeReg[27]));
  LUT5 #(
    .INIT(32'h00007340)) 
    q_i_1__206
       (.I0(q_reg_0),
        .I1(\curr_reg1_reg[2] ),
        .I2(p_3_in[28]),
        .I3(data1[30]),
        .I4(q_reg_5),
        .O(data_writeReg[28]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    q_i_1__248
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en057_out));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    q_i_1__249
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en053_out));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    q_i_1__250
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en049_out));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    q_i_1__251
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en045_out));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    q_i_1__252
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en041_out));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    q_i_1__253
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en037_out));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    q_i_1__254
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en033_out));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    q_i_1__255
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en029_out));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    q_i_1__256
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en025_out));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    q_i_1__257
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en021_out));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    q_i_1__258
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en017_out));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    q_i_1__259
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en013_out));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    q_i_1__260
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en09_out));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    q_i_1__261
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en05_out));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    q_i_1__262
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en01_out));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    q_i_1__263
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    q_i_1__264
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en03_out));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    q_i_1__265
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en07_out));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    q_i_1__266
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en011_out));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    q_i_1__267
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en015_out));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    q_i_1__268
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en019_out));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    q_i_1__269
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en023_out));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    q_i_1__270
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en027_out));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    q_i_1__271
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en031_out));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    q_i_1__272
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en035_out));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    q_i_1__273
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en039_out));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    q_i_1__274
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[1]),
        .I4(q_reg_8[2]),
        .I5(q_reg_8[0]),
        .O(in_en043_out));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    q_i_1__275
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en047_out));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    q_i_1__276
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en051_out));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    q_i_1__277
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en055_out));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    q_i_1__278
       (.I0(rwe),
        .I1(rd),
        .I2(\RegisterFile/d/nA2 ),
        .I3(q_reg_8[2]),
        .I4(q_reg_8[1]),
        .I5(q_reg_8[0]),
        .O(in_en059_out));
  LUT5 #(
    .INIT(32'h11300030)) 
    q_i_4__14
       (.I0(q_reg_0),
        .I1(q_reg_7[3]),
        .I2(q_reg_7[0]),
        .I3(\curr_reg1_reg[2] ),
        .I4(\curr_reg1_reg[2]_2 [0]),
        .O(rd));
  LUT5 #(
    .INIT(32'hBF8FB080)) 
    q_i_8__1
       (.I0(q_reg_9),
        .I1(q_reg_0),
        .I2(\curr_reg1_reg[2] ),
        .I3(p_3_in[0]),
        .I4(data1[0]),
        .O(q_reg_2));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(exception),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1095
   (q_reg_0,
    p3,
    q_reg_1,
    multdiv_data,
    clk0,
    ctrl_reset,
    q_i_6,
    q_i_6_0,
    q_i_6_1,
    q_i_6_2,
    q_i_6_3,
    data1,
    \curr_reg1_reg[3] ,
    \curr_reg1_reg[3]_0 );
  output q_reg_0;
  output p3;
  output q_reg_1;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input q_i_6;
  input q_i_6_0;
  input q_i_6_1;
  input q_i_6_2;
  input q_i_6_3;
  input [0:0]data1;
  input \curr_reg1_reg[3] ;
  input [0:0]\curr_reg1_reg[3]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[3] ;
  wire [0:0]\curr_reg1_reg[3]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire p3;
  wire q_i_6;
  wire q_i_6_0;
  wire q_i_6_1;
  wire q_i_6_2;
  wire q_i_6_3;
  wire q_reg_0;
  wire q_reg_1;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[3]_i_1 
       (.I0(data1),
        .I1(q_reg_0),
        .I2(\curr_reg1_reg[3] ),
        .I3(\curr_reg1_reg[3]_0 ),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'hBBB888B8FFFFFFFF)) 
    q_i_8
       (.I0(q_reg_0),
        .I1(q_i_6),
        .I2(q_i_6_0),
        .I3(q_i_6_1),
        .I4(q_i_6_2),
        .I5(q_i_6_3),
        .O(p3));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1096
   (q_reg_0,
    q_reg_1,
    p4,
    P0,
    q_reg_2,
    multdiv_data,
    clk0,
    ctrl_reset,
    q_i_3__0,
    q_i_3__0_0,
    c0,
    p3,
    p2,
    p0,
    q_i_2__22,
    q_i_2__22_0,
    q_i_2__22_1,
    q_i_2__22_2,
    q_i_2__22_3,
    data1,
    \curr_reg1_reg[4] ,
    \curr_reg1_reg[4]_0 );
  output q_reg_0;
  output q_reg_1;
  output p4;
  output P0;
  output q_reg_2;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input q_i_3__0;
  input q_i_3__0_0;
  input c0;
  input p3;
  input p2;
  input p0;
  input q_i_2__22;
  input q_i_2__22_0;
  input q_i_2__22_1;
  input q_i_2__22_2;
  input q_i_2__22_3;
  input [0:0]data1;
  input \curr_reg1_reg[4] ;
  input [0:0]\curr_reg1_reg[4]_0 ;

  wire P0;
  wire c0;
  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[4] ;
  wire [0:0]\curr_reg1_reg[4]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire p0;
  wire p2;
  wire p3;
  wire p4;
  wire q_i_2__22;
  wire q_i_2__22_0;
  wire q_i_2__22_1;
  wire q_i_2__22_2;
  wire q_i_2__22_3;
  wire q_i_3__0;
  wire q_i_3__0_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[4]_i_1 
       (.I0(data1),
        .I1(q_reg_0),
        .I2(\curr_reg1_reg[4] ),
        .I3(\curr_reg1_reg[4]_0 ),
        .O(q_reg_2));
  LUT6 #(
    .INIT(64'hB200000000000000)) 
    q_i_5
       (.I0(q_i_3__0),
        .I1(q_i_3__0_0),
        .I2(c0),
        .I3(p4),
        .I4(p3),
        .I5(p2),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'hA200000000000000)) 
    q_i_6
       (.I0(p4),
        .I1(q_i_3__0_0),
        .I2(q_i_3__0),
        .I3(p0),
        .I4(p2),
        .I5(p3),
        .O(P0));
  LUT6 #(
    .INIT(64'hBBB888B8FFFFFFFF)) 
    q_i_6__0
       (.I0(q_reg_0),
        .I1(q_i_2__22),
        .I2(q_i_2__22_0),
        .I3(q_i_2__22_1),
        .I4(q_i_2__22_2),
        .I5(q_i_2__22_3),
        .O(p4));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1097
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[5] ,
    \curr_reg1_reg[5]_0 );
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[5] ;
  input [0:0]\curr_reg1_reg[5]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[5] ;
  wire [0:0]\curr_reg1_reg[5]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[5]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[5] ),
        .I3(\curr_reg1_reg[5]_0 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1098
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[6] ,
    \curr_reg1_reg[6]_0 );
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[6] ;
  input [0:0]\curr_reg1_reg[6]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[6] ;
  wire [0:0]\curr_reg1_reg[6]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[6]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[6] ),
        .I3(\curr_reg1_reg[6]_0 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1099
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[7] ,
    \curr_reg1_reg[7]_0 );
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[7] ;
  input [0:0]\curr_reg1_reg[7]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[7] ;
  wire [0:0]\curr_reg1_reg[7]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[7]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[7] ),
        .I3(\curr_reg1_reg[7]_0 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_110
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1100
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[8] ,
    \curr_reg1_reg[8]_0 );
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[8] ;
  input [0:0]\curr_reg1_reg[8]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[8] ;
  wire [0:0]\curr_reg1_reg[8]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[8]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[8] ),
        .I3(\curr_reg1_reg[8]_0 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1101
   (p_3_in,
    q_reg_0,
    multdiv_data,
    clk0,
    ctrl_reset,
    data1,
    \curr_reg1_reg[9] ,
    \curr_reg1_reg[9]_0 );
  output [0:0]p_3_in;
  output q_reg_0;
  input [0:0]multdiv_data;
  input clk0;
  input ctrl_reset;
  input [0:0]data1;
  input \curr_reg1_reg[9] ;
  input [0:0]\curr_reg1_reg[9]_0 ;

  wire clk0;
  wire ctrl_reset;
  wire \curr_reg1_reg[9] ;
  wire [0:0]\curr_reg1_reg[9]_0 ;
  wire [0:0]data1;
  wire [0:0]multdiv_data;
  wire [0:0]p_3_in;
  wire q_reg_0;

  LUT4 #(
    .INIT(16'h0ACA)) 
    \curr_reg1[9]_i_1 
       (.I0(data1),
        .I1(p_3_in),
        .I2(\curr_reg1_reg[9] ),
        .I3(\curr_reg1_reg[9]_0 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(multdiv_data),
        .Q(p_3_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1102
   (q_reg_0,
    q_reg_1,
    ctrl_xm_out,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    ctrl_mw_out);
  output q_reg_0;
  output q_reg_1;
  input [0:0]ctrl_xm_out;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input [0:0]ctrl_mw_out;

  wire clk0;
  wire [0:0]ctrl_mw_out;
  wire ctrl_reset;
  wire [0:0]ctrl_xm_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;

  LUT4 #(
    .INIT(16'hAA82)) 
    q_i_2__61
       (.I0(q_reg_0),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(ctrl_mw_out),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_xm_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1103
   (q_reg_0,
    xm_rd,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input [0:0]xm_rd;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire [0:0]xm_rd;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(xm_rd),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1104
   (q_reg_0,
    rwe,
    xm_rd,
    clk0,
    ctrl_reset,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    ctrl_mw_out,
    ctrl_pw_out);
  output q_reg_0;
  output rwe;
  input [0:0]xm_rd;
  input clk0;
  input ctrl_reset;
  input q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input [0:0]ctrl_mw_out;
  input [0:0]ctrl_pw_out;

  wire clk0;
  wire [0:0]ctrl_mw_out;
  wire [0:0]ctrl_pw_out;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire rwe;
  wire [0:0]xm_rd;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    q_i_3__24
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_reg_2),
        .I3(q_reg_3),
        .I4(ctrl_mw_out),
        .I5(ctrl_pw_out),
        .O(rwe));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(xm_rd),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1105
   (q_reg_0,
    \curr_reg1_reg[1] ,
    data_writeReg,
    \curr_reg1_reg[0] ,
    xm_rd,
    clk0,
    ctrl_reset,
    \curr_reg1_reg[0]_0 ,
    D,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    ctrl_mw_out,
    q_reg_4,
    q_reg_5);
  output q_reg_0;
  output \curr_reg1_reg[1] ;
  output [1:0]data_writeReg;
  output \curr_reg1_reg[0] ;
  input [0:0]xm_rd;
  input clk0;
  input ctrl_reset;
  input \curr_reg1_reg[0]_0 ;
  input [1:0]D;
  input q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input [0:0]ctrl_mw_out;
  input q_reg_4;
  input q_reg_5;

  wire [1:0]D;
  wire clk0;
  wire [0:0]ctrl_mw_out;
  wire ctrl_reset;
  wire \curr_reg1_reg[0] ;
  wire \curr_reg1_reg[0]_0 ;
  wire \curr_reg1_reg[1] ;
  wire [1:0]data_writeReg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire [0:0]xm_rd;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \curr_reg1[0]_i_1 
       (.I0(data_writeReg[0]),
        .I1(\curr_reg1_reg[0]_0 ),
        .I2(D[0]),
        .O(\curr_reg1_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \curr_reg1[1]_i_1 
       (.I0(data_writeReg[1]),
        .I1(\curr_reg1_reg[0]_0 ),
        .I2(D[1]),
        .O(\curr_reg1_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF3FFBCCCC0008)) 
    q_i_1__176
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_reg_2),
        .I3(q_reg_3),
        .I4(ctrl_mw_out),
        .I5(q_reg_5),
        .O(data_writeReg[1]));
  LUT6 #(
    .INIT(64'h333BFFFF0008C00C)) 
    q_i_2__60
       (.I0(q_reg_0),
        .I1(q_reg_1),
        .I2(q_reg_2),
        .I3(q_reg_3),
        .I4(ctrl_mw_out),
        .I5(q_reg_4),
        .O(data_writeReg[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(xm_rd),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1106
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    xm_rd,
    clk0,
    ctrl_reset,
    q_i_3__24,
    ctrl_dx_out,
    q_i_3__25,
    q_i_3__25_0);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  input [0:0]xm_rd;
  input clk0;
  input ctrl_reset;
  input q_i_3__24;
  input [2:0]ctrl_dx_out;
  input q_i_3__25;
  input [0:0]q_i_3__25_0;

  wire clk0;
  wire [2:0]ctrl_dx_out;
  wire ctrl_reset;
  wire q_i_3__24;
  wire q_i_3__25;
  wire [0:0]q_i_3__25_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]xm_rd;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    q_i_5__11
       (.I0(q_reg_0),
        .I1(ctrl_dx_out[1]),
        .I2(q_i_3__25),
        .I3(ctrl_dx_out[0]),
        .I4(ctrl_dx_out[2]),
        .I5(q_i_3__25_0),
        .O(q_reg_2));
  LUT2 #(
    .INIT(4'h1)) 
    q_i_9__1
       (.I0(q_reg_0),
        .I1(q_i_3__24),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(xm_rd),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1107
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    xm_rd,
    clk0,
    ctrl_reset,
    q_i_2__36,
    ctrl_dx_out,
    q_i_2__36_0,
    q_i_2__28,
    q_i_2__28_0,
    q_i_2__28_1);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  input [0:0]xm_rd;
  input clk0;
  input ctrl_reset;
  input q_i_2__36;
  input [1:0]ctrl_dx_out;
  input q_i_2__36_0;
  input q_i_2__28;
  input q_i_2__28_0;
  input [0:0]q_i_2__28_1;

  wire clk0;
  wire [1:0]ctrl_dx_out;
  wire ctrl_reset;
  wire q_i_2__28;
  wire q_i_2__28_0;
  wire [0:0]q_i_2__28_1;
  wire q_i_2__36;
  wire q_i_2__36_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]xm_rd;

  LUT6 #(
    .INIT(64'h0000000082000082)) 
    q_i_3__25
       (.I0(q_i_2__36),
        .I1(ctrl_dx_out[1]),
        .I2(q_i_2__36_0),
        .I3(ctrl_dx_out[0]),
        .I4(q_reg_0),
        .I5(q_reg_2),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'h00000001)) 
    q_i_7__3
       (.I0(q_reg_0),
        .I1(q_i_2__28),
        .I2(q_i_2__28_0),
        .I3(q_i_2__36_0),
        .I4(q_i_2__28_1),
        .O(q_reg_2));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(xm_rd),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1108
   (ctrl_mw_out,
    q_reg_0,
    ctrl_xm_out,
    clk0,
    ctrl_reset,
    \curr_reg1_reg[2] ,
    \curr_reg1_reg[2]_0 ,
    \curr_reg1_reg[2]_1 ,
    \curr_reg1_reg[2]_2 );
  output [0:0]ctrl_mw_out;
  output q_reg_0;
  input [0:0]ctrl_xm_out;
  input clk0;
  input ctrl_reset;
  input \curr_reg1_reg[2] ;
  input \curr_reg1_reg[2]_0 ;
  input [0:0]\curr_reg1_reg[2]_1 ;
  input \curr_reg1_reg[2]_2 ;

  wire clk0;
  wire [0:0]ctrl_mw_out;
  wire ctrl_reset;
  wire [0:0]ctrl_xm_out;
  wire \curr_reg1_reg[2] ;
  wire \curr_reg1_reg[2]_0 ;
  wire [0:0]\curr_reg1_reg[2]_1 ;
  wire \curr_reg1_reg[2]_2 ;
  wire q_reg_0;

  LUT5 #(
    .INIT(32'hEB000000)) 
    \curr_reg1[12]_i_1 
       (.I0(ctrl_mw_out),
        .I1(\curr_reg1_reg[2] ),
        .I2(\curr_reg1_reg[2]_0 ),
        .I3(\curr_reg1_reg[2]_1 ),
        .I4(\curr_reg1_reg[2]_2 ),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(ctrl_xm_out),
        .Q(ctrl_mw_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1109
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__28
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_111
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1110
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__29
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1111
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__30
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1112
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__31
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1113
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__32
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1114
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__33
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1115
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__34
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1116
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__35
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1117
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__36
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1118
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__37
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1119
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__38
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_112
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1120
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__39
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1121
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__40
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1122
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__41
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1123
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__42
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1124
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT5 #(
    .INIT(32'hFFFB0008)) 
    q_i_2__43
       (.I0(data1),
        .I1(q_reg_2),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1125
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__44
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1126
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__45
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1127
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__46
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1128
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__47
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1129
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__48
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_113
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1130
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__49
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1131
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__50
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1132
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__51
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1133
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__52
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1134
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__53
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1135
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__54
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1136
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__55
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1137
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__56
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1138
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__57
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1139
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__58
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_114
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1140
   (data1,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    q_reg_2,
    dx_out_A);
  output [0:0]data1;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]dx_out_A;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]dx_out_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_2__59
       (.I0(data1),
        .I1(q_reg_2),
        .I2(dx_out_A),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1141
   (q_reg_0,
    exception,
    q_reg_1,
    cpu_clock_BUFG);
  output q_reg_0;
  output exception;
  input q_reg_1;
  input cpu_clock_BUFG;

  wire cpu_clock_BUFG;
  wire exception;
  wire q_reg_0;
  wire q_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_i_1__280
       (.I0(q_reg_0),
        .O(exception));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(q_reg_1),
        .Q(q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1146
   (q_reg_0,
    D,
    D_0,
    D_1,
    D_2,
    cpu_clock_BUFG,
    q_reg_1,
    q_reg_2,
    q_reg_3);
  output q_reg_0;
  output D;
  output D_0;
  output D_1;
  input D_2;
  input cpu_clock_BUFG;
  input q_reg_1;
  input [2:0]q_reg_2;
  input q_reg_3;

  wire D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire cpu_clock_BUFG;
  wire q_reg_0;
  wire q_reg_1;
  wire [2:0]q_reg_2;
  wire q_reg_3;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    q_i_1__96
       (.I0(q_reg_0),
        .I1(q_reg_2[2]),
        .I2(q_reg_3),
        .I3(q_reg_2[0]),
        .I4(q_reg_2[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    q_i_1__97
       (.I0(q_reg_0),
        .I1(q_reg_2[2]),
        .I2(q_reg_2[1]),
        .I3(q_reg_3),
        .I4(q_reg_2[0]),
        .O(D_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    q_i_1__98
       (.I0(q_reg_0),
        .I1(q_reg_2[1]),
        .I2(q_reg_2[0]),
        .I3(q_reg_2[2]),
        .I4(q_reg_3),
        .O(D_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1147
   (q_reg_0,
    D,
    D_0,
    cpu_clock_BUFG,
    q_reg_1,
    cycle);
  output [0:0]q_reg_0;
  output D;
  input D_0;
  input cpu_clock_BUFG;
  input q_reg_1;
  input [2:0]cycle;

  wire D;
  wire D_0;
  wire cpu_clock_BUFG;
  wire [2:0]cycle;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  LUT4 #(
    .INIT(16'h7F80)) 
    q_i_1__99
       (.I0(q_reg_0),
        .I1(cycle[0]),
        .I2(cycle[1]),
        .I3(cycle[2]),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D_0),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1148
   (cycle,
    q_reg_0,
    D,
    D_0,
    cpu_clock_BUFG,
    q_reg_1,
    q_i_2__25);
  output [0:0]cycle;
  output q_reg_0;
  output D;
  input D_0;
  input cpu_clock_BUFG;
  input q_reg_1;
  input [2:0]q_i_2__25;

  wire D;
  wire D_0;
  wire cpu_clock_BUFG;
  wire [0:0]cycle;
  wire [2:0]q_i_2__25;
  wire q_reg_0;
  wire q_reg_1;

  LUT3 #(
    .INIT(8'h78)) 
    q_i_1__100
       (.I0(cycle),
        .I1(q_i_2__25[0]),
        .I2(q_i_2__25[1]),
        .O(D));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_4__12
       (.I0(cycle),
        .I1(q_i_2__25[1]),
        .I2(q_i_2__25[2]),
        .I3(q_i_2__25[0]),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D_0),
        .Q(cycle));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1149
   (q_reg_0,
    D,
    cpu_clock_BUFG,
    q_reg_1);
  output q_reg_0;
  input D;
  input cpu_clock_BUFG;
  input q_reg_1;

  wire D;
  wire cpu_clock_BUFG;
  wire q_reg_0;
  wire q_reg_1;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_115
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1150
   (cycle,
    D,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]cycle;
  input D;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire D;
  wire cpu_clock_BUFG;
  wire [0:0]cycle;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(D),
        .Q(cycle));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1159
   (cycle_0,
    D,
    D_0,
    cpu_clock_BUFG,
    q_reg_0,
    q_reg_1);
  output [0:0]cycle_0;
  output D;
  input D_0;
  input cpu_clock_BUFG;
  input q_reg_0;
  input [3:0]q_reg_1;

  wire D;
  wire D_0;
  wire cpu_clock_BUFG;
  wire [0:0]cycle_0;
  wire q_reg_0;
  wire [3:0]q_reg_1;

  LUT5 #(
    .INIT(32'h7FFF8000)) 
    q_i_1__137
       (.I0(cycle_0),
        .I1(q_reg_1[1]),
        .I2(q_reg_1[0]),
        .I3(q_reg_1[2]),
        .I4(q_reg_1[3]),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(D_0),
        .Q(cycle_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_116
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1160
   (q_reg_0,
    D,
    D_0,
    D_1,
    D_2,
    cpu_clock_BUFG,
    q_reg_1,
    cycle_0);
  output q_reg_0;
  output D;
  output D_0;
  output D_1;
  input D_2;
  input cpu_clock_BUFG;
  input q_reg_1;
  input [4:0]cycle_0;

  wire D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire cpu_clock_BUFG;
  wire [4:0]cycle_0;
  wire q_reg_0;
  wire q_reg_1;

  LUT6 #(
    .INIT(64'h0000FFFFFEFF0000)) 
    q_i_1__101
       (.I0(q_reg_0),
        .I1(cycle_0[2]),
        .I2(cycle_0[3]),
        .I3(cycle_0[4]),
        .I4(cycle_0[0]),
        .I5(cycle_0[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    q_i_1__135
       (.I0(q_reg_0),
        .I1(cycle_0[2]),
        .I2(cycle_0[3]),
        .I3(cycle_0[1]),
        .I4(cycle_0[4]),
        .I5(cycle_0[0]),
        .O(D_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    q_i_1__138
       (.I0(q_reg_0),
        .I1(cycle_0[0]),
        .I2(cycle_0[1]),
        .I3(cycle_0[2]),
        .O(D_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1161
   (q_reg_0,
    D,
    cpu_clock_BUFG,
    q_reg_1);
  output [0:0]q_reg_0;
  input D;
  input cpu_clock_BUFG;
  input q_reg_1;

  wire D;
  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1162
   (cycle_0,
    p_1_out,
    data_resultRDY,
    D,
    D_0,
    cpu_clock_BUFG,
    q_reg_0,
    am_multdiv,
    q_reg_1,
    q_reg_2,
    cycle,
    q_reg_3);
  output [0:0]cycle_0;
  output [0:0]p_1_out;
  output data_resultRDY;
  output D;
  input D_0;
  input cpu_clock_BUFG;
  input q_reg_0;
  input am_multdiv;
  input [4:0]q_reg_1;
  input q_reg_2;
  input [0:0]cycle;
  input q_reg_3;

  wire D;
  wire D_0;
  wire am_multdiv;
  wire cpu_clock_BUFG;
  wire [0:0]cycle;
  wire [0:0]cycle_0;
  wire data_resultRDY;
  wire [0:0]p_1_out;
  wire q_i_3__23_n_0;
  wire q_reg_0;
  wire [4:0]q_reg_1;
  wire q_reg_2;
  wire q_reg_3;

  LUT3 #(
    .INIT(8'h78)) 
    q_i_1__139
       (.I0(cycle_0),
        .I1(q_reg_1[0]),
        .I2(q_reg_1[1]),
        .O(D));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__245
       (.I0(data_resultRDY),
        .I1(am_multdiv),
        .O(p_1_out));
  LUT6 #(
    .INIT(64'h000044440F004444)) 
    q_i_2__25
       (.I0(q_i_3__23_n_0),
        .I1(q_reg_1[4]),
        .I2(q_reg_2),
        .I3(cycle),
        .I4(q_reg_3),
        .I5(q_reg_0),
        .O(data_resultRDY));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_3__23
       (.I0(cycle_0),
        .I1(q_reg_1[3]),
        .I2(q_reg_1[2]),
        .I3(q_reg_1[1]),
        .I4(q_reg_1[0]),
        .O(q_i_3__23_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(D_0),
        .Q(cycle_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1163
   (q_reg_0,
    D,
    D_0,
    cpu_clock_BUFG,
    q_reg_1,
    cycle_0);
  output [0:0]q_reg_0;
  output D;
  input D_0;
  input cpu_clock_BUFG;
  input q_reg_1;
  input [4:0]cycle_0;

  wire D;
  wire D_0;
  wire cpu_clock_BUFG;
  wire [4:0]cycle_0;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    q_i_1__136
       (.I0(q_reg_0),
        .I1(cycle_0[2]),
        .I2(cycle_0[0]),
        .I3(cycle_0[1]),
        .I4(cycle_0[3]),
        .I5(cycle_0[4]),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(D_0),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1164
   (cycle_0,
    q_reg_0,
    q_reg_1,
    alu_in_A,
    D,
    cpu_clock_BUFG,
    q_reg_2,
    hilo,
    q_reg_3);
  output [0:0]cycle_0;
  output q_reg_0;
  output q_reg_1;
  output [29:0]alu_in_A;
  input D;
  input cpu_clock_BUFG;
  input q_reg_2;
  input [30:0]hilo;
  input [4:0]q_reg_3;

  wire D;
  wire [29:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]cycle_0;
  wire [30:0]hilo;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [4:0]q_reg_3;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__105
       (.I0(q_reg_1),
        .I1(hilo[0]),
        .O(alu_in_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__106
       (.I0(q_reg_1),
        .I1(hilo[1]),
        .O(alu_in_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__107
       (.I0(q_reg_1),
        .I1(hilo[2]),
        .O(alu_in_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__108
       (.I0(q_reg_1),
        .I1(hilo[3]),
        .O(alu_in_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__109
       (.I0(q_reg_1),
        .I1(hilo[4]),
        .O(alu_in_A[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__110
       (.I0(q_reg_1),
        .I1(hilo[5]),
        .O(alu_in_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__111
       (.I0(q_reg_1),
        .I1(hilo[6]),
        .O(alu_in_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__112
       (.I0(q_reg_1),
        .I1(hilo[7]),
        .O(alu_in_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__113
       (.I0(q_reg_1),
        .I1(hilo[8]),
        .O(alu_in_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__114
       (.I0(q_reg_1),
        .I1(hilo[9]),
        .O(alu_in_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__115
       (.I0(q_reg_1),
        .I1(hilo[10]),
        .O(alu_in_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__116
       (.I0(q_reg_1),
        .I1(hilo[11]),
        .O(alu_in_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__117
       (.I0(q_reg_1),
        .I1(hilo[12]),
        .O(alu_in_A[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__118
       (.I0(q_reg_1),
        .I1(hilo[13]),
        .O(alu_in_A[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__119
       (.I0(q_reg_1),
        .I1(hilo[14]),
        .O(alu_in_A[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__120
       (.I0(q_reg_1),
        .I1(hilo[15]),
        .O(alu_in_A[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__121
       (.I0(q_reg_1),
        .I1(hilo[16]),
        .O(alu_in_A[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__122
       (.I0(q_reg_1),
        .I1(hilo[17]),
        .O(alu_in_A[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__123
       (.I0(q_reg_1),
        .I1(hilo[18]),
        .O(alu_in_A[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__124
       (.I0(q_reg_1),
        .I1(hilo[19]),
        .O(alu_in_A[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__125
       (.I0(q_reg_1),
        .I1(hilo[20]),
        .O(alu_in_A[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__126
       (.I0(q_reg_1),
        .I1(hilo[21]),
        .O(alu_in_A[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__127
       (.I0(q_reg_1),
        .I1(hilo[22]),
        .O(alu_in_A[22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__128
       (.I0(q_reg_1),
        .I1(hilo[23]),
        .O(alu_in_A[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__129
       (.I0(q_reg_1),
        .I1(hilo[24]),
        .O(alu_in_A[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__130
       (.I0(q_reg_1),
        .I1(hilo[25]),
        .O(alu_in_A[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__131
       (.I0(q_reg_1),
        .I1(hilo[26]),
        .O(alu_in_A[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__132
       (.I0(q_reg_1),
        .I1(hilo[27]),
        .O(alu_in_A[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__133
       (.I0(q_reg_1),
        .I1(hilo[28]),
        .O(alu_in_A[28]));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__134
       (.I0(q_reg_1),
        .I1(hilo[29]),
        .O(alu_in_A[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    q_i_1__279
       (.I0(q_reg_1),
        .I1(hilo[30]),
        .O(q_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_4__13
       (.I0(cycle_0),
        .I1(q_reg_3[1]),
        .I2(q_reg_3[2]),
        .I3(q_reg_3[3]),
        .I4(q_reg_3[0]),
        .I5(q_reg_3[4]),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(D),
        .Q(cycle_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1165
   (p_0_in,
    multdiv_data,
    q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9);
  output [0:0]p_0_in;
  output [2:0]multdiv_data;
  output q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input [0:0]q_reg_7;
  input q_reg_8;
  input [0:0]q_reg_9;

  wire cpu_clock_BUFG;
  wire [2:0]multdiv_data;
  wire [0:0]p_0_in;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire [0:0]q_reg_7;
  wire q_reg_8;
  wire [0:0]q_reg_9;

  LUT3 #(
    .INIT(8'hB8)) 
    q_i_1__102
       (.I0(p_0_in),
        .I1(q_reg_8),
        .I2(q_reg_9),
        .O(q_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    q_i_1__141
       (.I0(p_0_in),
        .I1(q_reg_4),
        .I2(q_reg_7),
        .I3(q_reg_3),
        .O(multdiv_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q_i_1__281
       (.I0(p_0_in),
        .I1(q_reg_3),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'h0000000001FEFF00)) 
    q_i_1__94
       (.I0(p_0_in),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .I5(q_reg_3),
        .O(multdiv_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(p_0_in));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1166
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    q_reg_11,
    q_reg_12);
  output [0:0]q_reg_0;
  output q_reg_1;
  output [1:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;
  input q_reg_9;
  input [1:0]q_reg_10;
  input [0:0]q_reg_11;
  input q_reg_12;

  wire cpu_clock_BUFG;
  wire [1:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire [1:0]q_reg_10;
  wire [0:0]q_reg_11;
  wire q_reg_12;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;

  LUT4 #(
    .INIT(16'h009C)) 
    q_i_1__83
       (.I0(q_reg_9),
        .I1(q_reg_10[1]),
        .I2(q_reg_11),
        .I3(q_reg_12),
        .O(multdiv_data[1]));
  LUT4 #(
    .INIT(16'h009C)) 
    q_i_1__87
       (.I0(q_reg_1),
        .I1(q_reg_10[0]),
        .I2(q_reg_11),
        .I3(q_reg_12),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    q_i_2__69
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1167
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input [0:0]q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [0:0]q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;

  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__86
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4),
        .I3(q_reg_5),
        .I4(q_reg_6),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1168
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input [1:0]q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [1:0]q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;

  LUT6 #(
    .INIT(64'h0000000010EFFF00)) 
    q_i_1__85
       (.I0(q_reg_0),
        .I1(q_reg_3[0]),
        .I2(q_reg_4),
        .I3(q_reg_3[1]),
        .I4(q_reg_5),
        .I5(q_reg_6),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1169
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output [0:0]q_reg_0;
  output [1:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;

  wire cpu_clock_BUFG;
  wire [1:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;

  LUT4 #(
    .INIT(16'h009C)) 
    q_i_1__79
       (.I0(q_reg_3),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'h0000000002FDFF00)) 
    q_i_1__82
       (.I0(q_reg_3),
        .I1(q_reg_4),
        .I2(q_reg_7),
        .I3(q_reg_8),
        .I4(q_reg_5),
        .I5(q_reg_6),
        .O(multdiv_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_117
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1170
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input [0:0]q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [0:0]q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;

  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__84
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4),
        .I3(q_reg_5),
        .I4(q_reg_6),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1171
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1172
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10);
  output [0:0]q_reg_0;
  output q_reg_1;
  output [0:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;
  input [0:0]q_reg_9;
  input q_reg_10;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire [0:0]q_reg_9;

  LUT4 #(
    .INIT(16'h009C)) 
    q_i_1__70
       (.I0(q_reg_1),
        .I1(q_reg_8),
        .I2(q_reg_9),
        .I3(q_reg_10),
        .O(multdiv_data));
  LUT5 #(
    .INIT(32'h00000001)) 
    q_i_2__67
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1173
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output q_reg_0;
  output [3:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input [4:0]q_reg_4;
  input q_reg_5;
  input [0:0]q_reg_6;
  input q_reg_7;
  input q_reg_8;

  wire cpu_clock_BUFG;
  wire [3:0]multdiv_data;
  wire q_i_2__73_n_0;
  wire q_i_2__74_n_0;
  wire q_i_2__75_n_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [4:0]q_reg_4;
  wire q_reg_5;
  wire [0:0]q_reg_6;
  wire q_reg_7;
  wire q_reg_8;

  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__67
       (.I0(q_i_2__73_n_0),
        .I1(q_reg_5),
        .I2(q_reg_4[4]),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(multdiv_data[3]));
  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__68
       (.I0(q_i_2__74_n_0),
        .I1(q_reg_5),
        .I2(q_reg_4[3]),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(multdiv_data[2]));
  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__69
       (.I0(q_i_2__75_n_0),
        .I1(q_reg_5),
        .I2(q_reg_4[2]),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(multdiv_data[1]));
  LUT5 #(
    .INIT(32'h00001EF0)) 
    q_i_1__81
       (.I0(q_reg_8),
        .I1(q_reg_4[0]),
        .I2(q_reg_3),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__73
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4[3]),
        .I3(q_reg_4[1]),
        .I4(q_reg_4[2]),
        .I5(q_reg_4[0]),
        .O(q_i_2__73_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__74
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4[2]),
        .I3(q_reg_4[1]),
        .I4(q_reg_4[0]),
        .O(q_i_2__74_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__75
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4[1]),
        .I3(q_reg_4[0]),
        .O(q_i_2__75_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1174
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1175
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input [1:0]q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [1:0]q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;

  LUT6 #(
    .INIT(64'h0000000001FEFF00)) 
    q_i_1__80
       (.I0(q_reg_0),
        .I1(q_reg_3[0]),
        .I2(q_reg_4),
        .I3(q_reg_3[1]),
        .I4(q_reg_5),
        .I5(q_reg_6),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1176
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    p_0_in,
    q_reg_3,
    q_reg_4,
    q_reg_5);
  output q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input [0:0]p_0_in;
  input q_reg_3;
  input [0:0]q_reg_4;
  input q_reg_5;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]p_0_in;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [0:0]q_reg_4;
  wire q_reg_5;

  LUT5 #(
    .INIT(32'h00001EF0)) 
    q_i_1__95
       (.I0(q_reg_0),
        .I1(p_0_in),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(q_reg_5),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1177
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1178
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1179
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_118
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1180
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;

  LUT4 #(
    .INIT(16'h009C)) 
    q_i_1__71
       (.I0(q_reg_3),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1181
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9);
  output q_reg_0;
  output q_reg_1;
  output [5:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input [5:0]q_reg_6;
  input [0:0]q_reg_7;
  input q_reg_8;
  input q_reg_9;

  wire cpu_clock_BUFG;
  wire [5:0]multdiv_data;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire [5:0]q_reg_6;
  wire [0:0]q_reg_7;
  wire q_reg_8;
  wire q_reg_9;

  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__72
       (.I0(q_reg_1),
        .I1(q_reg_5),
        .I2(q_reg_6[5]),
        .I3(q_reg_7),
        .I4(q_reg_8),
        .O(multdiv_data[5]));
  LUT6 #(
    .INIT(64'h0000000004FBFF00)) 
    q_i_1__73
       (.I0(q_reg_1),
        .I1(q_reg_9),
        .I2(q_reg_6[3]),
        .I3(q_reg_6[4]),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(multdiv_data[4]));
  LUT5 #(
    .INIT(32'h00004BF0)) 
    q_i_1__74
       (.I0(q_reg_1),
        .I1(q_reg_9),
        .I2(q_reg_6[3]),
        .I3(q_reg_7),
        .I4(q_reg_8),
        .O(multdiv_data[3]));
  LUT6 #(
    .INIT(64'h0000000001FEFF00)) 
    q_i_1__75
       (.I0(q_reg_1),
        .I1(q_reg_6[0]),
        .I2(q_reg_6[1]),
        .I3(q_reg_6[2]),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(multdiv_data[2]));
  LUT4 #(
    .INIT(16'h006C)) 
    q_i_1__77
       (.I0(q_reg_1),
        .I1(q_reg_6[0]),
        .I2(q_reg_7),
        .I3(q_reg_8),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'h0000000010EFFF00)) 
    q_i_1__78
       (.I0(q_reg_0),
        .I1(q_reg_6[0]),
        .I2(q_reg_4),
        .I3(q_reg_6[1]),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(multdiv_data[1]));
  LUT2 #(
    .INIT(4'hB)) 
    q_i_2__68
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1182
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output [0:0]q_reg_0;
  output q_reg_1;
  output [0:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input [3:0]q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;
  input [0:0]q_reg_7;
  input q_reg_8;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire q_i_2__71_n_0;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [3:0]q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;
  wire [0:0]q_reg_7;
  wire q_reg_8;

  LUT5 #(
    .INIT(32'h00001EF0)) 
    q_i_1__76
       (.I0(q_i_2__71_n_0),
        .I1(q_reg_6),
        .I2(q_reg_5),
        .I3(q_reg_7),
        .I4(q_reg_8),
        .O(multdiv_data));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    q_i_2__70
       (.I0(q_reg_0),
        .I1(q_reg_4[1]),
        .I2(q_reg_4[3]),
        .I3(q_reg_5),
        .I4(q_reg_4[2]),
        .I5(q_reg_4[0]),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__71
       (.I0(q_reg_0),
        .I1(q_reg_4[1]),
        .I2(q_reg_4[3]),
        .I3(q_reg_4[2]),
        .I4(q_reg_4[0]),
        .O(q_i_2__71_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1183
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4);
  output [0:0]q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input [1:0]q_reg_4;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]q_reg_4;

  LUT3 #(
    .INIT(8'h01)) 
    q_i_2__72
       (.I0(q_reg_0),
        .I1(q_reg_4[0]),
        .I2(q_reg_4[1]),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1184
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1185
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1186
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1187
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    p_0_in,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7);
  output q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input [0:0]p_0_in;
  input q_reg_4;
  input q_reg_5;
  input [0:0]q_reg_6;
  input q_reg_7;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]p_0_in;
  wire q_i_2__79_n_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire [0:0]q_reg_6;
  wire q_reg_7;

  LUT4 #(
    .INIT(16'h006C)) 
    q_i_1__93
       (.I0(q_i_2__79_n_0),
        .I1(q_reg_5),
        .I2(q_reg_6),
        .I3(q_reg_7),
        .O(multdiv_data));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__79
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(p_0_in),
        .I3(q_reg_4),
        .O(q_i_2__79_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1188
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1189
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_119
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1190
   (hilo,
    q_reg_0,
    cpu_clock_BUFG,
    q_reg_1);
  output [0:0]hilo;
  input [0:0]q_reg_0;
  input cpu_clock_BUFG;
  input q_reg_1;

  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(q_reg_0),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1191
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1192
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1193
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1194
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1195
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1196
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1197
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1198
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    p_0_in,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input [0:0]p_0_in;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input [0:0]q_reg_6;
  input [0:0]q_reg_7;
  input q_reg_8;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire [0:0]p_0_in;
  wire q_i_2__78_n_0;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire [0:0]q_reg_6;
  wire [0:0]q_reg_7;
  wire q_reg_8;

  LUT4 #(
    .INIT(16'h006C)) 
    q_i_1__92
       (.I0(q_i_2__78_n_0),
        .I1(q_reg_6),
        .I2(q_reg_7),
        .I3(q_reg_8),
        .O(multdiv_data));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__78
       (.I0(q_reg_0),
        .I1(p_0_in),
        .I2(q_reg_3),
        .I3(q_reg_4),
        .I4(q_reg_5),
        .O(q_i_2__78_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1199
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_120
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1200
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1201
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1202
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1203
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1204
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1205
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1206
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1207
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1208
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1209
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    p_0_in,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9);
  output q_reg_0;
  output q_reg_1;
  output [1:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input [0:0]p_0_in;
  input q_reg_6;
  input [2:0]q_reg_7;
  input [0:0]q_reg_8;
  input q_reg_9;

  wire cpu_clock_BUFG;
  wire [1:0]multdiv_data;
  wire [0:0]p_0_in;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire [2:0]q_reg_7;
  wire [0:0]q_reg_8;
  wire q_reg_9;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00001EF0)) 
    q_i_1__90
       (.I0(q_reg_1),
        .I1(q_reg_7[1]),
        .I2(q_reg_7[2]),
        .I3(q_reg_8),
        .I4(q_reg_9),
        .O(multdiv_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    q_i_1__91
       (.I0(q_reg_1),
        .I1(q_reg_7[1]),
        .I2(q_reg_8),
        .I3(q_reg_9),
        .O(multdiv_data[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__77
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(p_0_in),
        .I4(q_reg_6),
        .I5(q_reg_7[0]),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_121
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1210
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1211
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1212
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1213
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1214
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1215
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1216
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1217
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1218
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1219
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_122
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1220
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1221
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1222
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1223
   (hilo,
    alu_in_A,
    cpu_clock_BUFG,
    q_reg_0);
  output [0:0]hilo;
  input [0:0]alu_in_A;
  input cpu_clock_BUFG;
  input q_reg_0;

  wire [0:0]alu_in_A;
  wire cpu_clock_BUFG;
  wire [0:0]hilo;
  wire q_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(alu_in_A),
        .Q(hilo));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1224
   (q_reg_0,
    q_reg_1,
    multdiv_data,
    q_reg_2,
    cpu_clock_BUFG,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9);
  output [0:0]q_reg_0;
  output q_reg_1;
  output [1:0]multdiv_data;
  input q_reg_2;
  input cpu_clock_BUFG;
  input q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input q_reg_6;
  input [0:0]q_reg_7;
  input q_reg_8;
  input q_reg_9;

  wire cpu_clock_BUFG;
  wire [1:0]multdiv_data;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire q_reg_6;
  wire [0:0]q_reg_7;
  wire q_reg_8;
  wire q_reg_9;

  LUT5 #(
    .INIT(32'h00001EF0)) 
    q_i_1__140
       (.I0(q_reg_1),
        .I1(q_reg_6),
        .I2(q_reg_9),
        .I3(q_reg_7),
        .I4(q_reg_8),
        .O(multdiv_data[1]));
  LUT6 #(
    .INIT(64'h0000000001FEFF00)) 
    q_i_1__89
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(multdiv_data[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__76
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .O(q_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_3),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1225
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output [0:0]q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1226
   (q_reg_0,
    multdiv_data,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7);
  output q_reg_0;
  output [0:0]multdiv_data;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;
  input q_reg_3;
  input q_reg_4;
  input [0:0]q_reg_5;
  input [0:0]q_reg_6;
  input q_reg_7;

  wire cpu_clock_BUFG;
  wire [0:0]multdiv_data;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire [0:0]q_reg_6;
  wire q_reg_7;

  LUT6 #(
    .INIT(64'h0000000001FEFF00)) 
    q_i_1__88
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .I2(q_reg_4),
        .I3(q_reg_5),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(multdiv_data));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1227
   (q_reg_0,
    q_reg_1,
    cpu_clock_BUFG,
    q_reg_2);
  output q_reg_0;
  input q_reg_1;
  input cpu_clock_BUFG;
  input q_reg_2;

  wire cpu_clock_BUFG;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .CLR(q_reg_2),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1228
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    multdiv_latch);
  output q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input [1:0]multdiv_latch;

  wire clk0;
  wire ctrl_reset;
  wire [1:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;

  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__92
       (.I0(q_reg_0),
        .I1(multdiv_latch[0]),
        .I2(multdiv_latch[1]),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1229
   (multdiv_latch,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output [0:0]multdiv_latch;
  input q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_0),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(multdiv_latch));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_123
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1230
   (multdiv_latch,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_reg_3,
    q_reg_4,
    alu_out);
  output [0:0]multdiv_latch;
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input [0:0]q_reg_3;
  input q_reg_4;
  input [0:0]alu_out;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]q_reg_3;
  wire q_reg_4;

  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__91
       (.I0(multdiv_latch),
        .I1(q_reg_3),
        .I2(q_reg_4),
        .I3(alu_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(multdiv_latch));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1231
   (alu_out,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_reg_3,
    multdiv_latch,
    q_reg_4);
  output [0:0]alu_out;
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input q_reg_3;
  input [1:0]multdiv_latch;
  input [0:0]q_reg_4;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [1:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [0:0]q_reg_4;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__90
       (.I0(alu_out),
        .I1(q_reg_3),
        .I2(multdiv_latch[0]),
        .I3(multdiv_latch[1]),
        .I4(q_reg_4),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(alu_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1232
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    multdiv_latch,
    q_reg_4,
    alu_out);
  output [0:0]q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input [2:0]multdiv_latch;
  input q_reg_4;
  input [0:0]alu_out;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [2:0]multdiv_latch;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__89
       (.I0(q_reg_0),
        .I1(multdiv_latch[1]),
        .I2(multdiv_latch[0]),
        .I3(q_reg_4),
        .I4(alu_out),
        .I5(multdiv_latch[2]),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1233
   (multdiv_latch,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output [0:0]multdiv_latch;
  input q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_0),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(multdiv_latch));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1234
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    q_reg_4,
    q_reg_5);
  output q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input q_reg_4;
  input q_reg_5;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;

  LUT3 #(
    .INIT(8'hFE)) 
    q_i_2__88
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1235
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1236
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1237
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1238
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8);
  output [0:0]q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    q_i_2__66
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .I5(q_reg_8),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1239
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_124
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1240
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1241
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1242
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1243
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1244
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7);
  output q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;

  LUT5 #(
    .INIT(32'h00000001)) 
    q_i_2__63
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .I4(q_reg_7),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1245
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    clk0,
    ctrl_reset,
    q_reg_6,
    q_reg_7);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input clk0;
  input ctrl_reset;
  input q_reg_6;
  input [3:0]q_reg_7;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire [3:0]q_reg_7;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    q_i_2__85
       (.I0(q_reg_0),
        .I1(q_reg_6),
        .I2(q_reg_7[3]),
        .I3(q_reg_7[1]),
        .I4(q_reg_7[2]),
        .I5(q_reg_7[0]),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__86
       (.I0(q_reg_0),
        .I1(q_reg_6),
        .I2(q_reg_7[2]),
        .I3(q_reg_7[1]),
        .I4(q_reg_7[0]),
        .O(q_reg_2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q_i_2__87
       (.I0(q_reg_0),
        .I1(q_reg_6),
        .I2(q_reg_7[1]),
        .I3(q_reg_7[0]),
        .O(q_reg_3));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_4),
        .CLR(ctrl_reset),
        .D(q_reg_5),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1246
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    q_reg_4,
    q_reg_5,
    q_reg_6);
  output [0:0]q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input q_reg_4;
  input [0:0]q_reg_5;
  input [0:0]q_reg_6;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;
  wire [0:0]q_reg_6;

  LUT4 #(
    .INIT(16'h0004)) 
    q_i_2__65
       (.I0(q_reg_0),
        .I1(q_reg_4),
        .I2(q_reg_5),
        .I3(q_reg_6),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1247
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1248
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1249
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_125
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1250
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1251
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1252
   (multdiv_latch,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    q_reg_4,
    q_reg_5);
  output [0:0]multdiv_latch;
  output q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input q_reg_4;
  input [0:0]q_reg_5;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire [0:0]q_reg_5;

  LUT2 #(
    .INIT(4'hB)) 
    q_i_2__64
       (.I0(multdiv_latch),
        .I1(q_reg_4),
        .O(q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    q_i_2__84
       (.I0(multdiv_latch),
        .I1(q_reg_5),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_2),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(multdiv_latch));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1253
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    clk0,
    ctrl_reset,
    alu_out,
    multdiv_latch);
  output [0:0]q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  input q_reg_4;
  input q_reg_5;
  input clk0;
  input ctrl_reset;
  input [3:0]alu_out;
  input [0:0]multdiv_latch;

  wire [3:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    q_i_2__80
       (.I0(q_reg_0),
        .I1(alu_out[0]),
        .I2(alu_out[2]),
        .I3(alu_out[1]),
        .I4(multdiv_latch),
        .O(q_reg_2));
  LUT2 #(
    .INIT(4'h1)) 
    q_i_2__83
       (.I0(q_reg_0),
        .I1(multdiv_latch),
        .O(q_reg_3));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    q_i_3__28
       (.I0(q_reg_0),
        .I1(alu_out[0]),
        .I2(alu_out[2]),
        .I3(alu_out[3]),
        .I4(alu_out[1]),
        .I5(multdiv_latch),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_4),
        .CLR(ctrl_reset),
        .D(q_reg_5),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1254
   (multdiv_latch,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_reg_3,
    alu_out);
  output [0:0]multdiv_latch;
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input [0:0]q_reg_3;
  input [0:0]alu_out;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [0:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]q_reg_3;

  LUT3 #(
    .INIT(8'h01)) 
    q_i_2__82
       (.I0(multdiv_latch),
        .I1(q_reg_3),
        .I2(alu_out),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(multdiv_latch));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1255
   (alu_out,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    multdiv_latch,
    q_reg_3);
  output [0:0]alu_out;
  output q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input [1:0]multdiv_latch;
  input [0:0]q_reg_3;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [1:0]multdiv_latch;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]q_reg_3;

  LUT4 #(
    .INIT(16'h0001)) 
    q_i_2__81
       (.I0(alu_out),
        .I1(multdiv_latch[0]),
        .I2(multdiv_latch[1]),
        .I3(q_reg_3),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(alu_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1256
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1257
   (alu_out,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output [0:0]alu_out;
  input q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_0),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(alu_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1258
   (alu_out,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset);
  output [0:0]alu_out;
  input q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;

  wire [0:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_0),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(alu_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1259
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    alu_in_A,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    clk0,
    ctrl_reset,
    q_reg_33,
    q_reg_34,
    q_reg_35,
    p_0_in,
    q_reg_36,
    q_reg_37,
    q_reg_38,
    q_reg_39,
    multdiv_latch,
    q_reg_40,
    q_reg_41,
    q_reg_42,
    alu_out,
    q_reg_43,
    q_reg_44,
    q_reg_45,
    q_reg_46,
    q_reg_47,
    q_reg_48,
    q_reg_49,
    q_reg_50,
    q_reg_51,
    positive_A,
    q_reg_52,
    q_reg_53,
    q_reg_54,
    q_reg_55,
    q_reg_56,
    q_reg_57,
    q_reg_58);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output q_reg_4;
  output q_reg_5;
  output [0:0]alu_in_A;
  output q_reg_6;
  output q_reg_7;
  output q_reg_8;
  output q_reg_9;
  output q_reg_10;
  output q_reg_11;
  output q_reg_12;
  output q_reg_13;
  output q_reg_14;
  output q_reg_15;
  output q_reg_16;
  output q_reg_17;
  output q_reg_18;
  output q_reg_19;
  output q_reg_20;
  output q_reg_21;
  output q_reg_22;
  output q_reg_23;
  output q_reg_24;
  output q_reg_25;
  output q_reg_26;
  output q_reg_27;
  output q_reg_28;
  output q_reg_29;
  output q_reg_30;
  input q_reg_31;
  input q_reg_32;
  input clk0;
  input ctrl_reset;
  input [15:0]q_reg_33;
  input q_reg_34;
  input q_reg_35;
  input [30:0]p_0_in;
  input q_reg_36;
  input q_reg_37;
  input q_reg_38;
  input [2:0]q_reg_39;
  input [5:0]multdiv_latch;
  input q_reg_40;
  input q_reg_41;
  input q_reg_42;
  input [5:0]alu_out;
  input q_reg_43;
  input q_reg_44;
  input q_reg_45;
  input q_reg_46;
  input q_reg_47;
  input q_reg_48;
  input q_reg_49;
  input q_reg_50;
  input q_reg_51;
  input [0:0]positive_A;
  input q_reg_52;
  input q_reg_53;
  input q_reg_54;
  input q_reg_55;
  input q_reg_56;
  input q_reg_57;
  input q_reg_58;

  wire [0:0]alu_in_A;
  wire [5:0]alu_out;
  wire clk0;
  wire ctrl_reset;
  wire [5:0]multdiv_latch;
  wire [30:0]p_0_in;
  wire [0:0]positive_A;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire [15:0]q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_37;
  wire q_reg_38;
  wire [2:0]q_reg_39;
  wire q_reg_4;
  wire q_reg_40;
  wire q_reg_41;
  wire q_reg_42;
  wire q_reg_43;
  wire q_reg_44;
  wire q_reg_45;
  wire q_reg_46;
  wire q_reg_47;
  wire q_reg_48;
  wire q_reg_49;
  wire q_reg_5;
  wire q_reg_50;
  wire q_reg_51;
  wire q_reg_52;
  wire q_reg_53;
  wire q_reg_54;
  wire q_reg_55;
  wire q_reg_56;
  wire q_reg_57;
  wire q_reg_58;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;

  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__103
       (.I0(q_reg_0),
        .I1(multdiv_latch[0]),
        .I2(q_reg_33[0]),
        .I3(p_0_in[0]),
        .I4(q_reg_36),
        .O(q_reg_29));
  LUT6 #(
    .INIT(64'hFFFF0000666C666C)) 
    q_i_1__104
       (.I0(q_reg_0),
        .I1(q_reg_33[2]),
        .I2(q_reg_33[1]),
        .I3(q_reg_54),
        .I4(p_0_in[8]),
        .I5(q_reg_36),
        .O(q_reg_30));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__38
       (.I0(q_reg_0),
        .I1(q_reg_33[15]),
        .I2(q_reg_34),
        .I3(q_reg_35),
        .I4(p_0_in[22]),
        .I5(q_reg_36),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__39
       (.I0(q_reg_0),
        .I1(q_reg_33[14]),
        .I2(q_reg_34),
        .I3(q_reg_37),
        .I4(p_0_in[21]),
        .I5(q_reg_36),
        .O(q_reg_2));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__40
       (.I0(q_reg_0),
        .I1(q_reg_33[13]),
        .I2(q_reg_34),
        .I3(q_reg_38),
        .I4(p_0_in[20]),
        .I5(q_reg_36),
        .O(q_reg_3));
  LUT5 #(
    .INIT(32'hFF00C6C6)) 
    q_i_1__41
       (.I0(q_reg_0),
        .I1(q_reg_39[2]),
        .I2(q_reg_34),
        .I3(p_0_in[16]),
        .I4(q_reg_36),
        .O(q_reg_4));
  LUT5 #(
    .INIT(32'hFF00C6C6)) 
    q_i_1__42
       (.I0(q_reg_0),
        .I1(multdiv_latch[3]),
        .I2(q_reg_40),
        .I3(p_0_in[23]),
        .I4(q_reg_36),
        .O(q_reg_5));
  LUT5 #(
    .INIT(32'hAAAA0C00)) 
    q_i_1__43
       (.I0(p_0_in[30]),
        .I1(q_reg_0),
        .I2(q_reg_41),
        .I3(q_reg_42),
        .I4(q_reg_36),
        .O(alu_in_A));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__44
       (.I0(q_reg_0),
        .I1(alu_out[4]),
        .I2(q_reg_43),
        .I3(q_reg_41),
        .I4(p_0_in[28]),
        .I5(q_reg_36),
        .O(q_reg_6));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__45
       (.I0(q_reg_0),
        .I1(alu_out[3]),
        .I2(q_reg_44),
        .I3(q_reg_41),
        .I4(p_0_in[27]),
        .I5(q_reg_36),
        .O(q_reg_7));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__46
       (.I0(q_reg_0),
        .I1(alu_out[2]),
        .I2(q_reg_45),
        .I3(q_reg_41),
        .I4(p_0_in[26]),
        .I5(q_reg_36),
        .O(q_reg_8));
  LUT6 #(
    .INIT(64'hFFFF0000666C666C)) 
    q_i_1__47
       (.I0(q_reg_0),
        .I1(alu_out[5]),
        .I2(q_reg_41),
        .I3(q_reg_46),
        .I4(p_0_in[29]),
        .I5(q_reg_36),
        .O(q_reg_9));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__48
       (.I0(q_reg_0),
        .I1(multdiv_latch[4]),
        .I2(q_reg_41),
        .I3(p_0_in[24]),
        .I4(q_reg_36),
        .O(q_reg_10));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__49
       (.I0(q_reg_0),
        .I1(multdiv_latch[5]),
        .I2(q_reg_40),
        .I3(q_reg_47),
        .I4(p_0_in[25]),
        .I5(q_reg_36),
        .O(q_reg_11));
  LUT5 #(
    .INIT(32'hFF00C6C6)) 
    q_i_1__50
       (.I0(q_reg_0),
        .I1(q_reg_33[9]),
        .I2(q_reg_48),
        .I3(p_0_in[15]),
        .I4(q_reg_36),
        .O(q_reg_12));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__51
       (.I0(q_reg_0),
        .I1(q_reg_33[12]),
        .I2(q_reg_49),
        .I3(q_reg_33[11]),
        .I4(p_0_in[19]),
        .I5(q_reg_36),
        .O(q_reg_13));
  LUT6 #(
    .INIT(64'hFFFF0000666C666C)) 
    q_i_1__52
       (.I0(q_reg_0),
        .I1(q_reg_33[11]),
        .I2(q_reg_33[10]),
        .I3(q_reg_50),
        .I4(p_0_in[18]),
        .I5(q_reg_36),
        .O(q_reg_14));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__53
       (.I0(q_reg_0),
        .I1(q_reg_33[10]),
        .I2(q_reg_50),
        .I3(p_0_in[17]),
        .I4(q_reg_36),
        .O(q_reg_15));
  LUT5 #(
    .INIT(32'hFF00C6C6)) 
    q_i_1__54
       (.I0(q_reg_0),
        .I1(q_reg_33[7]),
        .I2(q_reg_51),
        .I3(p_0_in[13]),
        .I4(q_reg_36),
        .O(q_reg_16));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__55
       (.I0(q_reg_0),
        .I1(q_reg_33[8]),
        .I2(q_reg_51),
        .I3(q_reg_33[7]),
        .I4(p_0_in[14]),
        .I5(q_reg_36),
        .O(q_reg_17));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    q_i_1__56
       (.I0(q_reg_0),
        .I1(q_reg_33[6]),
        .I2(positive_A),
        .I3(p_0_in[12]),
        .I4(q_reg_36),
        .O(q_reg_18));
  LUT6 #(
    .INIT(64'hFFFF000066C666C6)) 
    q_i_1__57
       (.I0(q_reg_0),
        .I1(q_reg_33[5]),
        .I2(q_reg_52),
        .I3(q_reg_33[4]),
        .I4(p_0_in[11]),
        .I5(q_reg_36),
        .O(q_reg_19));
  LUT5 #(
    .INIT(32'hFF00C6C6)) 
    q_i_1__58
       (.I0(q_reg_0),
        .I1(q_reg_33[4]),
        .I2(q_reg_52),
        .I3(p_0_in[10]),
        .I4(q_reg_36),
        .O(q_reg_20));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__59
       (.I0(q_reg_0),
        .I1(q_reg_33[3]),
        .I2(q_reg_53),
        .I3(p_0_in[9]),
        .I4(q_reg_36),
        .O(q_reg_21));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__60
       (.I0(q_reg_0),
        .I1(q_reg_33[1]),
        .I2(q_reg_54),
        .I3(p_0_in[7]),
        .I4(q_reg_36),
        .O(q_reg_22));
  LUT6 #(
    .INIT(64'hFFFF0000666C666C)) 
    q_i_1__61
       (.I0(q_reg_0),
        .I1(q_reg_39[1]),
        .I2(q_reg_39[0]),
        .I3(q_reg_55),
        .I4(p_0_in[6]),
        .I5(q_reg_36),
        .O(q_reg_23));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__62
       (.I0(q_reg_0),
        .I1(q_reg_39[0]),
        .I2(q_reg_55),
        .I3(p_0_in[5]),
        .I4(q_reg_36),
        .O(q_reg_24));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__63
       (.I0(q_reg_0),
        .I1(multdiv_latch[2]),
        .I2(q_reg_56),
        .I3(p_0_in[4]),
        .I4(q_reg_36),
        .O(q_reg_25));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__64
       (.I0(q_reg_0),
        .I1(alu_out[1]),
        .I2(q_reg_57),
        .I3(p_0_in[3]),
        .I4(q_reg_36),
        .O(q_reg_26));
  LUT5 #(
    .INIT(32'hFF006C6C)) 
    q_i_1__65
       (.I0(q_reg_0),
        .I1(alu_out[0]),
        .I2(q_reg_58),
        .I3(p_0_in[2]),
        .I4(q_reg_36),
        .O(q_reg_27));
  LUT6 #(
    .INIT(64'hFFFF0000666C666C)) 
    q_i_1__66
       (.I0(q_reg_0),
        .I1(multdiv_latch[1]),
        .I2(q_reg_33[0]),
        .I3(multdiv_latch[0]),
        .I4(p_0_in[1]),
        .I5(q_reg_36),
        .O(q_reg_28));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_31),
        .CLR(ctrl_reset),
        .D(q_reg_32),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_126
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1260
   (q_reg_0,
    q_reg_1,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1261
   (q_reg_0,
    q_reg_1,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1262
   (q_reg_0,
    q_reg_1,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1263
   (q_reg_0,
    q_reg_1,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output [0:0]q_reg_0;
  input q_reg_1;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire [0:0]q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1264
   (q_reg_0,
    q_reg_1,
    ctrl_dx_out,
    clk0,
    ctrl_reset);
  output q_reg_0;
  input q_reg_1;
  input [0:0]ctrl_dx_out;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire [0:0]ctrl_dx_out;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(q_reg_1),
        .CLR(ctrl_reset),
        .D(ctrl_dx_out),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1265
   (rs1,
    q_reg_rep_0,
    q_reg_0,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]rs1;
  output q_reg_rep_0;
  output q_reg_0;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_1;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_rep_0;
  wire [0:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__210
       (.I0(rs1),
        .I1(q_reg_1),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* ORIG_CELL_NAME = "q_reg" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(rs1));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* ORIG_CELL_NAME = "q_reg" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg_rep
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(q_reg_rep_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1266
   (rs1,
    q_reg_rep_0,
    q_reg_0,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]rs1;
  output q_reg_rep_0;
  output q_reg_0;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_1;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_rep_0;
  wire [0:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__211
       (.I0(rs1),
        .I1(q_reg_1),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* ORIG_CELL_NAME = "q_reg" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(rs1));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* ORIG_CELL_NAME = "q_reg" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg_rep
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(q_reg_rep_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1267
   (ctrl_fd_out,
    q_reg_0,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]ctrl_fd_out;
  output q_reg_0;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_1;

  wire clk0;
  wire [0:0]ctrl_fd_out;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__212
       (.I0(ctrl_fd_out),
        .I1(q_reg_1),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(ctrl_fd_out));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1268
   (rs1,
    q_reg_0,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]rs1;
  output q_reg_0;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_1;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;
  wire [0:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__207
       (.I0(rs1),
        .I1(q_reg_1),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(rs1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1269
   (instAddr,
    q_reg_0,
    in_en0_0,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]instAddr;
  output [3:0]q_reg_0;
  input in_en0_0;
  input clk0;
  input ctrl_reset;
  input [4:0]q_reg_1;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instAddr;
  wire [0:0]pc_plus_one;
  wire [3:0]q_reg_0;
  wire [4:0]q_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    q_i_1
       (.I0(instAddr),
        .O(pc_plus_one));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    q_i_1__0
       (.I0(instAddr),
        .I1(q_reg_1[0]),
        .O(q_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    q_i_1__2
       (.I0(instAddr),
        .I1(q_reg_1[1]),
        .I2(q_reg_1[0]),
        .I3(q_reg_1[2]),
        .O(q_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    q_i_1__3
       (.I0(instAddr),
        .I1(q_reg_1[1]),
        .I2(q_reg_1[2]),
        .I3(q_reg_1[0]),
        .I4(q_reg_1[3]),
        .O(q_reg_0[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    q_i_1__4
       (.I0(instAddr),
        .I1(q_reg_1[1]),
        .I2(q_reg_1[3]),
        .I3(q_reg_1[2]),
        .I4(q_reg_1[0]),
        .I5(q_reg_1[4]),
        .O(q_reg_0[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(pc_plus_one),
        .Q(instAddr));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_127
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1270
   (q_reg_0,
    q_reg_1,
    pc_plus_one,
    dataOut0,
    in_en0_0,
    q_reg_2,
    clk0,
    ctrl_reset,
    instAddr);
  output [0:0]q_reg_0;
  output q_reg_1;
  output [0:0]pc_plus_one;
  output [0:0]dataOut0;
  input in_en0_0;
  input [0:0]q_reg_2;
  input clk0;
  input ctrl_reset;
  input [4:0]instAddr;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dataOut0;
  wire in_en0_0;
  wire [4:0]instAddr;
  wire [0:0]pc_plus_one;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire [0:0]q_reg_2;

  LUT6 #(
    .INIT(64'hFFFFFEFC00000000)) 
    \dataOut[22]_i_1 
       (.I0(q_reg_0),
        .I1(instAddr[3]),
        .I2(instAddr[2]),
        .I3(instAddr[1]),
        .I4(instAddr[4]),
        .I5(instAddr[0]),
        .O(dataOut0));
  LUT6 #(
    .INIT(64'h98FFFFFF98983030)) 
    \dataOut[3]_i_1 
       (.I0(q_reg_0),
        .I1(instAddr[2]),
        .I2(instAddr[3]),
        .I3(instAddr[0]),
        .I4(instAddr[1]),
        .I5(instAddr[4]),
        .O(q_reg_1));
  LUT3 #(
    .INIT(8'h78)) 
    q_i_1__1
       (.I0(q_reg_0),
        .I1(instAddr[0]),
        .I2(instAddr[1]),
        .O(pc_plus_one));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1271
   (instAddr,
    in_en0_0,
    pc_plus_one,
    clk0,
    ctrl_reset);
  output [0:0]instAddr;
  input in_en0_0;
  input [0:0]pc_plus_one;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instAddr;
  wire [0:0]pc_plus_one;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(pc_plus_one),
        .Q(instAddr));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1272
   (instAddr,
    in_en0_0,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]instAddr;
  input in_en0_0;
  input [0:0]q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instAddr;
  wire [0:0]q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(instAddr));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1273
   (instAddr,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    in_en0_0,
    q_reg_4,
    clk0,
    ctrl_reset,
    \dataOut_reg[27] );
  output [0:0]instAddr;
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  input in_en0_0;
  input [0:0]q_reg_4;
  input clk0;
  input ctrl_reset;
  input [4:0]\dataOut_reg[27] ;

  wire clk0;
  wire ctrl_reset;
  wire [4:0]\dataOut_reg[27] ;
  wire in_en0_0;
  wire [0:0]instAddr;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [0:0]q_reg_4;

  LUT6 #(
    .INIT(64'h00000000EEFEFEFE)) 
    \dataOut[23]_i_1 
       (.I0(instAddr),
        .I1(\dataOut_reg[27] [3]),
        .I2(\dataOut_reg[27] [4]),
        .I3(\dataOut_reg[27] [2]),
        .I4(\dataOut_reg[27] [0]),
        .I5(\dataOut_reg[27] [1]),
        .O(q_reg_2));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFEEEEE)) 
    \dataOut[27]_i_2 
       (.I0(instAddr),
        .I1(\dataOut_reg[27] [3]),
        .I2(\dataOut_reg[27] [1]),
        .I3(\dataOut_reg[27] [0]),
        .I4(\dataOut_reg[27] [2]),
        .I5(\dataOut_reg[27] [4]),
        .O(q_reg_0));
  LUT6 #(
    .INIT(64'h00FEF0FEEE000E00)) 
    \dataOut[2]_i_1 
       (.I0(instAddr),
        .I1(\dataOut_reg[27] [3]),
        .I2(\dataOut_reg[27] [4]),
        .I3(\dataOut_reg[27] [2]),
        .I4(\dataOut_reg[27] [0]),
        .I5(\dataOut_reg[27] [1]),
        .O(q_reg_3));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8A8A0A0)) 
    \dataOut[4]_i_1 
       (.I0(instAddr),
        .I1(\dataOut_reg[27] [1]),
        .I2(\dataOut_reg[27] [3]),
        .I3(\dataOut_reg[27] [0]),
        .I4(\dataOut_reg[27] [2]),
        .I5(\dataOut_reg[27] [4]),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(q_reg_4),
        .Q(instAddr));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1274
   (q_reg_0,
    q_reg_1,
    in_en0_0,
    q_reg_2,
    clk0,
    ctrl_reset,
    instAddr);
  output [0:0]q_reg_0;
  output q_reg_1;
  input in_en0_0;
  input [0:0]q_reg_2;
  input clk0;
  input ctrl_reset;
  input [0:0]instAddr;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instAddr;
  wire [0:0]q_reg_0;
  wire q_reg_1;
  wire [0:0]q_reg_2;

  LUT2 #(
    .INIT(4'h8)) 
    \dataOut[27]_i_1 
       (.I0(q_reg_0),
        .I1(instAddr),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1275
   (rs1,
    q_reg_0,
    q_reg_1,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_2,
    q_reg_3,
    ctrl_fd_out);
  output [0:0]rs1;
  output q_reg_0;
  output q_reg_1;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_2;
  input [0:0]q_reg_3;
  input [0:0]ctrl_fd_out;

  wire clk0;
  wire [0:0]ctrl_fd_out;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [0:0]q_reg_3;
  wire [0:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__208
       (.I0(rs1),
        .I1(q_reg_2),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    q_i_1__247
       (.I0(rs1),
        .I1(q_reg_3),
        .I2(ctrl_fd_out),
        .I3(q_reg_2),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(rs1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1276
   (rs1,
    q_reg_0,
    in_en0_0,
    instData,
    clk0,
    ctrl_reset,
    q_reg_1);
  output [0:0]rs1;
  output q_reg_0;
  input in_en0_0;
  input [0:0]instData;
  input clk0;
  input ctrl_reset;
  input q_reg_1;

  wire clk0;
  wire ctrl_reset;
  wire in_en0_0;
  wire [0:0]instData;
  wire q_reg_0;
  wire q_reg_1;
  wire [0:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1__209
       (.I0(rs1),
        .I1(q_reg_1),
        .O(q_reg_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(in_en0_0),
        .CLR(ctrl_reset),
        .D(instData),
        .Q(rs1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1277
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    c1,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    c3,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    q_reg_11,
    clk0,
    ctrl_reset,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    p4,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    ctrl_pw_out,
    xm_rd,
    ctrl_mw_out,
    q_i_2__28);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output c1;
  output q_reg_3;
  output q_reg_4;
  output q_reg_5;
  output c3;
  output q_reg_6;
  output q_reg_7;
  output q_reg_8;
  output q_reg_9;
  output q_reg_10;
  input q_reg_11;
  input clk0;
  input ctrl_reset;
  input q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input q_reg_16;
  input q_reg_17;
  input q_reg_18;
  input q_reg_19;
  input q_reg_20;
  input q_reg_21;
  input q_reg_22;
  input q_reg_23;
  input q_reg_24;
  input p4;
  input q_reg_25;
  input q_reg_26;
  input q_reg_27;
  input q_reg_28;
  input [2:0]ctrl_pw_out;
  input [1:0]xm_rd;
  input [1:0]ctrl_mw_out;
  input q_i_2__28;

  wire c1;
  wire c3;
  wire clk0;
  wire [1:0]ctrl_mw_out;
  wire [2:0]ctrl_pw_out;
  wire ctrl_reset;
  wire p4;
  wire q_i_2__28;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;
  wire [1:0]xm_rd;

  LUT4 #(
    .INIT(16'h6FF6)) 
    q_i_10__0
       (.I0(q_reg_0),
        .I1(xm_rd[0]),
        .I2(q_reg_27),
        .I3(xm_rd[1]),
        .O(q_reg_9));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    q_i_12
       (.I0(q_reg_0),
        .I1(ctrl_pw_out[0]),
        .I2(ctrl_pw_out[2]),
        .I3(q_reg_12),
        .I4(ctrl_pw_out[1]),
        .I5(q_reg_27),
        .O(q_reg_8));
  LUT6 #(
    .INIT(64'hCFFFFFBB30000044)) 
    q_i_2__17
       (.I0(q_reg_4),
        .I1(q_reg_16),
        .I2(q_reg_17),
        .I3(q_reg_18),
        .I4(q_reg_19),
        .I5(q_reg_20),
        .O(q_reg_3));
  LUT6 #(
    .INIT(64'h0CFBFFFBF3040004)) 
    q_i_2__18
       (.I0(q_reg_4),
        .I1(q_reg_12),
        .I2(q_reg_13),
        .I3(q_reg_19),
        .I4(q_reg_17),
        .I5(q_reg_18),
        .O(q_reg_5));
  LUT6 #(
    .INIT(64'h0C3B3FFBF3C4C004)) 
    q_i_2__2
       (.I0(q_reg_2),
        .I1(q_reg_12),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(c1),
        .I5(q_reg_15),
        .O(q_reg_1));
  LUT6 #(
    .INIT(64'hFFFAFEFAFAFAFAFA)) 
    q_i_2__22
       (.I0(q_reg_21),
        .I1(q_reg_2),
        .I2(q_reg_22),
        .I3(q_reg_23),
        .I4(q_reg_24),
        .I5(p4),
        .O(q_reg_4));
  LUT6 #(
    .INIT(64'hC33CF000C33CA53C)) 
    q_i_2__24
       (.I0(q_reg_2),
        .I1(c1),
        .I2(q_reg_14),
        .I3(q_reg_12),
        .I4(q_reg_13),
        .I5(q_reg_25),
        .O(q_reg_6));
  LUT6 #(
    .INIT(64'h8EFFCFFF0CEE8EEE)) 
    q_i_3__1
       (.I0(q_reg_2),
        .I1(q_reg_15),
        .I2(q_reg_25),
        .I3(q_reg_13),
        .I4(q_reg_12),
        .I5(q_reg_14),
        .O(c3));
  LUT5 #(
    .INIT(32'hDFFF0FDF)) 
    q_i_3__2
       (.I0(q_reg_0),
        .I1(q_reg_26),
        .I2(q_reg_13),
        .I3(q_reg_27),
        .I4(q_reg_28),
        .O(q_reg_2));
  LUT5 #(
    .INIT(32'h956AAAAA)) 
    q_i_3__22
       (.I0(q_reg_28),
        .I1(q_reg_26),
        .I2(q_reg_0),
        .I3(q_reg_27),
        .I4(q_reg_13),
        .O(q_reg_7));
  LUT5 #(
    .INIT(32'hF0808000)) 
    q_i_4__11
       (.I0(q_reg_26),
        .I1(q_reg_0),
        .I2(q_reg_13),
        .I3(q_reg_27),
        .I4(q_reg_28),
        .O(c1));
  LUT4 #(
    .INIT(16'h6FF6)) 
    q_i_6__7
       (.I0(q_reg_0),
        .I1(ctrl_mw_out[0]),
        .I2(q_i_2__28),
        .I3(ctrl_mw_out[1]),
        .O(q_reg_10));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_11),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1278
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_i_2__22,
    q_i_2__22_0,
    q_i_2__22_1,
    q_i_2__22_2);
  output q_reg_0;
  output q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input q_i_2__22;
  input q_i_2__22_0;
  input q_i_2__22_1;
  input q_i_2__22_2;

  wire clk0;
  wire ctrl_reset;
  wire q_i_2__22;
  wire q_i_2__22_0;
  wire q_i_2__22_1;
  wire q_i_2__22_2;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;

  LUT5 #(
    .INIT(32'hDFDF0FDF)) 
    q_i_5__1
       (.I0(q_reg_0),
        .I1(q_i_2__22),
        .I2(q_i_2__22_0),
        .I3(q_i_2__22_1),
        .I4(q_i_2__22_2),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1279
   (q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    clk0,
    ctrl_reset,
    q_i_3__19,
    q_i_3__19_0,
    q_i_3__19_1,
    p_94_in,
    p3,
    q_i_8,
    q_i_9,
    ctrl_dx_out);
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output q_reg_4;
  output q_reg_5;
  output q_reg_6;
  input q_reg_7;
  input clk0;
  input ctrl_reset;
  input q_i_3__19;
  input q_i_3__19_0;
  input q_i_3__19_1;
  input p_94_in;
  input p3;
  input q_i_8;
  input q_i_9;
  input [1:0]ctrl_dx_out;

  wire clk0;
  wire [1:0]ctrl_dx_out;
  wire ctrl_reset;
  wire p3;
  wire p_94_in;
  wire q_i_3__19;
  wire q_i_3__19_0;
  wire q_i_3__19_1;
  wire q_i_8;
  wire q_i_9;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;

  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__16
       (.I0(q_reg_0),
        .I1(q_i_3__19_0),
        .O(q_reg_2));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_4__17
       (.I0(q_reg_0),
        .I1(ctrl_dx_out[1]),
        .O(q_reg_5));
  LUT6 #(
    .INIT(64'hAA80800080008000)) 
    q_i_5__7
       (.I0(q_i_3__19),
        .I1(q_reg_0),
        .I2(q_i_3__19_0),
        .I3(q_i_3__19_1),
        .I4(p_94_in),
        .I5(p3),
        .O(q_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_7__5
       (.I0(q_reg_0),
        .I1(ctrl_dx_out[0]),
        .O(q_reg_6));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_8__3
       (.I0(q_reg_0),
        .I1(q_i_8),
        .O(q_reg_3));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_8__4
       (.I0(q_reg_0),
        .I1(q_i_9),
        .O(q_reg_4));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_7),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_128
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1280
   (q_reg_0,
    p_94_in,
    p2,
    q_reg_1,
    q_reg_2,
    clk0,
    ctrl_reset,
    q_i_5__7,
    q_reg_3);
  output q_reg_0;
  output p_94_in;
  output p2;
  output q_reg_1;
  input q_reg_2;
  input clk0;
  input ctrl_reset;
  input q_i_5__7;
  input q_reg_3;

  wire clk0;
  wire ctrl_reset;
  wire p2;
  wire p_94_in;
  wire q_i_5__7;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;

  LUT2 #(
    .INIT(4'h2)) 
    q_i_6__5
       (.I0(q_reg_0),
        .I1(q_reg_3),
        .O(q_reg_1));
  LUT3 #(
    .INIT(8'hEA)) 
    q_i_7__2
       (.I0(q_i_5__7),
        .I1(q_reg_0),
        .I2(q_reg_3),
        .O(p2));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_9__0
       (.I0(q_i_5__7),
        .I1(q_reg_0),
        .I2(q_reg_3),
        .O(p_94_in));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_2),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1281
   (q_reg_0,
    aluout,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    G0,
    p3,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    clk0,
    ctrl_reset,
    q_reg_9,
    c6,
    q_reg_10,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    c1,
    c5,
    q_reg_16,
    q_reg_17,
    w1,
    q_reg_18,
    q_reg_19,
    c3,
    c2,
    q_i_2__4,
    q_reg_20,
    q_reg_21,
    p_21_in,
    q_reg_22,
    c1_0,
    p_97_in,
    p2,
    q);
  output q_reg_0;
  output [5:0]aluout;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output G0;
  output p3;
  output q_reg_4;
  output q_reg_5;
  output q_reg_6;
  output q_reg_7;
  input q_reg_8;
  input clk0;
  input ctrl_reset;
  input q_reg_9;
  input c6;
  input q_reg_10;
  input q_reg_11;
  input q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input c1;
  input c5;
  input q_reg_16;
  input q_reg_17;
  input w1;
  input q_reg_18;
  input q_reg_19;
  input c3;
  input c2;
  input q_i_2__4;
  input q_reg_20;
  input q_reg_21;
  input p_21_in;
  input q_reg_22;
  input c1_0;
  input p_97_in;
  input p2;
  input q;

  wire G0;
  wire [5:0]aluout;
  wire c1;
  wire c1_0;
  wire c2;
  wire c3;
  wire c5;
  wire c6;
  wire clk0;
  wire ctrl_reset;
  wire \my_alu/add/add1/c4 ;
  wire \my_alu/add/add1/c5 ;
  wire \my_alu/add/add1/c6 ;
  wire \my_alu/add/add1/p_96_in ;
  wire \my_alu/sub/add1/c4 ;
  wire p2;
  wire p3;
  wire p_21_in;
  wire p_97_in;
  wire q;
  wire q_i_2__23_n_0;
  wire q_i_2__4;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_3;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;
  wire w1;

  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__10
       (.I0(q_reg_9),
        .I1(c6),
        .I2(\my_alu/add/add1/c6 ),
        .I3(q_reg_10),
        .I4(q_reg_1),
        .I5(q_reg_11),
        .O(aluout[4]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__11
       (.I0(q_reg_9),
        .I1(c5),
        .I2(\my_alu/add/add1/c5 ),
        .I3(q_reg_16),
        .I4(q_reg_1),
        .I5(q_reg_11),
        .O(aluout[3]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__12
       (.I0(q_reg_9),
        .I1(\my_alu/sub/add1/c4 ),
        .I2(\my_alu/add/add1/c4 ),
        .I3(q_reg_12),
        .I4(q_reg_1),
        .I5(q_reg_11),
        .O(aluout[2]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__13
       (.I0(q_reg_9),
        .I1(w1),
        .I2(G0),
        .I3(q_reg_18),
        .I4(q_reg_1),
        .I5(q_reg_11),
        .O(aluout[5]));
  LUT5 #(
    .INIT(32'hFF7F0008)) 
    q_i_1__142
       (.I0(q_reg_0),
        .I1(q_reg_14),
        .I2(q_reg_19),
        .I3(q_reg_13),
        .I4(q),
        .O(q_reg_7));
  LUT6 #(
    .INIT(64'h59487A5848487A58)) 
    q_i_1__34
       (.I0(q_reg_14),
        .I1(q_reg_13),
        .I2(q_i_2__23_n_0),
        .I3(q_reg_15),
        .I4(q_reg_0),
        .I5(q_reg_19),
        .O(aluout[1]));
  LUT5 #(
    .INIT(32'hFF2F0020)) 
    q_i_1__37
       (.I0(q_reg_20),
        .I1(q_reg_0),
        .I2(q_reg_14),
        .I3(q_reg_13),
        .I4(q_reg_21),
        .O(aluout[0]));
  LUT6 #(
    .INIT(64'h888B8B8B77747474)) 
    q_i_2__23
       (.I0(c3),
        .I1(q_reg_11),
        .I2(\my_alu/add/add1/p_96_in ),
        .I3(c2),
        .I4(p3),
        .I5(q_reg_15),
        .O(q_i_2__23_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    q_i_2__26
       (.I0(q_reg_0),
        .I1(q_reg_14),
        .I2(q_reg_13),
        .O(q_reg_6));
  LUT6 #(
    .INIT(64'hEFFFAEEEAFFFAAAA)) 
    q_i_2__5
       (.I0(q_reg_17),
        .I1(q_reg_3),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .I5(c1),
        .O(\my_alu/sub/add1/c4 ));
  LUT4 #(
    .INIT(16'hF080)) 
    q_i_3__18
       (.I0(q_reg_4),
        .I1(c2),
        .I2(p_21_in),
        .I3(q_reg_5),
        .O(G0));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAAAAAAA)) 
    q_i_3__19
       (.I0(q_reg_22),
        .I1(c1_0),
        .I2(p_97_in),
        .I3(p2),
        .I4(p3),
        .I5(\my_alu/add/add1/p_96_in ),
        .O(\my_alu/add/add1/c6 ));
  LUT6 #(
    .INIT(64'hEEEEEAAAEAAAAAAA)) 
    q_i_3__20
       (.I0(q_reg_5),
        .I1(q_reg_4),
        .I2(q_reg_13),
        .I3(q_reg_19),
        .I4(q_reg_20),
        .I5(c1_0),
        .O(\my_alu/add/add1/c4 ));
  LUT4 #(
    .INIT(16'hE0A0)) 
    q_i_3__21
       (.I0(q_reg_5),
        .I1(q_reg_4),
        .I2(q_reg_12),
        .I3(c2),
        .O(\my_alu/add/add1/c5 ));
  LUT6 #(
    .INIT(64'hEFFFAEEEAFFFAAAA)) 
    q_i_4__0
       (.I0(q_reg_12),
        .I1(q_reg_3),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .I5(c1),
        .O(q_reg_2));
  LUT3 #(
    .INIT(8'h80)) 
    q_i_4__10
       (.I0(q_i_2__4),
        .I1(q_reg_0),
        .I2(q_reg_13),
        .O(\my_alu/add/add1/p_96_in ));
  LUT5 #(
    .INIT(32'hDFDF0FDF)) 
    q_i_5__0
       (.I0(q_reg_0),
        .I1(q_i_2__4),
        .I2(q_reg_13),
        .I3(q_reg_19),
        .I4(q_reg_20),
        .O(q_reg_3));
  LUT2 #(
    .INIT(4'h2)) 
    q_i_5__9
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .O(q_reg_1));
  LUT5 #(
    .INIT(32'hF0808000)) 
    q_i_6__3
       (.I0(q_i_2__4),
        .I1(q_reg_0),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .O(q_reg_5));
  LUT3 #(
    .INIT(8'hEA)) 
    q_i_6__4
       (.I0(q_i_2__4),
        .I1(q_reg_0),
        .I2(q_reg_13),
        .O(p3));
  LUT5 #(
    .INIT(32'hECECE000)) 
    q_i_7__1
       (.I0(q_reg_0),
        .I1(q_i_2__4),
        .I2(q_reg_13),
        .I3(q_reg_14),
        .I4(q_reg_15),
        .O(q_reg_4));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_8),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1282
   (q_reg_0,
    aluout,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    clk0,
    ctrl_reset,
    c4,
    q_reg_4,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    c3,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    w2,
    w2_0,
    q_reg_18,
    w3,
    w3_1,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    c0,
    a00__0,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    c5_2,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    q_reg_33,
    q_reg_34,
    c4_3,
    q_reg_35,
    q_reg_36,
    c6_4,
    q_reg_37,
    q_reg_38,
    c5_5,
    q_reg_39,
    q_reg_40,
    q_reg_41,
    q_reg_42,
    q_reg_43,
    q_reg_44,
    c4_6,
    q_reg_45,
    q_reg_46,
    c6_7,
    q_reg_47,
    q_reg_48,
    c5_8,
    q_reg_49,
    q_reg_50,
    q_reg_51,
    q_reg_52,
    q_reg_53,
    q_reg_54,
    q_reg_55,
    q_reg_56,
    q_reg_57,
    q_reg_58,
    q_reg_59);
  output q_reg_0;
  output [25:0]aluout;
  output q_reg_1;
  output q_reg_2;
  input q_reg_3;
  input clk0;
  input ctrl_reset;
  input c4;
  input q_reg_4;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;
  input q_reg_9;
  input q_reg_10;
  input c3;
  input q_reg_11;
  input q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input q_reg_16;
  input q_reg_17;
  input w2;
  input w2_0;
  input q_reg_18;
  input w3;
  input w3_1;
  input q_reg_19;
  input q_reg_20;
  input q_reg_21;
  input c0;
  input a00__0;
  input q_reg_22;
  input q_reg_23;
  input q_reg_24;
  input c5_2;
  input q_reg_25;
  input q_reg_26;
  input q_reg_27;
  input q_reg_28;
  input q_reg_29;
  input q_reg_30;
  input q_reg_31;
  input q_reg_32;
  input q_reg_33;
  input q_reg_34;
  input c4_3;
  input q_reg_35;
  input q_reg_36;
  input c6_4;
  input q_reg_37;
  input q_reg_38;
  input c5_5;
  input q_reg_39;
  input q_reg_40;
  input q_reg_41;
  input q_reg_42;
  input q_reg_43;
  input q_reg_44;
  input c4_6;
  input q_reg_45;
  input q_reg_46;
  input c6_7;
  input q_reg_47;
  input q_reg_48;
  input c5_8;
  input q_reg_49;
  input q_reg_50;
  input q_reg_51;
  input q_reg_52;
  input q_reg_53;
  input q_reg_54;
  input q_reg_55;
  input q_reg_56;
  input q_reg_57;
  input q_reg_58;
  input q_reg_59;

  wire a00__0;
  wire [25:0]aluout;
  wire c0;
  wire c3;
  wire c4;
  wire c4_3;
  wire c4_6;
  wire c5_2;
  wire c5_5;
  wire c5_8;
  wire c6_4;
  wire c6_7;
  wire clk0;
  wire ctrl_reset;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_37;
  wire q_reg_38;
  wire q_reg_39;
  wire q_reg_4;
  wire q_reg_40;
  wire q_reg_41;
  wire q_reg_42;
  wire q_reg_43;
  wire q_reg_44;
  wire q_reg_45;
  wire q_reg_46;
  wire q_reg_47;
  wire q_reg_48;
  wire q_reg_49;
  wire q_reg_5;
  wire q_reg_50;
  wire q_reg_51;
  wire q_reg_52;
  wire q_reg_53;
  wire q_reg_54;
  wire q_reg_55;
  wire q_reg_56;
  wire q_reg_57;
  wire q_reg_58;
  wire q_reg_59;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;
  wire w2;
  wire w2_0;
  wire w3;
  wire w3_1;

  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__14
       (.I0(q_reg_1),
        .I1(w2),
        .I2(w2_0),
        .I3(q_reg_18),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[10]));
  LUT3 #(
    .INIT(8'h20)) 
    q_i_1__143
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_16),
        .O(q_reg_2));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__15
       (.I0(q_reg_1),
        .I1(w3),
        .I2(w3_1),
        .I3(q_reg_19),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[18]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__16
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_20),
        .I3(q_reg_21),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[20]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__17
       (.I0(q_reg_1),
        .I1(c0),
        .I2(a00__0),
        .I3(q_reg_22),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[19]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__18
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_23),
        .I3(q_reg_24),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[21]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__19
       (.I0(q_reg_1),
        .I1(c5_2),
        .I2(q_reg_25),
        .I3(q_reg_26),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[24]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__20
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_27),
        .I3(q_reg_28),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[12]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__21
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_29),
        .I3(q_reg_30),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[11]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__22
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_31),
        .I3(q_reg_32),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[13]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__23
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_33),
        .I3(q_reg_34),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[14]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__24
       (.I0(q_reg_1),
        .I1(c4_3),
        .I2(q_reg_35),
        .I3(q_reg_36),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[15]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__25
       (.I0(q_reg_1),
        .I1(c6_4),
        .I2(q_reg_37),
        .I3(q_reg_38),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[17]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__26
       (.I0(q_reg_1),
        .I1(c5_5),
        .I2(q_reg_39),
        .I3(q_reg_40),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[16]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__27
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_41),
        .I3(q_reg_42),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[4]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__28
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_43),
        .I3(q_reg_44),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[3]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__29
       (.I0(q_reg_1),
        .I1(c4_6),
        .I2(q_reg_45),
        .I3(q_reg_46),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[7]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__30
       (.I0(q_reg_1),
        .I1(c6_7),
        .I2(q_reg_47),
        .I3(q_reg_48),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[9]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__31
       (.I0(q_reg_1),
        .I1(c5_8),
        .I2(q_reg_49),
        .I3(q_reg_50),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[8]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__32
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_51),
        .I3(q_reg_52),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[5]));
  LUT6 #(
    .INIT(64'hD1C0F2D0C0C0F2D0)) 
    q_i_1__33
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_53),
        .I3(q_reg_54),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[6]));
  LUT6 #(
    .INIT(64'h13DFCC0003CFCC00)) 
    q_i_1__35
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_16),
        .I3(q_reg_55),
        .I4(q_reg_56),
        .I5(q_reg_17),
        .O(aluout[0]));
  LUT6 #(
    .INIT(64'h5550E4E45000E4E4)) 
    q_i_1__36
       (.I0(q_reg_1),
        .I1(q_reg_57),
        .I2(q_reg_58),
        .I3(q_reg_59),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[1]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__5
       (.I0(q_reg_1),
        .I1(c4),
        .I2(q_reg_4),
        .I3(q_reg_5),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[23]));
  LUT6 #(
    .INIT(64'h50500000A0F5E4E4)) 
    q_i_1__6
       (.I0(q_reg_1),
        .I1(q_reg_8),
        .I2(q_reg_9),
        .I3(q_reg_10),
        .I4(q_reg_7),
        .I5(q_reg_6),
        .O(aluout[25]));
  LUT6 #(
    .INIT(64'h5500EE110000AF50)) 
    q_i_1__8
       (.I0(q_reg_1),
        .I1(c3),
        .I2(q_reg_11),
        .I3(q_reg_12),
        .I4(q_reg_6),
        .I5(q_reg_7),
        .O(aluout[22]));
  LUT6 #(
    .INIT(64'h1D0CF2D00C0CF2D0)) 
    q_i_1__9
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .I2(q_reg_14),
        .I3(q_reg_15),
        .I4(q_reg_16),
        .I5(q_reg_17),
        .O(aluout[2]));
  LUT2 #(
    .INIT(4'h2)) 
    q_i_2__27
       (.I0(q_reg_0),
        .I1(q_reg_13),
        .O(q_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_3),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1283
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1284
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1285
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1286
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1287
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1288
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1289
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_129
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1290
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1291
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1292
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1293
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1294
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1295
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1296
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1297
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1298
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1299
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_130
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1300
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1301
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1302
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1303
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1304
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1305
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1306
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1307
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1308
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1309
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_131
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1310
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1311
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1312
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1313
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1314
   (dx_out_A,
    q_reg_0,
    clk0,
    ctrl_reset);
  output [0:0]dx_out_A;
  input q_reg_0;
  input clk0;
  input ctrl_reset;

  wire clk0;
  wire ctrl_reset;
  wire [0:0]dx_out_A;
  wire q_reg_0;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_0),
        .Q(dx_out_A));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_1315
   (am_multdiv,
    in_en0_0,
    q_reg_0,
    q_reg_1,
    clk0,
    ctrl_reset,
    data_resultRDY);
  output am_multdiv;
  output in_en0_0;
  output q_reg_0;
  input q_reg_1;
  input clk0;
  input ctrl_reset;
  input data_resultRDY;

  wire am_multdiv;
  wire clk0;
  wire ctrl_reset;
  wire data_resultRDY;
  wire in_en0_0;
  wire q_reg_1;

  assign q_reg_0 = in_en0_0;
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hD)) 
    q_i_3__27
       (.I0(am_multdiv),
        .I1(data_resultRDY),
        .O(in_en0_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(ctrl_reset),
        .D(q_reg_1),
        .Q(am_multdiv));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_132
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_133
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_134
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_135
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_136
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_137
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_138
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_139
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_140
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_141
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_142
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_143
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_144
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_145
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_146
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_147
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_148
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_149
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_150
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_151
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_152
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_153
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_154
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_155
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_156
   (data25,
    in_en049_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data25;
  input in_en049_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data25;
  wire [0:0]data_writeReg;
  wire in_en049_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en049_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data25));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_157
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_158
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_159
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_160
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_161
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_162
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_163
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_164
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_165
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_166
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_167
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_168
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_169
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_170
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_171
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_172
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_173
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_174
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_175
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_176
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_177
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_178
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_179
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_180
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_181
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_182
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_183
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_184
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_185
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_186
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_187
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_188
   (data26,
    in_en051_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data26;
  input in_en051_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data26;
  wire [0:0]data_writeReg;
  wire in_en051_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en051_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data26));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_189
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_190
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_191
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_192
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_193
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_194
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_195
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_196
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_197
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_198
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_199
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_200
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_201
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_202
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_203
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_204
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_205
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_206
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_207
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_208
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_209
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_210
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_211
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_212
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_213
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_214
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_215
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_216
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_217
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_218
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_219
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_220
   (data27,
    in_en053_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data27;
  input in_en053_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data27;
  wire [0:0]data_writeReg;
  wire in_en053_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en053_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data27));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_221
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__213
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_222
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__223
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_223
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__224
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_224
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__225
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_225
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__226
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_226
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__227
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_227
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__228
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_228
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__229
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_229
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__230
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_230
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__231
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_231
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__232
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_232
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__214
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_233
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__233
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_234
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__234
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_235
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__235
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_236
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__236
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_237
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__237
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_238
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__238
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_239
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__239
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_240
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__240
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_241
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__241
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_242
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__242
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_243
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__215
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_244
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__243
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_245
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__244
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_246
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__216
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_247
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__217
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_248
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__218
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_249
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__219
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_250
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__220
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_251
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__221
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_252
   (data28,
    q_reg_0,
    in_en055_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset,
    q_reg_1,
    rs1,
    q_reg_2,
    q_reg_3,
    in1);
  output [0:0]data28;
  output q_reg_0;
  input in_en055_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;
  input q_reg_1;
  input [1:0]rs1;
  input q_reg_2;
  input q_reg_3;
  input in1;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data28;
  wire [0:0]data_writeReg;
  wire in1;
  wire in_en055_out;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire q_reg_3;
  wire [1:0]rs1;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    q_i_1__222
       (.I0(q_reg_1),
        .I1(rs1[1]),
        .I2(q_reg_2),
        .I3(rs1[0]),
        .I4(q_reg_3),
        .I5(in1),
        .O(q_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en055_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data28));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_253
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_254
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_255
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_256
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_257
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_258
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_259
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_260
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_261
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_262
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_263
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_264
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_265
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_266
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_267
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_268
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_269
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_270
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_271
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_272
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_273
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_274
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_275
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_276
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_277
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_278
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_279
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_280
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_281
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_282
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_283
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_284
   (data0,
    in_en0,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data0;
  input in_en0;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data0;
  wire [0:0]data_writeReg;
  wire in_en0;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en0),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data0));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_285
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_286
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_287
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_288
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_289
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_290
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_291
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_292
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_293
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_294
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_295
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_296
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_297
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_298
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_299
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_30
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_300
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_301
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_302
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_303
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_304
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_305
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_306
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_307
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_308
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_309
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_31
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_310
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_311
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_312
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_313
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_314
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_315
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_316
   (data1,
    in_en01_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data1;
  input in_en01_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data1;
  wire [0:0]data_writeReg;
  wire in_en01_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en01_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data1));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_317
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_318
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_319
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_32
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_320
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_321
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_322
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_323
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_324
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_325
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_326
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_327
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_328
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_329
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_33
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_330
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_331
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_332
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_333
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_334
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_335
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_336
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_337
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_338
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_339
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_34
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_340
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_341
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_342
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_343
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_344
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_345
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_346
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_347
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_348
   (data29,
    in_en057_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data29;
  input in_en057_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data29;
  wire [0:0]data_writeReg;
  wire in_en057_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en057_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data29));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_349
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_35
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_350
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_351
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_352
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_353
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_354
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_355
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_356
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_357
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_358
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_359
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_36
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_360
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_361
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_362
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_363
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_364
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_365
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_366
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_367
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_368
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_369
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_37
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_370
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_371
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_372
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_373
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_374
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_375
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_376
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_377
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_378
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_379
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_38
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_380
   (data2,
    in_en03_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data2;
  input in_en03_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data2;
  wire [0:0]data_writeReg;
  wire in_en03_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en03_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data2));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_381
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_382
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_383
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_384
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_385
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_386
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_387
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_388
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_389
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_39
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_390
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_391
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_392
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_393
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_394
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_395
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_396
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_397
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_398
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_399
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_40
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_400
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_401
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_402
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_403
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_404
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_405
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_406
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_407
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_408
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_409
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_41
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_410
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_411
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_412
   (data3,
    in_en05_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data3;
  input in_en05_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data3;
  wire [0:0]data_writeReg;
  wire in_en05_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en05_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data3));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_413
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_414
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_415
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_416
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_417
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_418
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_419
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_42
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_420
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_421
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_422
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_423
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_424
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_425
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_426
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_427
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_428
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_429
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_43
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_430
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_431
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_432
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_433
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_434
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_435
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_436
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_437
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_438
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_439
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_44
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_440
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_441
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_442
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_443
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_444
   (data4,
    in_en07_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data4;
  input in_en07_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data4;
  wire [0:0]data_writeReg;
  wire in_en07_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en07_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_445
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_446
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_447
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_448
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_449
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_45
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_450
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_451
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_452
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_453
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_454
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_455
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_456
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_457
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_458
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_459
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_46
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_460
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_461
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_462
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_463
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_464
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_465
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_466
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_467
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_468
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_469
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_47
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_470
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_471
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_472
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_473
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_474
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_475
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_476
   (data5,
    in_en09_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data5;
  input in_en09_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data5;
  wire [0:0]data_writeReg;
  wire in_en09_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en09_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data5));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_477
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_478
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_479
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_48
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_480
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_481
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_482
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_483
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_484
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_485
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_486
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_487
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_488
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_489
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_49
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_490
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_491
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_492
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_493
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_494
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_495
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_496
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_497
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_498
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_499
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_50
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_500
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_501
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_502
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_503
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_504
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_505
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_506
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_507
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_508
   (data6,
    in_en011_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data6;
  input in_en011_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data6;
  wire [0:0]data_writeReg;
  wire in_en011_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en011_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data6));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_509
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_51
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_510
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_511
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_512
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_513
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_514
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_515
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_516
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_517
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_518
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_519
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_52
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_520
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_521
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_522
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_523
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_524
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_525
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_526
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_527
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_528
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_529
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_53
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_530
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_531
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_532
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_533
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_534
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_535
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_536
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_537
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_538
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_539
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_54
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_540
   (data7,
    in_en013_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data7;
  input in_en013_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data7;
  wire [0:0]data_writeReg;
  wire in_en013_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en013_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data7));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_541
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_542
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_543
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_544
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_545
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_546
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_547
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_548
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_549
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_55
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_550
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_551
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_552
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_553
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_554
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_555
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_556
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_557
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_558
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_559
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_56
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_560
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_561
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_562
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_563
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_564
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_565
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_566
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_567
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_568
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_569
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_57
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_570
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_571
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_572
   (data8,
    in_en015_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data8;
  input in_en015_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data8;
  wire [0:0]data_writeReg;
  wire in_en015_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en015_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data8));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_573
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_574
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_575
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_576
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_577
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_578
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_579
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_58
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_580
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_581
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_582
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_583
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_584
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_585
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_586
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_587
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_588
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_589
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_59
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_590
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_591
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_592
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_593
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_594
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_595
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_596
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_597
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_598
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_599
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_60
   (data22,
    in_en043_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data22;
  input in_en043_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data22;
  wire [0:0]data_writeReg;
  wire in_en043_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en043_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data22));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_600
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_601
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_602
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_603
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_604
   (data9,
    in_en017_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data9;
  input in_en017_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data9;
  wire [0:0]data_writeReg;
  wire in_en017_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en017_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data9));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_605
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_606
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_607
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_608
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_609
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_61
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_610
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_611
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_612
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_613
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_614
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_615
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_616
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_617
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_618
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_619
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_62
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_620
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_621
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_622
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_623
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_624
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_625
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_626
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_627
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_628
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_629
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_63
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_630
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_631
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_632
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_633
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_634
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_635
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_636
   (data10,
    in_en019_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data10;
  input in_en019_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data10;
  wire [0:0]data_writeReg;
  wire in_en019_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en019_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data10));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_637
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_638
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_639
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_64
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_640
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_641
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_642
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_643
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_644
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_645
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_646
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_647
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_648
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_649
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_65
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_650
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_651
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_652
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_653
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_654
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_655
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_656
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_657
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_658
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_659
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_66
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_660
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_661
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_662
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_663
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_664
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_665
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_666
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_667
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_668
   (data11,
    in_en021_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data11;
  input in_en021_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data11;
  wire [0:0]data_writeReg;
  wire in_en021_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en021_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data11));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_669
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_67
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_670
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_671
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_672
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_673
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_674
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_675
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_676
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_677
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_678
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_679
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_68
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_680
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_681
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_682
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_683
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_684
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_685
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_686
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_687
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_688
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_689
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_69
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_690
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_691
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_692
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_693
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_694
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_695
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_696
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_697
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_698
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_699
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_70
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_700
   (data30,
    in_en059_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data30;
  input in_en059_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data30;
  wire [0:0]data_writeReg;
  wire in_en059_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en059_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data30));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_701
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_702
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_703
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_704
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_705
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_706
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_707
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_708
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_709
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_71
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_710
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_711
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_712
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_713
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_714
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_715
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_716
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_717
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_718
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_719
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_72
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_720
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_721
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_722
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_723
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_724
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_725
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_726
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_727
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_728
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_729
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_73
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_730
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_731
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_732
   (data12,
    in_en023_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data12;
  input in_en023_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data12;
  wire [0:0]data_writeReg;
  wire in_en023_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en023_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data12));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_733
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_734
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_735
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_736
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_737
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_738
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_739
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_74
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_740
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_741
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_742
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_743
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_744
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_745
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_746
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_747
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_748
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_749
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_75
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_750
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_751
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_752
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_753
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_754
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_755
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_756
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_757
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_758
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_759
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_76
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_760
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_761
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_762
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_763
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_764
   (data13,
    in_en025_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data13;
  input in_en025_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data13;
  wire [0:0]data_writeReg;
  wire in_en025_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en025_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data13));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_765
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_766
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_767
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_768
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_769
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_77
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_770
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_771
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_772
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_773
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_774
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_775
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_776
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_777
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_778
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_779
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_78
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_780
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_781
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_782
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_783
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_784
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_785
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_786
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_787
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_788
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_789
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_79
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_790
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_791
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_792
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_793
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_794
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_795
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_796
   (data14,
    in_en027_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data14;
  input in_en027_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data14;
  wire [0:0]data_writeReg;
  wire in_en027_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en027_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data14));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_797
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_798
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_799
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_80
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_800
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_801
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_802
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_803
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_804
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_805
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_806
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_807
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_808
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_809
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_81
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_810
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_811
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_812
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_813
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_814
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_815
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_816
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_817
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_818
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_819
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_82
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_820
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_821
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_822
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_823
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_824
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_825
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_826
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_827
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_828
   (data15,
    in_en029_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data15;
  input in_en029_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data15;
  wire [0:0]data_writeReg;
  wire in_en029_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en029_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data15));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_829
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_83
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_830
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_831
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_832
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_833
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_834
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_835
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_836
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_837
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_838
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_839
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_84
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_840
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_841
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_842
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_843
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_844
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_845
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_846
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_847
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_848
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_849
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_85
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_850
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_851
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_852
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_853
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_854
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_855
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_856
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_857
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_858
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_859
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_86
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_860
   (data16,
    in_en031_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data16;
  input in_en031_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data16;
  wire [0:0]data_writeReg;
  wire in_en031_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en031_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data16));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_861
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_862
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_863
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_864
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_865
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_866
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_867
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_868
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_869
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_87
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_870
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_871
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_872
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_873
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_874
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_875
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_876
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_877
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_878
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_879
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_88
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_880
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_881
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_882
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_883
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_884
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_885
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_886
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_887
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_888
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_889
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_89
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_890
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_891
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_892
   (data17,
    in_en033_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data17;
  input in_en033_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data17;
  wire [0:0]data_writeReg;
  wire in_en033_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en033_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data17));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_893
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_894
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_895
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_896
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_897
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_898
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_899
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_90
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_900
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_901
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_902
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_903
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_904
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_905
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_906
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_907
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_908
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_909
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_91
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_910
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_911
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_912
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_913
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_914
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_915
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_916
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_917
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_918
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_919
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_92
   (data23,
    in_en045_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data23;
  input in_en045_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data23;
  wire [0:0]data_writeReg;
  wire in_en045_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en045_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data23));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_920
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_921
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_922
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_923
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_924
   (data18,
    in_en035_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data18;
  input in_en035_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data18;
  wire [0:0]data_writeReg;
  wire in_en035_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en035_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data18));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_925
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_926
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_927
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_928
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_929
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_93
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_930
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_931
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_932
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_933
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_934
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_935
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_936
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_937
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_938
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_939
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_94
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_940
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_941
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_942
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_943
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_944
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_945
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_946
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_947
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_948
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_949
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_95
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_950
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_951
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_952
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_953
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_954
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_955
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_956
   (data19,
    in_en037_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data19;
  input in_en037_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data19;
  wire [0:0]data_writeReg;
  wire in_en037_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en037_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data19));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_957
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_958
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_959
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_96
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_960
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_961
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_962
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_963
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_964
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_965
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_966
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_967
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_968
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_969
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_97
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_970
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_971
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_972
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_973
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_974
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_975
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_976
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_977
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_978
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_979
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_98
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_980
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_981
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_982
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_983
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_984
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_985
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_986
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_987
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_988
   (data20,
    in_en039_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data20;
  input in_en039_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data20;
  wire [0:0]data_writeReg;
  wire in_en039_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en039_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data20));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_989
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_99
   (data24,
    in_en047_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data24;
  input in_en047_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data24;
  wire [0:0]data_writeReg;
  wire in_en047_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en047_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data24));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_990
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_991
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_992
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_993
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_994
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_995
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_996
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_997
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_998
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

(* ORIG_REF_NAME = "dffe_ref" *) 
module dffe_ref_999
   (data21,
    in_en041_out,
    data_writeReg,
    clk_100mhz_IBUF_BUFG,
    ctrl_reset);
  output [0:0]data21;
  input in_en041_out;
  input [0:0]data_writeReg;
  input clk_100mhz_IBUF_BUFG;
  input ctrl_reset;

  wire clk_100mhz_IBUF_BUFG;
  wire ctrl_reset;
  wire [0:0]data21;
  wire [0:0]data_writeReg;
  wire in_en041_out;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(in_en041_out),
        .CLR(ctrl_reset),
        .D(data_writeReg),
        .Q(data21));
endmodule

module div
   (q_reg,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    p_1_out,
    data_resultRDY,
    q_reg_4,
    multdiv_data,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    positive_A,
    q_reg_9,
    q_reg_10,
    cpu_clock_BUFG,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    q_reg_33,
    q_reg_34,
    q_reg_35,
    q_reg_36,
    q_reg_37,
    q_reg_38,
    q_reg_39,
    q_reg_40,
    q_reg_41,
    q_reg_42,
    am_multdiv,
    q_reg_43,
    q_reg_44,
    q_reg_45,
    cycle,
    \i_/q_i_2 ,
    q_reg_46,
    q_reg_47,
    q_reg_48);
  output q_reg;
  output q_reg_0;
  output q_reg_1;
  output q_reg_2;
  output [26:0]q_reg_3;
  output [0:0]p_1_out;
  output data_resultRDY;
  output q_reg_4;
  output [31:0]multdiv_data;
  output q_reg_5;
  output q_reg_6;
  output q_reg_7;
  output q_reg_8;
  output [0:0]positive_A;
  output q_reg_9;
  output q_reg_10;
  input cpu_clock_BUFG;
  input q_reg_11;
  input [0:0]q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input q_reg_16;
  input q_reg_17;
  input q_reg_18;
  input q_reg_19;
  input q_reg_20;
  input q_reg_21;
  input q_reg_22;
  input q_reg_23;
  input q_reg_24;
  input q_reg_25;
  input q_reg_26;
  input q_reg_27;
  input q_reg_28;
  input q_reg_29;
  input q_reg_30;
  input q_reg_31;
  input q_reg_32;
  input q_reg_33;
  input q_reg_34;
  input q_reg_35;
  input q_reg_36;
  input q_reg_37;
  input q_reg_38;
  input q_reg_39;
  input q_reg_40;
  input q_reg_41;
  input q_reg_42;
  input am_multdiv;
  input q_reg_43;
  input [3:0]q_reg_44;
  input q_reg_45;
  input [0:0]cycle;
  input [15:0]\i_/q_i_2 ;
  input q_reg_46;
  input q_reg_47;
  input q_reg_48;

  wire HILO_n_62;
  wire HILO_n_63;
  wire HILO_n_64;
  wire [30:1]alu_in_A;
  wire am_multdiv;
  wire c_n_2;
  wire cpu_clock_BUFG;
  wire [0:0]cycle;
  wire data_resultRDY;
  wire fixSignALU_n_0;
  wire fixSignALU_n_1;
  wire fixSignALU_n_2;
  wire fixSignALU_n_3;
  wire fixSignALU_n_4;
  wire [62:32]hilo;
  wire [15:0]\i_/q_i_2 ;
  wire [31:0]multdiv_data;
  wire [0:0]p_1_out;
  wire [0:0]positive_A;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire [0:0]q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire [26:0]q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_37;
  wire q_reg_38;
  wire q_reg_39;
  wire q_reg_4;
  wire q_reg_40;
  wire q_reg_41;
  wire q_reg_42;
  wire q_reg_43;
  wire [3:0]q_reg_44;
  wire q_reg_45;
  wire q_reg_46;
  wire q_reg_47;
  wire q_reg_48;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;

  register__parameterized0_1151 HILO
       (.alu_in_A(alu_in_A),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .hilo(hilo),
        .multdiv_data(multdiv_data),
        .q_reg(q_reg),
        .q_reg_0(q_reg_0),
        .q_reg_1(q_reg_1),
        .q_reg_10(q_reg_13),
        .q_reg_11(q_reg_14),
        .q_reg_12(q_reg_15),
        .q_reg_13(q_reg_16),
        .q_reg_14(q_reg_17),
        .q_reg_15(q_reg_18),
        .q_reg_16(q_reg_19),
        .q_reg_17(q_reg_20),
        .q_reg_18(q_reg_21),
        .q_reg_19(q_reg_22),
        .q_reg_2(q_reg_2),
        .q_reg_20(q_reg_23),
        .q_reg_21(q_reg_24),
        .q_reg_22(q_reg_25),
        .q_reg_23(q_reg_26),
        .q_reg_24(q_reg_27),
        .q_reg_25(q_reg_28),
        .q_reg_26(q_reg_29),
        .q_reg_27(q_reg_30),
        .q_reg_28(q_reg_31),
        .q_reg_29(q_reg_32),
        .q_reg_3(q_reg_3),
        .q_reg_30(q_reg_33),
        .q_reg_31(q_reg_34),
        .q_reg_32(q_reg_35),
        .q_reg_33(q_reg_36),
        .q_reg_34(q_reg_37),
        .q_reg_35(q_reg_38),
        .q_reg_36(q_reg_39),
        .q_reg_37(q_reg_40),
        .q_reg_38(q_reg_41),
        .q_reg_39(q_reg_42),
        .q_reg_4(HILO_n_62),
        .q_reg_40(fixSignALU_n_1),
        .q_reg_41(fixSignALU_n_0),
        .q_reg_42(q_reg_43),
        .q_reg_43(q_reg_44[3]),
        .q_reg_44(fixSignALU_n_3),
        .q_reg_45(fixSignALU_n_2),
        .q_reg_46(fixSignALU_n_4),
        .q_reg_47(q_reg_4),
        .q_reg_48(\i_/q_i_2 [0]),
        .q_reg_5(HILO_n_63),
        .q_reg_6(HILO_n_64),
        .q_reg_7(q_reg_12),
        .q_reg_8(q_reg_11),
        .q_reg_9(c_n_2));
  counter_32 c
       (.alu_in_A(alu_in_A),
        .am_multdiv(am_multdiv),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle),
        .data_resultRDY(data_resultRDY),
        .hilo(hilo),
        .p_1_out(p_1_out),
        .q_reg(c_n_2),
        .q_reg_0(q_reg_4),
        .q_reg_1(q_reg_11),
        .q_reg_2(q_reg_45),
        .q_reg_3(q_reg_43));
  alu fixSignALU
       (.\i_/q_i_2_0 (q_reg_3[18:1]),
        .q_reg(fixSignALU_n_0),
        .q_reg_0(fixSignALU_n_1),
        .q_reg_1(fixSignALU_n_2),
        .q_reg_2(fixSignALU_n_3),
        .q_reg_3(fixSignALU_n_4),
        .q_reg_4(HILO_n_64),
        .q_reg_5(HILO_n_62),
        .q_reg_6(HILO_n_63));
  alu_1152 invertdivAALU
       (.\i_/q_i_2_0 (\i_/q_i_2 [15:1]),
        .positive_A(positive_A),
        .q_reg(q_reg_5),
        .q_reg_0(q_reg_6),
        .q_reg_1(q_reg_7),
        .q_reg_2(q_reg_8),
        .q_reg_3(q_reg_9),
        .q_reg_4(q_reg_10),
        .q_reg_5(q_reg_44[2:0]),
        .q_reg_6(q_reg_46),
        .q_reg_7(q_reg_47),
        .q_reg_8(q_reg_48));
endmodule

module mult
   (q_reg,
    q_reg_0,
    cpu_clock_BUFG,
    q_reg_1);
  output [0:0]q_reg;
  output q_reg_0;
  input cpu_clock_BUFG;
  input q_reg_1;

  wire cpu_clock_BUFG;
  wire [0:0]q_reg;
  wire q_reg_0;
  wire q_reg_1;

  counter c
       (.cpu_clock_BUFG(cpu_clock_BUFG),
        .q_reg(q_reg),
        .q_reg_0(q_reg_0),
        .q_reg_1(q_reg_1));
endmodule

module multdiv
   (q_reg,
    q,
    p_1_out,
    data_resultRDY,
    q_reg_0,
    exception,
    multdiv_data,
    q_reg_1,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    positive_A,
    q_reg_5,
    q_reg_6,
    cpu_clock_BUFG,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    q_reg_33,
    q_reg_34,
    q_reg_35,
    q_reg_36,
    q_reg_37,
    q_reg_38,
    q_reg_39,
    am_multdiv,
    q_reg_40,
    \i_/q_i_2 ,
    q_reg_41,
    q_reg_42,
    q_reg_43);
  output [30:0]q_reg;
  output q;
  output [0:0]p_1_out;
  output data_resultRDY;
  output q_reg_0;
  output exception;
  output [31:0]multdiv_data;
  output q_reg_1;
  output q_reg_2;
  output q_reg_3;
  output q_reg_4;
  output [0:0]positive_A;
  output q_reg_5;
  output q_reg_6;
  input cpu_clock_BUFG;
  input q_reg_7;
  input [0:0]q_reg_8;
  input q_reg_9;
  input q_reg_10;
  input q_reg_11;
  input q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input q_reg_16;
  input q_reg_17;
  input q_reg_18;
  input q_reg_19;
  input q_reg_20;
  input q_reg_21;
  input q_reg_22;
  input q_reg_23;
  input q_reg_24;
  input q_reg_25;
  input q_reg_26;
  input q_reg_27;
  input q_reg_28;
  input q_reg_29;
  input q_reg_30;
  input q_reg_31;
  input q_reg_32;
  input q_reg_33;
  input q_reg_34;
  input q_reg_35;
  input q_reg_36;
  input q_reg_37;
  input q_reg_38;
  input q_reg_39;
  input am_multdiv;
  input [3:0]q_reg_40;
  input [15:0]\i_/q_i_2 ;
  input q_reg_41;
  input q_reg_42;
  input q_reg_43;

  wire am_multdiv;
  wire cpu_clock_BUFG;
  wire [4:4]cycle;
  wire data_resultRDY;
  wire exception;
  wire [15:0]\i_/q_i_2 ;
  wire [31:0]multdiv_data;
  wire multiplier_n_1;
  wire [0:0]p_1_out;
  wire [0:0]positive_A;
  wire q;
  wire [30:0]q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_37;
  wire q_reg_38;
  wire q_reg_39;
  wire q_reg_4;
  wire [3:0]q_reg_40;
  wire q_reg_41;
  wire q_reg_42;
  wire q_reg_43;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire [0:0]q_reg_8;
  wire q_reg_9;

  dffe_ref_1141 dff
       (.cpu_clock_BUFG(cpu_clock_BUFG),
        .exception(exception),
        .q_reg_0(q),
        .q_reg_1(q_reg_39));
  div divider
       (.am_multdiv(am_multdiv),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .cycle(cycle),
        .data_resultRDY(data_resultRDY),
        .\i_/q_i_2 (\i_/q_i_2 ),
        .multdiv_data(multdiv_data),
        .p_1_out(p_1_out),
        .positive_A(positive_A),
        .q_reg(q_reg[0]),
        .q_reg_0(q_reg[1]),
        .q_reg_1(q_reg[2]),
        .q_reg_10(q_reg_6),
        .q_reg_11(q_reg_7),
        .q_reg_12(q_reg_8),
        .q_reg_13(q_reg_9),
        .q_reg_14(q_reg_10),
        .q_reg_15(q_reg_11),
        .q_reg_16(q_reg_12),
        .q_reg_17(q_reg_13),
        .q_reg_18(q_reg_14),
        .q_reg_19(q_reg_15),
        .q_reg_2(q_reg[3]),
        .q_reg_20(q_reg_16),
        .q_reg_21(q_reg_17),
        .q_reg_22(q_reg_18),
        .q_reg_23(q_reg_19),
        .q_reg_24(q_reg_20),
        .q_reg_25(q_reg_21),
        .q_reg_26(q_reg_22),
        .q_reg_27(q_reg_23),
        .q_reg_28(q_reg_24),
        .q_reg_29(q_reg_25),
        .q_reg_3(q_reg[30:4]),
        .q_reg_30(q_reg_26),
        .q_reg_31(q_reg_27),
        .q_reg_32(q_reg_28),
        .q_reg_33(q_reg_29),
        .q_reg_34(q_reg_30),
        .q_reg_35(q_reg_31),
        .q_reg_36(q_reg_32),
        .q_reg_37(q_reg_33),
        .q_reg_38(q_reg_34),
        .q_reg_39(q_reg_35),
        .q_reg_4(q_reg_0),
        .q_reg_40(q_reg_36),
        .q_reg_41(q_reg_37),
        .q_reg_42(q_reg_38),
        .q_reg_43(q),
        .q_reg_44(q_reg_40),
        .q_reg_45(multiplier_n_1),
        .q_reg_46(q_reg_41),
        .q_reg_47(q_reg_42),
        .q_reg_48(q_reg_43),
        .q_reg_5(q_reg_1),
        .q_reg_6(q_reg_2),
        .q_reg_7(q_reg_3),
        .q_reg_8(q_reg_4),
        .q_reg_9(q_reg_5));
  mult multiplier
       (.cpu_clock_BUFG(cpu_clock_BUFG),
        .q_reg(cycle),
        .q_reg_0(multiplier_n_1),
        .q_reg_1(q_reg_7));
endmodule

module processor
   (rs1,
    q_reg_rep,
    q_reg_rep_0,
    in1,
    q_reg,
    q_reg_0,
    q_reg_1,
    ps2_clk_OBUF,
    ps2_data_OBUF,
    ps2_clk_TRI,
    ps2_data_TRI,
    data_writeReg,
    Q,
    dataOut0,
    q_reg_2,
    q_reg_3,
    q_reg_4,
    in_en057_out,
    in_en053_out,
    in_en049_out,
    in_en045_out,
    in_en041_out,
    in_en037_out,
    in_en033_out,
    in_en029_out,
    in_en025_out,
    in_en021_out,
    in_en017_out,
    in_en013_out,
    in_en09_out,
    in_en05_out,
    in_en01_out,
    in_en0,
    in_en03_out,
    in_en07_out,
    in_en011_out,
    in_en015_out,
    in_en019_out,
    in_en023_out,
    in_en027_out,
    in_en031_out,
    in_en035_out,
    in_en039_out,
    in_en043_out,
    in_en047_out,
    in_en051_out,
    in_en055_out,
    in_en059_out,
    JA1_OBUF,
    JA2_OBUF,
    clk0,
    ctrl_reset,
    instData,
    q_reg_5,
    q_reg_6,
    q_reg_7,
    q_reg_8,
    q_reg_9,
    q_reg_10,
    q_reg_11,
    q_reg_12,
    q_reg_13,
    q_reg_14,
    q_reg_15,
    q_reg_16,
    q_reg_17,
    q_reg_18,
    q_reg_19,
    q_reg_20,
    q_reg_21,
    q_reg_22,
    q_reg_23,
    q_reg_24,
    q_reg_25,
    q_reg_26,
    q_reg_27,
    q_reg_28,
    q_reg_29,
    q_reg_30,
    q_reg_31,
    q_reg_32,
    q_reg_33,
    q_reg_34,
    q_reg_35,
    q_reg_36,
    cpu_clock_BUFG,
    clk_100mhz_IBUF_BUFG,
    ps2_data_IBUF,
    ps2_clk_IBUF,
    BTNR_IBUF);
  output [4:0]rs1;
  output q_reg_rep;
  output q_reg_rep_0;
  output in1;
  output q_reg;
  output q_reg_0;
  output q_reg_1;
  output ps2_clk_OBUF;
  output ps2_data_OBUF;
  output ps2_clk_TRI;
  output ps2_data_TRI;
  output [31:0]data_writeReg;
  output [14:0]Q;
  output [0:0]dataOut0;
  output q_reg_2;
  output q_reg_3;
  output q_reg_4;
  output in_en057_out;
  output in_en053_out;
  output in_en049_out;
  output in_en045_out;
  output in_en041_out;
  output in_en037_out;
  output in_en033_out;
  output in_en029_out;
  output in_en025_out;
  output in_en021_out;
  output in_en017_out;
  output in_en013_out;
  output in_en09_out;
  output in_en05_out;
  output in_en01_out;
  output in_en0;
  output in_en03_out;
  output in_en07_out;
  output in_en011_out;
  output in_en015_out;
  output in_en019_out;
  output in_en023_out;
  output in_en027_out;
  output in_en031_out;
  output in_en035_out;
  output in_en039_out;
  output in_en043_out;
  output in_en047_out;
  output in_en051_out;
  output in_en055_out;
  output in_en059_out;
  output [4:1]JA1_OBUF;
  output [4:1]JA2_OBUF;
  input clk0;
  input ctrl_reset;
  input [5:0]instData;
  input q_reg_5;
  input q_reg_6;
  input q_reg_7;
  input q_reg_8;
  input q_reg_9;
  input q_reg_10;
  input q_reg_11;
  input q_reg_12;
  input q_reg_13;
  input q_reg_14;
  input q_reg_15;
  input q_reg_16;
  input q_reg_17;
  input q_reg_18;
  input q_reg_19;
  input q_reg_20;
  input q_reg_21;
  input q_reg_22;
  input q_reg_23;
  input q_reg_24;
  input q_reg_25;
  input q_reg_26;
  input q_reg_27;
  input q_reg_28;
  input q_reg_29;
  input q_reg_30;
  input q_reg_31;
  input q_reg_32;
  input q_reg_33;
  input q_reg_34;
  input q_reg_35;
  input q_reg_36;
  input cpu_clock_BUFG;
  input clk_100mhz_IBUF_BUFG;
  input ps2_data_IBUF;
  input ps2_clk_IBUF;
  input BTNR_IBUF;

  wire BTNR_IBUF;
  wire [4:1]JA1_OBUF;
  wire [4:1]JA2_OBUF;
  wire [14:0]Q;
  wire [31:0]aluout;
  wire am_multdiv;
  wire clk0;
  wire clk_100mhz_IBUF_BUFG;
  wire cpu_clock_BUFG;
  wire [23:2]ctrl_dx_out;
  wire [128:22]ctrl_mw_out;
  wire [37:32]ctrl_pw_out;
  wire ctrl_reset;
  wire [128:29]ctrl_xm_out;
  wire curr_reel_i_3_n_0;
  wire curr_reel_i_4_n_0;
  wire curr_reel_i_5_n_0;
  wire curr_reel_i_6_n_0;
  wire curr_reel_reg_n_0;
  wire [12:0]curr_reg1;
  wire [5:3]current_reg;
  wire [31:0]data1;
  wire [0:0]dataOut0;
  wire data_resultRDY;
  wire [31:0]data_writeReg;
  wire [0:0]\divider/alu_in_A ;
  wire [13:13]\divider/positive_A ;
  wire dx_n_5;
  wire dx_n_70;
  wire dx_n_72;
  wire dx_n_76;
  wire dx_n_77;
  wire dx_n_78;
  wire dx_n_79;
  wire dx_n_80;
  wire dx_n_81;
  wire dx_n_82;
  wire dx_n_83;
  wire dx_n_84;
  wire dx_n_85;
  wire dx_n_86;
  wire dx_n_87;
  wire dx_n_88;
  wire [31:0]dx_out_A;
  wire exception;
  wire fd_n_10;
  wire fd_n_11;
  wire fd_n_12;
  wire fd_n_13;
  wire fd_n_7;
  wire fd_n_8;
  wire fd_n_9;
  wire in1;
  wire in_en0;
  wire in_en011_out;
  wire in_en013_out;
  wire in_en015_out;
  wire in_en017_out;
  wire in_en019_out;
  wire in_en01_out;
  wire in_en021_out;
  wire in_en023_out;
  wire in_en025_out;
  wire in_en027_out;
  wire in_en029_out;
  wire in_en031_out;
  wire in_en033_out;
  wire in_en035_out;
  wire in_en037_out;
  wire in_en039_out;
  wire in_en03_out;
  wire in_en041_out;
  wire in_en043_out;
  wire in_en045_out;
  wire in_en047_out;
  wire in_en049_out;
  wire in_en051_out;
  wire in_en053_out;
  wire in_en055_out;
  wire in_en057_out;
  wire in_en059_out;
  wire in_en05_out;
  wire in_en07_out;
  wire in_en09_out;
  wire in_en0_0;
  wire [5:0]instData;
  wire just_updated;
  wire just_updated_i_11_n_0;
  wire just_updated_i_2_n_0;
  wire just_updated_i_3_n_0;
  wire just_updated_i_4_n_0;
  wire just_updated_i_5_n_0;
  wire just_updated_reg_i_10_n_0;
  wire just_updated_reg_i_10_n_4;
  wire just_updated_reg_i_10_n_5;
  wire just_updated_reg_i_10_n_6;
  wire just_updated_reg_i_10_n_7;
  wire just_updated_reg_i_12_n_0;
  wire just_updated_reg_i_12_n_4;
  wire just_updated_reg_i_12_n_5;
  wire just_updated_reg_i_12_n_6;
  wire just_updated_reg_i_12_n_7;
  wire just_updated_reg_i_6_n_0;
  wire just_updated_reg_i_6_n_4;
  wire just_updated_reg_i_6_n_5;
  wire just_updated_reg_i_6_n_6;
  wire just_updated_reg_i_6_n_7;
  wire just_updated_reg_i_7_n_0;
  wire just_updated_reg_i_7_n_4;
  wire just_updated_reg_i_7_n_5;
  wire just_updated_reg_i_7_n_6;
  wire just_updated_reg_i_7_n_7;
  wire just_updated_reg_i_8_n_4;
  wire just_updated_reg_i_8_n_5;
  wire just_updated_reg_i_8_n_6;
  wire just_updated_reg_i_8_n_7;
  wire just_updated_reg_i_9_n_0;
  wire just_updated_reg_i_9_n_4;
  wire just_updated_reg_i_9_n_5;
  wire just_updated_reg_i_9_n_6;
  wire just_updated_reg_i_9_n_7;
  wire md_n_0;
  wire md_n_25;
  wire md_n_26;
  wire md_n_27;
  wire md_n_28;
  wire md_n_29;
  wire md_n_30;
  wire md_n_31;
  wire md_n_32;
  wire md_n_34;
  wire md_n_35;
  wire md_n_36;
  wire md_n_37;
  wire md_n_38;
  wire md_n_39;
  wire md_n_40;
  wire md_n_41;
  wire md_n_42;
  wire md_n_43;
  wire md_n_44;
  wire md_n_45;
  wire md_n_46;
  wire md_n_47;
  wire md_n_48;
  wire md_n_49;
  wire md_n_50;
  wire md_n_51;
  wire md_n_52;
  wire md_n_53;
  wire md_n_54;
  wire md_n_55;
  wire md_n_56;
  wire md_n_57;
  wire md_n_58;
  wire mdunit_n_34;
  wire mdunit_n_68;
  wire mdunit_n_69;
  wire mdunit_n_70;
  wire mdunit_n_71;
  wire mdunit_n_73;
  wire mdunit_n_74;
  wire [31:0]multdiv_data;
  wire [68:38]multdiv_latch;
  wire [23:0]\multiplier/alu_out ;
  wire mw_n_38;
  wire mw_n_39;
  wire mw_n_42;
  wire mw_n_44;
  wire mw_n_45;
  wire mw_n_46;
  wire mw_n_47;
  wire mw_n_48;
  wire mw_n_49;
  wire mw_n_50;
  wire mw_n_51;
  wire mw_n_52;
  wire mw_n_53;
  wire mw_n_54;
  wire mw_n_55;
  wire mw_n_56;
  wire mw_n_57;
  wire mw_n_58;
  wire mw_n_59;
  wire mw_n_60;
  wire mw_n_61;
  wire mw_n_62;
  wire mw_n_63;
  wire mw_n_64;
  wire mw_n_65;
  wire mw_n_66;
  wire mw_n_67;
  wire mw_n_68;
  wire mw_n_69;
  wire mw_n_70;
  wire mw_n_71;
  wire mw_n_72;
  wire mw_n_73;
  wire mw_n_74;
  wire mw_n_75;
  wire mw_n_76;
  wire \my_alu/add/G0 ;
  wire \my_alu/add/add1/c2 ;
  wire \my_alu/add/add4/a00__0 ;
  wire \my_alu/add/w2 ;
  wire \my_alu/add/w3 ;
  wire \my_alu/p_21_in ;
  wire \my_alu/p_97_in ;
  wire \my_alu/sub/P0 ;
  wire \my_alu/sub/add1/c0 ;
  wire \my_alu/sub/add1/c1 ;
  wire \my_alu/sub/add1/c5 ;
  wire \my_alu/sub/add1/c6 ;
  wire \my_alu/sub/add1/p4 ;
  wire \my_alu/sub/add1/p_39_in ;
  wire \my_alu/sub/add2/c4 ;
  wire \my_alu/sub/add2/c5 ;
  wire \my_alu/sub/add2/c6 ;
  wire \my_alu/sub/add3/c4 ;
  wire \my_alu/sub/add3/c5 ;
  wire \my_alu/sub/add3/c6 ;
  wire \my_alu/sub/add4/c0 ;
  wire \my_alu/sub/add4/c3 ;
  wire \my_alu/sub/add4/c4 ;
  wire \my_alu/sub/add4/c5 ;
  wire \my_alu/sub/w1 ;
  wire \my_alu/sub/w2 ;
  wire \my_alu/sub/w3 ;
  wire [31:1]p_0_in;
  wire [37:37]p_1_out;
  wire [31:0]p_3_in;
  wire [9:9]posData;
  wire ps2_clk_IBUF;
  wire ps2_clk_OBUF;
  wire ps2_clk_TRI;
  wire ps2_clk_h;
  wire ps2_data_IBUF;
  wire ps2_data_OBUF;
  wire ps2_data_TRI;
  wire pw_n_36;
  wire pw_n_39;
  wire pw_n_70;
  wire pw_n_71;
  wire pw_n_72;
  wire pw_n_73;
  wire pw_n_74;
  wire pw_n_75;
  wire pw_n_76;
  wire pw_n_77;
  wire pw_n_78;
  wire pw_n_79;
  wire pw_n_80;
  wire pw_n_81;
  wire pw_n_82;
  wire pw_n_83;
  wire pwropt;
  wire q;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_10;
  wire q_reg_11;
  wire q_reg_12;
  wire q_reg_13;
  wire q_reg_14;
  wire q_reg_15;
  wire q_reg_16;
  wire q_reg_17;
  wire q_reg_18;
  wire q_reg_19;
  wire q_reg_2;
  wire q_reg_20;
  wire q_reg_21;
  wire q_reg_22;
  wire q_reg_23;
  wire q_reg_24;
  wire q_reg_25;
  wire q_reg_26;
  wire q_reg_27;
  wire q_reg_28;
  wire q_reg_29;
  wire q_reg_3;
  wire q_reg_30;
  wire q_reg_31;
  wire q_reg_32;
  wire q_reg_33;
  wire q_reg_34;
  wire q_reg_35;
  wire q_reg_36;
  wire q_reg_4;
  wire q_reg_5;
  wire q_reg_6;
  wire q_reg_7;
  wire q_reg_8;
  wire q_reg_9;
  wire q_reg_rep;
  wire q_reg_rep_0;
  wire read_data;
  wire [4:0]rs1;
  wire rwe;
  wire [6:0]scancode;
  wire \slow_clock_div[0]_i_2_n_0 ;
  wire [24:0]slow_clock_div_reg;
  wire \slow_clock_div_reg[0]_i_1_n_0 ;
  wire \slow_clock_div_reg[0]_i_1_n_4 ;
  wire \slow_clock_div_reg[0]_i_1_n_5 ;
  wire \slow_clock_div_reg[0]_i_1_n_6 ;
  wire \slow_clock_div_reg[0]_i_1_n_7 ;
  wire \slow_clock_div_reg[12]_i_1_n_0 ;
  wire \slow_clock_div_reg[12]_i_1_n_4 ;
  wire \slow_clock_div_reg[12]_i_1_n_5 ;
  wire \slow_clock_div_reg[12]_i_1_n_6 ;
  wire \slow_clock_div_reg[12]_i_1_n_7 ;
  wire \slow_clock_div_reg[16]_i_1_n_0 ;
  wire \slow_clock_div_reg[16]_i_1_n_4 ;
  wire \slow_clock_div_reg[16]_i_1_n_5 ;
  wire \slow_clock_div_reg[16]_i_1_n_6 ;
  wire \slow_clock_div_reg[16]_i_1_n_7 ;
  wire \slow_clock_div_reg[20]_i_1_n_0 ;
  wire \slow_clock_div_reg[20]_i_1_n_4 ;
  wire \slow_clock_div_reg[20]_i_1_n_5 ;
  wire \slow_clock_div_reg[20]_i_1_n_6 ;
  wire \slow_clock_div_reg[20]_i_1_n_7 ;
  wire \slow_clock_div_reg[24]_i_1_n_7 ;
  wire \slow_clock_div_reg[4]_i_1_n_0 ;
  wire \slow_clock_div_reg[4]_i_1_n_4 ;
  wire \slow_clock_div_reg[4]_i_1_n_5 ;
  wire \slow_clock_div_reg[4]_i_1_n_6 ;
  wire \slow_clock_div_reg[4]_i_1_n_7 ;
  wire \slow_clock_div_reg[8]_i_1_n_0 ;
  wire \slow_clock_div_reg[8]_i_1_n_4 ;
  wire \slow_clock_div_reg[8]_i_1_n_5 ;
  wire \slow_clock_div_reg[8]_i_1_n_6 ;
  wire \slow_clock_div_reg[8]_i_1_n_7 ;
  wire stepper1_n_0;
  wire stepper1_n_1;
  wire stepper1_n_10;
  wire stepper1_n_11;
  wire stepper1_n_12;
  wire stepper1_n_13;
  wire stepper1_n_14;
  wire stepper1_n_15;
  wire stepper1_n_16;
  wire stepper1_n_17;
  wire stepper1_n_18;
  wire stepper1_n_19;
  wire stepper1_n_2;
  wire stepper1_n_20;
  wire stepper1_n_21;
  wire stepper1_n_7;
  wire stepper1_n_9;
  wire stepper2_n_16;
  wire stepper2_n_17;
  wire stepper2_n_18;
  wire stepper2_n_19;
  wire stepper2_n_2;
  wire stepper2_n_20;
  wire stepper2_n_21;
  wire stepper2_n_22;
  wire stepper2_n_23;
  wire stepper2_n_24;
  wire stepper2_n_6;
  wire stepper2_n_7;
  wire stepper2_n_8;
  wire xm_n_10;
  wire xm_n_100;
  wire xm_n_101;
  wire xm_n_102;
  wire xm_n_103;
  wire xm_n_104;
  wire xm_n_105;
  wire xm_n_106;
  wire xm_n_107;
  wire xm_n_108;
  wire xm_n_109;
  wire xm_n_11;
  wire xm_n_112;
  wire xm_n_113;
  wire xm_n_114;
  wire xm_n_12;
  wire xm_n_13;
  wire xm_n_14;
  wire xm_n_15;
  wire xm_n_16;
  wire xm_n_17;
  wire xm_n_18;
  wire xm_n_19;
  wire xm_n_20;
  wire xm_n_21;
  wire xm_n_22;
  wire xm_n_23;
  wire xm_n_24;
  wire xm_n_25;
  wire xm_n_26;
  wire xm_n_27;
  wire xm_n_28;
  wire xm_n_29;
  wire xm_n_30;
  wire xm_n_31;
  wire xm_n_32;
  wire xm_n_33;
  wire xm_n_34;
  wire xm_n_35;
  wire xm_n_36;
  wire xm_n_37;
  wire xm_n_38;
  wire xm_n_39;
  wire xm_n_40;
  wire xm_n_41;
  wire xm_n_42;
  wire xm_n_45;
  wire xm_n_46;
  wire xm_n_47;
  wire xm_n_48;
  wire xm_n_52;
  wire xm_n_53;
  wire xm_n_54;
  wire xm_n_56;
  wire xm_n_57;
  wire xm_n_58;
  wire xm_n_59;
  wire xm_n_61;
  wire xm_n_62;
  wire xm_n_63;
  wire xm_n_64;
  wire xm_n_67;
  wire xm_n_69;
  wire xm_n_7;
  wire xm_n_72;
  wire xm_n_73;
  wire xm_n_76;
  wire xm_n_78;
  wire xm_n_79;
  wire xm_n_8;
  wire xm_n_80;
  wire xm_n_82;
  wire xm_n_83;
  wire xm_n_84;
  wire xm_n_85;
  wire xm_n_86;
  wire xm_n_88;
  wire xm_n_89;
  wire xm_n_9;
  wire xm_n_91;
  wire xm_n_92;
  wire xm_n_93;
  wire xm_n_94;
  wire xm_n_95;
  wire xm_n_96;
  wire xm_n_97;
  wire xm_n_99;
  wire [4:0]xm_rd;
  wire [2:0]NLW_just_updated_reg_i_10_CO_UNCONNECTED;
  wire [2:0]NLW_just_updated_reg_i_12_CO_UNCONNECTED;
  wire [2:0]NLW_just_updated_reg_i_6_CO_UNCONNECTED;
  wire [2:0]NLW_just_updated_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_just_updated_reg_i_8_CO_UNCONNECTED;
  wire [2:0]NLW_just_updated_reg_i_9_CO_UNCONNECTED;
  wire [2:0]\NLW_slow_clock_div_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_slow_clock_div_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_slow_clock_div_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_slow_clock_div_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_slow_clock_div_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_slow_clock_div_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_slow_clock_div_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_slow_clock_div_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[0] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[10] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[11] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[12] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[13] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(just_updated),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[14] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reel_reg_n_0),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[7] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[8] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[9] 
       (.C(clk_100mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(curr_reg1[9]),
        .Q(Q[9]),
        .R(1'b0));
  register__parameterized2 am_md
       (.am_multdiv(am_multdiv),
        .clk0(clk0),
        .ctrl_reset(ctrl_reset),
        .data_resultRDY(data_resultRDY),
        .in_en0_0(in_en0_0),
        .q_reg(in1),
        .q_reg_0(fd_n_13));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    curr_reel_i_3
       (.I0(just_updated_reg_i_12_n_4),
        .I1(just_updated_reg_i_10_n_7),
        .I2(just_updated_reg_i_12_n_6),
        .I3(just_updated_reg_i_12_n_5),
        .I4(just_updated_reg_i_10_n_5),
        .I5(just_updated_reg_i_10_n_6),
        .O(curr_reel_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    curr_reel_i_4
       (.I0(just_updated_reg_i_9_n_6),
        .I1(just_updated_reg_i_9_n_5),
        .I2(just_updated_reg_i_10_n_4),
        .I3(just_updated_reg_i_9_n_7),
        .I4(just_updated_reg_i_8_n_7),
        .I5(just_updated_reg_i_9_n_4),
        .O(curr_reel_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    curr_reel_i_5
       (.I0(just_updated_reg_i_7_n_6),
        .I1(just_updated_reg_i_7_n_5),
        .I2(just_updated_reg_i_6_n_4),
        .I3(just_updated_reg_i_7_n_7),
        .I4(just_updated_reg_i_12_n_7),
        .I5(just_updated_reg_i_7_n_4),
        .O(curr_reel_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    curr_reel_i_6
       (.I0(just_updated_reg_i_6_n_5),
        .I1(just_updated_reg_i_6_n_6),
        .I2(just_updated_reg_i_6_n_7),
        .O(curr_reel_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_reel_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(stepper1_n_2),
        .Q(curr_reel_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[0] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(mw_n_42),
        .Q(curr_reg1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[10] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_81),
        .Q(curr_reg1[10]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[11] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_82),
        .Q(curr_reg1[11]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[12] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_83),
        .Q(curr_reg1[12]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[1] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(mw_n_39),
        .Q(curr_reg1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[2] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_73),
        .Q(curr_reg1[2]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[3] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_74),
        .Q(curr_reg1[3]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[4] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_75),
        .Q(curr_reg1[4]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[5] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_76),
        .Q(curr_reg1[5]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[6] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_77),
        .Q(curr_reg1[6]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[7] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_78),
        .Q(curr_reg1[7]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[8] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_79),
        .Q(curr_reg1[8]),
        .R(mw_n_38));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \curr_reg1_reg[9] 
       (.C(cpu_clock_BUFG),
        .CE(pw_n_70),
        .D(pw_n_80),
        .Q(curr_reg1[9]),
        .R(mw_n_38));
  register__parameterized1 dx
       (.G0(\my_alu/add/G0 ),
        .a00__0(\my_alu/add/add4/a00__0 ),
        .aluout(aluout),
        .c0(\my_alu/sub/add4/c0 ),
        .c1(\my_alu/sub/add1/c1 ),
        .c2(\my_alu/add/add1/c2 ),
        .c3(\my_alu/sub/add4/c3 ),
        .c4(\my_alu/sub/add4/c4 ),
        .c4_3(\my_alu/sub/add3/c4 ),
        .c4_6(\my_alu/sub/add2/c4 ),
        .c5(\my_alu/sub/add1/c5 ),
        .c5_2(\my_alu/sub/add4/c5 ),
        .c5_5(\my_alu/sub/add3/c5 ),
        .c5_8(\my_alu/sub/add2/c5 ),
        .c6(\my_alu/sub/add1/c6 ),
        .c6_4(\my_alu/sub/add3/c6 ),
        .c6_7(\my_alu/sub/add2/c6 ),
        .clk0(clk0),
        .ctrl_dx_out({ctrl_dx_out[23:22],ctrl_dx_out[4:2]}),
        .ctrl_mw_out({ctrl_mw_out[26],ctrl_mw_out[22]}),
        .ctrl_pw_out(ctrl_pw_out[34:32]),
        .ctrl_reset(ctrl_reset),
        .dx_out_A(dx_out_A),
        .p4(\my_alu/sub/add1/p4 ),
        .p_21_in(\my_alu/p_21_in ),
        .p_39_in(\my_alu/sub/add1/p_39_in ),
        .p_97_in(\my_alu/p_97_in ),
        .q(q),
        .q_i_3__19(xm_n_114),
        .q_reg(dx_n_5),
        .q_reg_0(dx_n_70),
        .q_reg_1(dx_n_72),
        .q_reg_10(dx_n_84),
        .q_reg_100(xm_n_93),
        .q_reg_101(xm_n_94),
        .q_reg_102(xm_n_39),
        .q_reg_103(xm_n_95),
        .q_reg_104(xm_n_112),
        .q_reg_105(xm_n_113),
        .q_reg_11(dx_n_85),
        .q_reg_12(dx_n_86),
        .q_reg_13(dx_n_87),
        .q_reg_14(dx_n_88),
        .q_reg_15(fd_n_10),
        .q_reg_16(fd_n_11),
        .q_reg_17(fd_n_7),
        .q_reg_18(fd_n_8),
        .q_reg_19(fd_n_9),
        .q_reg_2(dx_n_76),
        .q_reg_20(fd_n_12),
        .q_reg_21(q_reg_5),
        .q_reg_22(q_reg_6),
        .q_reg_23(q_reg_7),
        .q_reg_24(q_reg_8),
        .q_reg_25(q_reg_9),
        .q_reg_26(q_reg_10),
        .q_reg_27(q_reg_11),
        .q_reg_28(q_reg_12),
        .q_reg_29(q_reg_13),
        .q_reg_3(dx_n_77),
        .q_reg_30(q_reg_14),
        .q_reg_31(q_reg_15),
        .q_reg_32(q_reg_16),
        .q_reg_33(q_reg_17),
        .q_reg_34(q_reg_18),
        .q_reg_35(q_reg_19),
        .q_reg_36(q_reg_20),
        .q_reg_37(q_reg_21),
        .q_reg_38(q_reg_22),
        .q_reg_39(q_reg_23),
        .q_reg_4(dx_n_78),
        .q_reg_40(q_reg_24),
        .q_reg_41(q_reg_25),
        .q_reg_42(q_reg_26),
        .q_reg_43(q_reg_27),
        .q_reg_44(q_reg_28),
        .q_reg_45(q_reg_29),
        .q_reg_46(q_reg_30),
        .q_reg_47(q_reg_31),
        .q_reg_48(q_reg_32),
        .q_reg_49(q_reg_33),
        .q_reg_5(dx_n_79),
        .q_reg_50(q_reg_34),
        .q_reg_51(q_reg_35),
        .q_reg_52(q_reg_36),
        .q_reg_53(xm_n_102),
        .q_reg_54(xm_n_76),
        .q_reg_55(xm_n_62),
        .q_reg_56(xm_n_63),
        .q_reg_57(xm_n_61),
        .q_reg_58(xm_n_101),
        .q_reg_59(xm_n_56),
        .q_reg_6(dx_n_80),
        .q_reg_60(xm_n_96),
        .q_reg_61(xm_n_97),
        .q_reg_62(xm_n_100),
        .q_reg_63(xm_n_54),
        .q_reg_64(xm_n_52),
        .q_reg_65(xm_n_53),
        .q_reg_66(xm_n_67),
        .q_reg_67(xm_n_89),
        .q_reg_68(xm_n_78),
        .q_reg_69(xm_n_72),
        .q_reg_7(dx_n_81),
        .q_reg_70(xm_n_69),
        .q_reg_71(xm_n_57),
        .q_reg_72(xm_n_59),
        .q_reg_73(xm_n_73),
        .q_reg_74(xm_n_58),
        .q_reg_75(xm_n_103),
        .q_reg_76(xm_n_64),
        .q_reg_77(xm_n_80),
        .q_reg_78(xm_n_82),
        .q_reg_79(xm_n_83),
        .q_reg_8(dx_n_82),
        .q_reg_80(xm_n_79),
        .q_reg_81(xm_n_84),
        .q_reg_82(xm_n_85),
        .q_reg_83(xm_n_86),
        .q_reg_84(xm_n_45),
        .q_reg_85(xm_n_106),
        .q_reg_86(xm_n_46),
        .q_reg_87(xm_n_105),
        .q_reg_88(xm_n_47),
        .q_reg_89(xm_n_104),
        .q_reg_9(dx_n_83),
        .q_reg_90(xm_n_48),
        .q_reg_91(xm_n_92),
        .q_reg_92(xm_n_88),
        .q_reg_93(xm_n_109),
        .q_reg_94(xm_n_40),
        .q_reg_95(xm_n_108),
        .q_reg_96(xm_n_41),
        .q_reg_97(xm_n_107),
        .q_reg_98(xm_n_42),
        .q_reg_99(xm_n_91),
        .w1(\my_alu/sub/w1 ),
        .w2(\my_alu/sub/w2 ),
        .w2_0(\my_alu/add/w2 ),
        .w3(\my_alu/sub/w3 ),
        .w3_1(\my_alu/add/w3 ),
        .xm_rd(xm_rd[1:0]));
  register__parameterized0 fd
       (.clk0(clk0),
        .ctrl_reset(ctrl_reset),
        .dataOut0(dataOut0),
        .in_en0_0(in_en0_0),
        .instData(instData),
        .q_reg(fd_n_7),
        .q_reg_0(fd_n_8),
        .q_reg_1(fd_n_9),
        .q_reg_10(q_reg_3),
        .q_reg_11(q_reg_4),
        .q_reg_12(in1),
        .q_reg_2(fd_n_10),
        .q_reg_3(fd_n_11),
        .q_reg_4(fd_n_12),
        .q_reg_5(fd_n_13),
        .q_reg_6(q_reg),
        .q_reg_7(q_reg_0),
        .q_reg_8(q_reg_1),
        .q_reg_9(q_reg_2),
        .q_reg_rep(q_reg_rep),
        .q_reg_rep_0(q_reg_rep_0),
        .rs1(rs1));
  LUT2 #(
    .INIT(4'h1)) 
    just_updated_i_11
       (.I0(just_updated_reg_i_12_n_4),
        .I1(just_updated_reg_i_10_n_7),
        .O(just_updated_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    just_updated_i_2
       (.I0(just_updated_reg_i_6_n_4),
        .I1(just_updated_reg_i_7_n_7),
        .I2(just_updated_reg_i_6_n_6),
        .I3(just_updated_reg_i_6_n_5),
        .I4(just_updated_reg_i_7_n_5),
        .I5(just_updated_reg_i_7_n_6),
        .O(just_updated_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    just_updated_i_3
       (.I0(just_updated_reg_i_8_n_6),
        .I1(just_updated_reg_i_8_n_5),
        .I2(just_updated_reg_i_9_n_4),
        .I3(just_updated_reg_i_8_n_7),
        .I4(slow_clock_div_reg[0]),
        .I5(just_updated_reg_i_8_n_4),
        .O(just_updated_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    just_updated_i_4
       (.I0(just_updated_reg_i_10_n_4),
        .I1(just_updated_reg_i_9_n_7),
        .I2(just_updated_reg_i_10_n_6),
        .I3(just_updated_reg_i_10_n_5),
        .I4(just_updated_reg_i_9_n_5),
        .I5(just_updated_reg_i_9_n_6),
        .O(just_updated_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    just_updated_i_5
       (.I0(just_updated_i_11_n_0),
        .I1(just_updated_reg_i_12_n_7),
        .I2(just_updated_reg_i_7_n_4),
        .I3(just_updated_reg_i_12_n_5),
        .I4(just_updated_reg_i_12_n_6),
        .I5(just_updated_reg_i_6_n_7),
        .O(just_updated_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    just_updated_reg
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(stepper1_n_1),
        .Q(just_updated),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_10
       (.CI(just_updated_reg_i_12_n_0),
        .CO({just_updated_reg_i_10_n_0,NLW_just_updated_reg_i_10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_10_n_4,just_updated_reg_i_10_n_5,just_updated_reg_i_10_n_6,just_updated_reg_i_10_n_7}),
        .S(slow_clock_div_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_12
       (.CI(just_updated_reg_i_7_n_0),
        .CO({just_updated_reg_i_12_n_0,NLW_just_updated_reg_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_12_n_4,just_updated_reg_i_12_n_5,just_updated_reg_i_12_n_6,just_updated_reg_i_12_n_7}),
        .S(slow_clock_div_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_6
       (.CI(1'b0),
        .CO({just_updated_reg_i_6_n_0,NLW_just_updated_reg_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(slow_clock_div_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_6_n_4,just_updated_reg_i_6_n_5,just_updated_reg_i_6_n_6,just_updated_reg_i_6_n_7}),
        .S(slow_clock_div_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_7
       (.CI(just_updated_reg_i_6_n_0),
        .CO({just_updated_reg_i_7_n_0,NLW_just_updated_reg_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_7_n_4,just_updated_reg_i_7_n_5,just_updated_reg_i_7_n_6,just_updated_reg_i_7_n_7}),
        .S(slow_clock_div_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_8
       (.CI(just_updated_reg_i_9_n_0),
        .CO(NLW_just_updated_reg_i_8_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_8_n_4,just_updated_reg_i_8_n_5,just_updated_reg_i_8_n_6,just_updated_reg_i_8_n_7}),
        .S(slow_clock_div_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 just_updated_reg_i_9
       (.CI(just_updated_reg_i_10_n_0),
        .CO({just_updated_reg_i_9_n_0,NLW_just_updated_reg_i_9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({just_updated_reg_i_9_n_4,just_updated_reg_i_9_n_5,just_updated_reg_i_9_n_6,just_updated_reg_i_9_n_7}),
        .S(slow_clock_div_reg[20:17]));
  register__parameterized3 md
       (.alu_in_A(\divider/alu_in_A ),
        .clk0(clk0),
        .ctrl_dx_out({ctrl_dx_out[23:22],ctrl_dx_out[4:2]}),
        .ctrl_reset(ctrl_reset),
        .p_0_in(p_0_in),
        .positive_A(\divider/positive_A ),
        .q_reg(md_n_0),
        .q_reg_0({\multiplier/alu_out [23:18],\multiplier/alu_out [16:8],\multiplier/alu_out [0]}),
        .q_reg_1({multdiv_latch[68:67],multdiv_latch[65:63],multdiv_latch[49],multdiv_latch[39:38]}),
        .q_reg_10(md_n_34),
        .q_reg_11(md_n_35),
        .q_reg_12(md_n_36),
        .q_reg_13(md_n_37),
        .q_reg_14(md_n_38),
        .q_reg_15(md_n_39),
        .q_reg_16(md_n_40),
        .q_reg_17(md_n_41),
        .q_reg_18(md_n_42),
        .q_reg_19(md_n_43),
        .q_reg_2(md_n_25),
        .q_reg_20(md_n_44),
        .q_reg_21(md_n_45),
        .q_reg_22(md_n_46),
        .q_reg_23(md_n_47),
        .q_reg_24(md_n_48),
        .q_reg_25(md_n_49),
        .q_reg_26(md_n_50),
        .q_reg_27(md_n_51),
        .q_reg_28(md_n_52),
        .q_reg_29(md_n_53),
        .q_reg_3(md_n_26),
        .q_reg_30(md_n_54),
        .q_reg_31(md_n_55),
        .q_reg_32(md_n_56),
        .q_reg_33(md_n_57),
        .q_reg_34(md_n_58),
        .q_reg_35(dx_n_79),
        .q_reg_36(xm_n_112),
        .q_reg_37(xm_n_113),
        .q_reg_38(xm_n_97),
        .q_reg_39(xm_n_96),
        .q_reg_4(md_n_27),
        .q_reg_40(xm_n_52),
        .q_reg_41(xm_n_54),
        .q_reg_42(xm_n_53),
        .q_reg_43(xm_n_100),
        .q_reg_44(xm_n_89),
        .q_reg_45(xm_n_88),
        .q_reg_46(xm_n_92),
        .q_reg_47(xm_n_93),
        .q_reg_48(xm_n_39),
        .q_reg_49(xm_n_40),
        .q_reg_5(md_n_28),
        .q_reg_50(xm_n_42),
        .q_reg_51(xm_n_41),
        .q_reg_52(xm_n_78),
        .q_reg_53(xm_n_79),
        .q_reg_54(xm_n_82),
        .q_reg_55(xm_n_85),
        .q_reg_56(xm_n_45),
        .q_reg_57(xm_n_46),
        .q_reg_58(xm_n_48),
        .q_reg_59(xm_n_47),
        .q_reg_6(md_n_29),
        .q_reg_60(xm_n_72),
        .q_reg_61(xm_n_59),
        .q_reg_62(xm_n_57),
        .q_reg_63(xm_n_58),
        .q_reg_64(xm_n_56),
        .q_reg_65(xm_n_76),
        .q_reg_66(xm_n_64),
        .q_reg_67(xm_n_63),
        .q_reg_68(mdunit_n_69),
        .q_reg_69(mdunit_n_68),
        .q_reg_7(md_n_30),
        .q_reg_70(mdunit_n_71),
        .q_reg_71(mdunit_n_34),
        .q_reg_72(mdunit_n_70),
        .q_reg_73(mdunit_n_73),
        .q_reg_74(mdunit_n_74),
        .q_reg_8(md_n_31),
        .q_reg_9(md_n_32));
  multdiv mdunit
       (.am_multdiv(am_multdiv),
        .cpu_clock_BUFG(cpu_clock_BUFG),
        .data_resultRDY(data_resultRDY),
        .exception(exception),
        .\i_/q_i_2 ({\multiplier/alu_out [23:18],\multiplier/alu_out [16:8],\multiplier/alu_out [0]}),
        .multdiv_data(multdiv_data),
        .p_1_out(p_1_out),
        .positive_A(\divider/positive_A ),
        .q(q),
        .q_reg(p_0_in),
        .q_reg_0(mdunit_n_34),
        .q_reg_1(mdunit_n_68),
        .q_reg_10(md_n_56),
        .q_reg_11(md_n_55),
        .q_reg_12(md_n_54),
        .q_reg_13(md_n_53),
        .q_reg_14(md_n_52),
        .q_reg_15(md_n_51),
        .q_reg_16(md_n_50),
        .q_reg_17(md_n_58),
        .q_reg_18(md_n_49),
        .q_reg_19(md_n_48),
        .q_reg_2(mdunit_n_69),
        .q_reg_20(md_n_47),
        .q_reg_21(md_n_46),
        .q_reg_22(md_n_44),
        .q_reg_23(md_n_45),
        .q_reg_24(md_n_40),
        .q_reg_25(md_n_31),
        .q_reg_26(md_n_43),
        .q_reg_27(md_n_42),
        .q_reg_28(md_n_41),
        .q_reg_29(md_n_30),
        .q_reg_3(mdunit_n_70),
        .q_reg_30(md_n_29),
        .q_reg_31(md_n_28),
        .q_reg_32(md_n_32),
        .q_reg_33(md_n_38),
        .q_reg_34(md_n_39),
        .q_reg_35(md_n_36),
        .q_reg_36(md_n_35),
        .q_reg_37(md_n_34),
        .q_reg_38(md_n_37),
        .q_reg_39(dx_n_88),
        .q_reg_4(mdunit_n_71),
        .q_reg_40({multdiv_latch[63],multdiv_latch[49],multdiv_latch[39:38]}),
        .q_reg_41(md_n_27),
        .q_reg_42(md_n_25),
        .q_reg_43(md_n_26),
        .q_reg_5(mdunit_n_73),
        .q_reg_6(mdunit_n_74),
        .q_reg_7(dx_n_87),
        .q_reg_8(\divider/alu_in_A ),
        .q_reg_9(md_n_57));
  register__parameterized6 mw
       (.D(curr_reg1[1:0]),
        .clk0(clk0),
        .ctrl_dx_out({ctrl_dx_out[23:22],ctrl_dx_out[4:2]}),
        .ctrl_pw_out(ctrl_pw_out[37]),
        .ctrl_reset(ctrl_reset),
        .ctrl_xm_out({ctrl_xm_out[128],ctrl_xm_out[29]}),
        .\curr_reg1_reg[0] (mw_n_42),
        .\curr_reg1_reg[1] (mw_n_39),
        .\curr_reg1_reg[2] (pw_n_70),
        .data1(data1),
        .data_writeReg(data_writeReg[1:0]),
        .dx_out_A(dx_out_A),
        .q_reg({ctrl_mw_out[128],ctrl_mw_out[26:22]}),
        .q_reg_0(mw_n_38),
        .q_reg_1(mw_n_44),
        .q_reg_10(mw_n_53),
        .q_reg_11(mw_n_54),
        .q_reg_12(mw_n_55),
        .q_reg_13(mw_n_56),
        .q_reg_14(mw_n_57),
        .q_reg_15(mw_n_58),
        .q_reg_16(mw_n_59),
        .q_reg_17(mw_n_60),
        .q_reg_18(mw_n_61),
        .q_reg_19(mw_n_62),
        .q_reg_2(mw_n_45),
        .q_reg_20(mw_n_63),
        .q_reg_21(mw_n_64),
        .q_reg_22(mw_n_65),
        .q_reg_23(mw_n_66),
        .q_reg_24(mw_n_67),
        .q_reg_25(mw_n_68),
        .q_reg_26(mw_n_69),
        .q_reg_27(mw_n_70),
        .q_reg_28(mw_n_71),
        .q_reg_29(mw_n_72),
        .q_reg_3(mw_n_46),
        .q_reg_30(mw_n_73),
        .q_reg_31(mw_n_74),
        .q_reg_32(mw_n_75),
        .q_reg_33(mw_n_76),
        .q_reg_34(xm_n_7),
        .q_reg_35(xm_n_8),
        .q_reg_36(xm_n_9),
        .q_reg_37(xm_n_10),
        .q_reg_38(xm_n_11),
        .q_reg_39(xm_n_12),
        .q_reg_4(mw_n_47),
        .q_reg_40(xm_n_13),
        .q_reg_41(xm_n_14),
        .q_reg_42(xm_n_15),
        .q_reg_43(xm_n_16),
        .q_reg_44(xm_n_17),
        .q_reg_45(xm_n_18),
        .q_reg_46(xm_n_19),
        .q_reg_47(xm_n_20),
        .q_reg_48(xm_n_21),
        .q_reg_49(xm_n_22),
        .q_reg_5(mw_n_48),
        .q_reg_50(xm_n_23),
        .q_reg_51(xm_n_24),
        .q_reg_52(xm_n_25),
        .q_reg_53(xm_n_26),
        .q_reg_54(xm_n_27),
        .q_reg_55(xm_n_28),
        .q_reg_56(xm_n_29),
        .q_reg_57(xm_n_30),
        .q_reg_58(xm_n_31),
        .q_reg_59(xm_n_32),
        .q_reg_6(mw_n_49),
        .q_reg_60(xm_n_33),
        .q_reg_61(xm_n_34),
        .q_reg_62(xm_n_35),
        .q_reg_63(xm_n_36),
        .q_reg_64(xm_n_37),
        .q_reg_65(xm_n_38),
        .q_reg_66(dx_n_82),
        .q_reg_67(pw_n_71),
        .q_reg_68(pw_n_72),
        .q_reg_7(mw_n_50),
        .q_reg_8(mw_n_51),
        .q_reg_9(mw_n_52),
        .rwe(rwe),
        .xm_rd(xm_rd));
  register__parameterized4 pw
       (.P0(\my_alu/sub/P0 ),
        .c0(\my_alu/sub/add1/c0 ),
        .clk0(clk0),
        .ctrl_dx_out(ctrl_dx_out[4:3]),
        .ctrl_reset(ctrl_reset),
        .data1(data1),
        .data_writeReg(data_writeReg[31:2]),
        .exception(exception),
        .in_en0(in_en0),
        .in_en011_out(in_en011_out),
        .in_en013_out(in_en013_out),
        .in_en015_out(in_en015_out),
        .in_en017_out(in_en017_out),
        .in_en019_out(in_en019_out),
        .in_en01_out(in_en01_out),
        .in_en021_out(in_en021_out),
        .in_en023_out(in_en023_out),
        .in_en025_out(in_en025_out),
        .in_en027_out(in_en027_out),
        .in_en029_out(in_en029_out),
        .in_en031_out(in_en031_out),
        .in_en033_out(in_en033_out),
        .in_en035_out(in_en035_out),
        .in_en037_out(in_en037_out),
        .in_en039_out(in_en039_out),
        .in_en03_out(in_en03_out),
        .in_en041_out(in_en041_out),
        .in_en043_out(in_en043_out),
        .in_en045_out(in_en045_out),
        .in_en047_out(in_en047_out),
        .in_en049_out(in_en049_out),
        .in_en051_out(in_en051_out),
        .in_en053_out(in_en053_out),
        .in_en055_out(in_en055_out),
        .in_en057_out(in_en057_out),
        .in_en059_out(in_en059_out),
        .in_en05_out(in_en05_out),
        .in_en07_out(in_en07_out),
        .in_en09_out(in_en09_out),
        .multdiv_data(multdiv_data),
        .p4(\my_alu/sub/add1/p4 ),
        .p_1_out(p_1_out),
        .p_3_in(p_3_in),
        .q_i_2__22(xm_n_11),
        .q_i_2__22_0(mw_n_48),
        .q_i_2__22_1(dx_n_83),
        .q_i_3__0(xm_n_113),
        .q_i_3__0_0(dx_n_76),
        .q_i_6(xm_n_9),
        .q_i_6_0(xm_n_99),
        .q_i_6_1(mw_n_46),
        .q_i_6_2(dx_n_85),
        .q_i_6_3(xm_n_10),
        .q_i_6_4(mw_n_47),
        .q_i_6_5(dx_n_84),
        .q_i_6_6(xm_n_7),
        .q_i_6_7(mw_n_44),
        .q_i_6_8(dx_n_86),
        .q_reg({ctrl_pw_out[37],ctrl_pw_out[34:32]}),
        .q_reg_0(pw_n_36),
        .q_reg_1(pw_n_39),
        .q_reg_10(pw_n_78),
        .q_reg_11(pw_n_79),
        .q_reg_12(pw_n_80),
        .q_reg_13(pw_n_81),
        .q_reg_14(pw_n_82),
        .q_reg_15(pw_n_83),
        .q_reg_16({multdiv_latch[68:67],multdiv_latch[65:64]}),
        .q_reg_17(md_n_0),
        .q_reg_18(mw_n_76),
        .q_reg_19({ctrl_mw_out[128],ctrl_mw_out[26:22]}),
        .q_reg_2(pw_n_70),
        .q_reg_20(dx_n_80),
        .q_reg_3(pw_n_71),
        .q_reg_4(pw_n_72),
        .q_reg_5(pw_n_73),
        .q_reg_6(pw_n_74),
        .q_reg_7(pw_n_75),
        .q_reg_8(pw_n_76),
        .q_reg_9(pw_n_77),
        .rwe(rwe));
  LUT1 #(
    .INIT(2'h1)) 
    \slow_clock_div[0]_i_2 
       (.I0(slow_clock_div_reg[0]),
        .O(\slow_clock_div[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[0] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[0]_i_1_n_7 ),
        .Q(slow_clock_div_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\slow_clock_div_reg[0]_i_1_n_0 ,\NLW_slow_clock_div_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\slow_clock_div_reg[0]_i_1_n_4 ,\slow_clock_div_reg[0]_i_1_n_5 ,\slow_clock_div_reg[0]_i_1_n_6 ,\slow_clock_div_reg[0]_i_1_n_7 }),
        .S({slow_clock_div_reg[3:1],\slow_clock_div[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[10] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[8]_i_1_n_5 ),
        .Q(slow_clock_div_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[11] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[8]_i_1_n_4 ),
        .Q(slow_clock_div_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[12] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[12]_i_1_n_7 ),
        .Q(slow_clock_div_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[12]_i_1 
       (.CI(\slow_clock_div_reg[8]_i_1_n_0 ),
        .CO({\slow_clock_div_reg[12]_i_1_n_0 ,\NLW_slow_clock_div_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slow_clock_div_reg[12]_i_1_n_4 ,\slow_clock_div_reg[12]_i_1_n_5 ,\slow_clock_div_reg[12]_i_1_n_6 ,\slow_clock_div_reg[12]_i_1_n_7 }),
        .S(slow_clock_div_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[13] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[12]_i_1_n_6 ),
        .Q(slow_clock_div_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[14] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[12]_i_1_n_5 ),
        .Q(slow_clock_div_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[15] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[12]_i_1_n_4 ),
        .Q(slow_clock_div_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[16] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[16]_i_1_n_7 ),
        .Q(slow_clock_div_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[16]_i_1 
       (.CI(\slow_clock_div_reg[12]_i_1_n_0 ),
        .CO({\slow_clock_div_reg[16]_i_1_n_0 ,\NLW_slow_clock_div_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slow_clock_div_reg[16]_i_1_n_4 ,\slow_clock_div_reg[16]_i_1_n_5 ,\slow_clock_div_reg[16]_i_1_n_6 ,\slow_clock_div_reg[16]_i_1_n_7 }),
        .S(slow_clock_div_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[17] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[16]_i_1_n_6 ),
        .Q(slow_clock_div_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[18] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[16]_i_1_n_5 ),
        .Q(slow_clock_div_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[19] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[16]_i_1_n_4 ),
        .Q(slow_clock_div_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[1] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[0]_i_1_n_6 ),
        .Q(slow_clock_div_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[20] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[20]_i_1_n_7 ),
        .Q(slow_clock_div_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[20]_i_1 
       (.CI(\slow_clock_div_reg[16]_i_1_n_0 ),
        .CO({\slow_clock_div_reg[20]_i_1_n_0 ,\NLW_slow_clock_div_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slow_clock_div_reg[20]_i_1_n_4 ,\slow_clock_div_reg[20]_i_1_n_5 ,\slow_clock_div_reg[20]_i_1_n_6 ,\slow_clock_div_reg[20]_i_1_n_7 }),
        .S(slow_clock_div_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[21] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[20]_i_1_n_6 ),
        .Q(slow_clock_div_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[22] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[20]_i_1_n_5 ),
        .Q(slow_clock_div_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[23] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[20]_i_1_n_4 ),
        .Q(slow_clock_div_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[24] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[24]_i_1_n_7 ),
        .Q(slow_clock_div_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \slow_clock_div_reg[24]_i_1 
       (.CI(\slow_clock_div_reg[20]_i_1_n_0 ),
        .CO(\NLW_slow_clock_div_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_slow_clock_div_reg[24]_i_1_O_UNCONNECTED [3:1],\slow_clock_div_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,slow_clock_div_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[2] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[0]_i_1_n_5 ),
        .Q(slow_clock_div_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[3] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[0]_i_1_n_4 ),
        .Q(slow_clock_div_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[4] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[4]_i_1_n_7 ),
        .Q(slow_clock_div_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[4]_i_1 
       (.CI(\slow_clock_div_reg[0]_i_1_n_0 ),
        .CO({\slow_clock_div_reg[4]_i_1_n_0 ,\NLW_slow_clock_div_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slow_clock_div_reg[4]_i_1_n_4 ,\slow_clock_div_reg[4]_i_1_n_5 ,\slow_clock_div_reg[4]_i_1_n_6 ,\slow_clock_div_reg[4]_i_1_n_7 }),
        .S(slow_clock_div_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[5] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[4]_i_1_n_6 ),
        .Q(slow_clock_div_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[6] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[4]_i_1_n_5 ),
        .Q(slow_clock_div_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[7] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[4]_i_1_n_4 ),
        .Q(slow_clock_div_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clock_div_reg[8] 
       (.C(cpu_clock_BUFG),
        .CE(1'b1),
        .D(\slow_clock_div_reg[8]_i_1_n_7 ),
        .Q(slow_clock_div_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \slow_clock_div_reg[8]_i_1 
       (.CI(\slow_clock_div_reg[4]_i_1_n_0 ),
        .CO({\slow_clock_div_reg[8]_i_1_n_0 ,\NLW_slow_clock_div_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
  FDRE #(
    .INIT(1'b0)) 
