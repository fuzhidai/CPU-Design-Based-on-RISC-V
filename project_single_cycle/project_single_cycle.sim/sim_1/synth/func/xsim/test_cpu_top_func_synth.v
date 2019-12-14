// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Dec 14 18:25:21 2019
// Host        : DESKTOP-MVTDQLJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/vivado_project/project_single_cycle/project_single_cycle.sim/sim_1/synth/func/xsim/test_cpu_top_func_synth.v
// Design      : alu_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module alu
   (zero_OBUF,
    res_o_OBUF,
    E,
    \regA_i[18] ,
    regA_i_IBUF,
    \alu_ctr[1] ,
    alu_ctr_IBUF,
    regB_i_IBUF,
    \alu_ctr[1]_0 ,
    \alu_ctr[1]_1 ,
    \alu_ctr[1]_2 );
  output zero_OBUF;
  output [31:0]res_o_OBUF;
  input [0:0]E;
  input \regA_i[18] ;
  input [31:0]regA_i_IBUF;
  input \alu_ctr[1] ;
  input [3:0]alu_ctr_IBUF;
  input [31:0]regB_i_IBUF;
  input \alu_ctr[1]_0 ;
  input \alu_ctr[1]_1 ;
  input \alu_ctr[1]_2 ;

  wire [0:0]E;
  wire \alu_ctr[1] ;
  wire \alu_ctr[1]_0 ;
  wire \alu_ctr[1]_1 ;
  wire \alu_ctr[1]_2 ;
  wire [3:0]alu_ctr_IBUF;
  wire cout_reg_i_1_n_4;
  wire cout_reg_n_1;
  wire p_0_in;
  wire \regA_i[18] ;
  wire [31:0]regA_i_IBUF;
  wire [31:0]regB_i_IBUF;
  wire \regB_ii_reg[0]_i_1_n_1 ;
  wire \regB_ii_reg[10]_i_1_n_1 ;
  wire \regB_ii_reg[11]_i_1_n_1 ;
  wire \regB_ii_reg[12]_i_1_n_1 ;
  wire \regB_ii_reg[13]_i_1_n_1 ;
  wire \regB_ii_reg[14]_i_1_n_1 ;
  wire \regB_ii_reg[15]_i_1_n_1 ;
  wire \regB_ii_reg[16]_i_1_n_1 ;
  wire \regB_ii_reg[17]_i_1_n_1 ;
  wire \regB_ii_reg[18]_i_1_n_1 ;
  wire \regB_ii_reg[19]_i_1_n_1 ;
  wire \regB_ii_reg[1]_i_1_n_1 ;
  wire \regB_ii_reg[20]_i_1_n_1 ;
  wire \regB_ii_reg[21]_i_1_n_1 ;
  wire \regB_ii_reg[22]_i_1_n_1 ;
  wire \regB_ii_reg[23]_i_1_n_1 ;
  wire \regB_ii_reg[24]_i_1_n_1 ;
  wire \regB_ii_reg[25]_i_1_n_1 ;
  wire \regB_ii_reg[26]_i_1_n_1 ;
  wire \regB_ii_reg[27]_i_1_n_1 ;
  wire \regB_ii_reg[28]_i_1_n_1 ;
  wire \regB_ii_reg[29]_i_1_n_1 ;
  wire \regB_ii_reg[2]_i_1_n_1 ;
  wire \regB_ii_reg[30]_i_1_n_1 ;
  wire \regB_ii_reg[31]_i_1_n_1 ;
  wire \regB_ii_reg[3]_i_1_n_1 ;
  wire \regB_ii_reg[4]_i_1_n_1 ;
  wire \regB_ii_reg[5]_i_1_n_1 ;
  wire \regB_ii_reg[6]_i_1_n_1 ;
  wire \regB_ii_reg[7]_i_1_n_1 ;
  wire \regB_ii_reg[8]_i_1_n_1 ;
  wire \regB_ii_reg[9]_i_1_n_1 ;
  wire \regB_ii_reg_n_1_[0] ;
  wire \regB_ii_reg_n_1_[10] ;
  wire \regB_ii_reg_n_1_[11] ;
  wire \regB_ii_reg_n_1_[12] ;
  wire \regB_ii_reg_n_1_[13] ;
  wire \regB_ii_reg_n_1_[14] ;
  wire \regB_ii_reg_n_1_[15] ;
  wire \regB_ii_reg_n_1_[16] ;
  wire \regB_ii_reg_n_1_[17] ;
  wire \regB_ii_reg_n_1_[18] ;
  wire \regB_ii_reg_n_1_[19] ;
  wire \regB_ii_reg_n_1_[1] ;
  wire \regB_ii_reg_n_1_[20] ;
  wire \regB_ii_reg_n_1_[21] ;
  wire \regB_ii_reg_n_1_[22] ;
  wire \regB_ii_reg_n_1_[23] ;
  wire \regB_ii_reg_n_1_[24] ;
  wire \regB_ii_reg_n_1_[25] ;
  wire \regB_ii_reg_n_1_[26] ;
  wire \regB_ii_reg_n_1_[27] ;
  wire \regB_ii_reg_n_1_[28] ;
  wire \regB_ii_reg_n_1_[29] ;
  wire \regB_ii_reg_n_1_[2] ;
  wire \regB_ii_reg_n_1_[30] ;
  wire \regB_ii_reg_n_1_[3] ;
  wire \regB_ii_reg_n_1_[4] ;
  wire \regB_ii_reg_n_1_[5] ;
  wire \regB_ii_reg_n_1_[6] ;
  wire \regB_ii_reg_n_1_[7] ;
  wire \regB_ii_reg_n_1_[8] ;
  wire \regB_ii_reg_n_1_[9] ;
  wire [31:0]res_o_OBUF;
  wire \res_o_OBUF[0]_inst_i_2_n_1 ;
  wire \res_o_OBUF[0]_inst_i_4_n_1 ;
  wire [31:0]result;
  wire \result_reg[11]_i_1_n_1 ;
  wire \result_reg[11]_i_1_n_2 ;
  wire \result_reg[11]_i_1_n_3 ;
  wire \result_reg[11]_i_1_n_4 ;
  wire \result_reg[11]_i_1_n_5 ;
  wire \result_reg[11]_i_1_n_6 ;
  wire \result_reg[11]_i_1_n_7 ;
  wire \result_reg[11]_i_1_n_8 ;
  wire \result_reg[11]_i_2_n_1 ;
  wire \result_reg[11]_i_3_n_1 ;
  wire \result_reg[11]_i_4_n_1 ;
  wire \result_reg[11]_i_5_n_1 ;
  wire \result_reg[15]_i_1_n_1 ;
  wire \result_reg[15]_i_1_n_2 ;
  wire \result_reg[15]_i_1_n_3 ;
  wire \result_reg[15]_i_1_n_4 ;
  wire \result_reg[15]_i_1_n_5 ;
  wire \result_reg[15]_i_1_n_6 ;
  wire \result_reg[15]_i_1_n_7 ;
  wire \result_reg[15]_i_1_n_8 ;
  wire \result_reg[15]_i_2_n_1 ;
  wire \result_reg[15]_i_3_n_1 ;
  wire \result_reg[15]_i_4_n_1 ;
  wire \result_reg[15]_i_5_n_1 ;
  wire \result_reg[19]_i_1_n_1 ;
  wire \result_reg[19]_i_1_n_2 ;
  wire \result_reg[19]_i_1_n_3 ;
  wire \result_reg[19]_i_1_n_4 ;
  wire \result_reg[19]_i_1_n_5 ;
  wire \result_reg[19]_i_1_n_6 ;
  wire \result_reg[19]_i_1_n_7 ;
  wire \result_reg[19]_i_1_n_8 ;
  wire \result_reg[19]_i_2_n_1 ;
  wire \result_reg[19]_i_3_n_1 ;
  wire \result_reg[19]_i_4_n_1 ;
  wire \result_reg[19]_i_5_n_1 ;
  wire \result_reg[23]_i_1_n_1 ;
  wire \result_reg[23]_i_1_n_2 ;
  wire \result_reg[23]_i_1_n_3 ;
  wire \result_reg[23]_i_1_n_4 ;
  wire \result_reg[23]_i_1_n_5 ;
  wire \result_reg[23]_i_1_n_6 ;
  wire \result_reg[23]_i_1_n_7 ;
  wire \result_reg[23]_i_1_n_8 ;
  wire \result_reg[23]_i_2_n_1 ;
  wire \result_reg[23]_i_3_n_1 ;
  wire \result_reg[23]_i_4_n_1 ;
  wire \result_reg[23]_i_5_n_1 ;
  wire \result_reg[27]_i_1_n_1 ;
  wire \result_reg[27]_i_1_n_2 ;
  wire \result_reg[27]_i_1_n_3 ;
  wire \result_reg[27]_i_1_n_4 ;
  wire \result_reg[27]_i_1_n_5 ;
  wire \result_reg[27]_i_1_n_6 ;
  wire \result_reg[27]_i_1_n_7 ;
  wire \result_reg[27]_i_1_n_8 ;
  wire \result_reg[27]_i_2_n_1 ;
  wire \result_reg[27]_i_3_n_1 ;
  wire \result_reg[27]_i_4_n_1 ;
  wire \result_reg[27]_i_5_n_1 ;
  wire \result_reg[31]_i_1_n_1 ;
  wire \result_reg[31]_i_1_n_2 ;
  wire \result_reg[31]_i_1_n_3 ;
  wire \result_reg[31]_i_1_n_4 ;
  wire \result_reg[31]_i_1_n_5 ;
  wire \result_reg[31]_i_1_n_6 ;
  wire \result_reg[31]_i_1_n_7 ;
  wire \result_reg[31]_i_1_n_8 ;
  wire \result_reg[31]_i_2_n_1 ;
  wire \result_reg[31]_i_3_n_1 ;
  wire \result_reg[31]_i_4_n_1 ;
  wire \result_reg[31]_i_5_n_1 ;
  wire \result_reg[3]_i_1_n_1 ;
  wire \result_reg[3]_i_1_n_2 ;
  wire \result_reg[3]_i_1_n_3 ;
  wire \result_reg[3]_i_1_n_4 ;
  wire \result_reg[3]_i_1_n_5 ;
  wire \result_reg[3]_i_1_n_6 ;
  wire \result_reg[3]_i_1_n_7 ;
  wire \result_reg[3]_i_1_n_8 ;
  wire \result_reg[3]_i_2_n_1 ;
  wire \result_reg[3]_i_3_n_1 ;
  wire \result_reg[3]_i_4_n_1 ;
  wire \result_reg[3]_i_5_n_1 ;
  wire \result_reg[7]_i_1_n_1 ;
  wire \result_reg[7]_i_1_n_2 ;
  wire \result_reg[7]_i_1_n_3 ;
  wire \result_reg[7]_i_1_n_4 ;
  wire \result_reg[7]_i_1_n_5 ;
  wire \result_reg[7]_i_1_n_6 ;
  wire \result_reg[7]_i_1_n_7 ;
  wire \result_reg[7]_i_1_n_8 ;
  wire \result_reg[7]_i_2_n_1 ;
  wire \result_reg[7]_i_3_n_1 ;
  wire \result_reg[7]_i_4_n_1 ;
  wire \result_reg[7]_i_5_n_1 ;
  wire zero_OBUF;
  wire zero_OBUF_inst_i_2_n_1;
  wire zero_OBUF_inst_i_3_n_1;
  wire zero_OBUF_inst_i_4_n_1;
  wire zero_OBUF_inst_i_5_n_1;
  wire zero_OBUF_inst_i_7_n_1;
  wire zero_OBUF_inst_i_8_n_1;
  wire zero_OBUF_inst_i_9_n_1;
  wire [3:1]NLW_cout_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_cout_reg_i_1_O_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    cout_reg
       (.CLR(1'b0),
        .D(cout_reg_i_1_n_4),
        .G(E),
        .GE(1'b1),
        .Q(cout_reg_n_1));
  CARRY4 cout_reg_i_1
       (.CI(\result_reg[31]_i_1_n_1 ),
        .CO({NLW_cout_reg_i_1_CO_UNCONNECTED[3:1],cout_reg_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cout_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[0] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[0]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[0]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[0]),
        .O(\regB_ii_reg[0]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[10] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[10]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[10] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[10]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[10]),
        .O(\regB_ii_reg[10]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[11] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[11]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[11] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[11]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[11]),
        .O(\regB_ii_reg[11]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[12] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[12]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[12] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[12]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[12]),
        .O(\regB_ii_reg[12]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[13] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[13]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[13] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[13]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[13]),
        .O(\regB_ii_reg[13]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[14] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[14]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[14] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[14]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[14]),
        .O(\regB_ii_reg[14]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[15] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[15]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[15] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[15]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[15]),
        .O(\regB_ii_reg[15]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[16] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[16]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[16] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[16]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[16]),
        .O(\regB_ii_reg[16]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[17] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[17]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[17] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[17]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[17]),
        .O(\regB_ii_reg[17]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[18] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[18]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[18] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[18]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[18]),
        .O(\regB_ii_reg[18]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[19] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[19]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[19] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[19]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[19]),
        .O(\regB_ii_reg[19]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[1] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[1]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[1]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[1]),
        .O(\regB_ii_reg[1]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[20] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[20]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[20] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[20]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[20]),
        .O(\regB_ii_reg[20]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[21] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[21]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[21] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[21]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[21]),
        .O(\regB_ii_reg[21]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[22] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[22]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[22] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[22]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[22]),
        .O(\regB_ii_reg[22]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[23] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[23]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[23] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[23]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[23]),
        .O(\regB_ii_reg[23]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[24] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[24]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[24] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[24]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[24]),
        .O(\regB_ii_reg[24]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[25] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[25]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[25] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[25]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[25]),
        .O(\regB_ii_reg[25]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[26] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[26]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[26] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[26]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[26]),
        .O(\regB_ii_reg[26]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[27] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[27]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[27] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[27]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[27]),
        .O(\regB_ii_reg[27]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[28] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[28]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[28] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[28]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[28]),
        .O(\regB_ii_reg[28]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[29] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[29]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[29] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[29]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[29]),
        .O(\regB_ii_reg[29]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[2] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[2]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[2]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[2]),
        .O(\regB_ii_reg[2]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[30] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[30]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[30] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[30]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[30]),
        .O(\regB_ii_reg[30]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[31] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[31]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[31]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[31]),
        .O(\regB_ii_reg[31]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[3] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[3]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[3]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[3]),
        .O(\regB_ii_reg[3]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[4] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[4]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[4]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[4]),
        .O(\regB_ii_reg[4]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[5] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[5]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[5]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[5]),
        .O(\regB_ii_reg[5]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[6] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[6]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[6]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[6]),
        .O(\regB_ii_reg[6]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[7] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[7]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[7]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[7]),
        .O(\regB_ii_reg[7]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[8] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[8]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[8] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[8]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[8]),
        .O(\regB_ii_reg[8]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regB_ii_reg[9] 
       (.CLR(1'b0),
        .D(\regB_ii_reg[9]_i_1_n_1 ),
        .G(E),
        .GE(1'b1),
        .Q(\regB_ii_reg_n_1_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0BF4)) 
    \regB_ii_reg[9]_i_1 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[3]),
        .I3(regB_i_IBUF[9]),
        .O(\regB_ii_reg[9]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAEF)) 
    \res_o_OBUF[0]_inst_i_1 
       (.I0(\res_o_OBUF[0]_inst_i_2_n_1 ),
        .I1(cout_reg_n_1),
        .I2(alu_ctr_IBUF[0]),
        .I3(alu_ctr_IBUF[3]),
        .I4(\alu_ctr[1] ),
        .I5(\res_o_OBUF[0]_inst_i_4_n_1 ),
        .O(res_o_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[0]_inst_i_2 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[0]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[0]),
        .I4(result[0]),
        .I5(\alu_ctr[1]_2 ),
        .O(\res_o_OBUF[0]_inst_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \res_o_OBUF[0]_inst_i_4 
       (.I0(p_0_in),
        .I1(regA_i_IBUF[31]),
        .O(\res_o_OBUF[0]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[10]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[10]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[10]),
        .I4(result[10]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[11]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[11]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[11]),
        .I4(result[11]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[12]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[12]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[12]),
        .I4(result[12]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[13]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[13]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[13]),
        .I4(result[13]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[14]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[14]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[14]),
        .I4(result[14]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[15]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[15]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[15]),
        .I4(result[15]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[16]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[16]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[16]),
        .I4(result[16]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[17]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[17]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[17]),
        .I4(result[17]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[18]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[18]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[18]),
        .I4(result[18]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[19]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[19]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[19]),
        .I4(result[19]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[1]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[1]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[1]),
        .I4(result[1]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[20]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[20]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[20]),
        .I4(result[20]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[21]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[21]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[21]),
        .I4(result[21]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[22]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[22]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[22]),
        .I4(result[22]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[23]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[23]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[23]),
        .I4(result[23]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[24]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[24]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[24]),
        .I4(result[24]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[25]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[25]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[25]),
        .I4(result[25]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[26]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[26]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[26]),
        .I4(result[26]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[27]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[27]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[27]),
        .I4(result[27]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[28]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[28]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[28]),
        .I4(result[28]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[29]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[29]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[29]),
        .I4(result[29]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[2]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[2]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[2]),
        .I4(result[2]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[30]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[30]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[30]),
        .I4(result[30]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[31]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[31]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[31]),
        .I4(result[31]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[3]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[3]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[3]),
        .I4(result[3]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[4]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[4]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[4]),
        .I4(result[4]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[5]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[5]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[5]),
        .I4(result[5]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[6]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[6]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[6]),
        .I4(result[6]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[7]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[7]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[7]),
        .I4(result[7]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[8]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[8]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[8]),
        .I4(result[8]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \res_o_OBUF[9]_inst_i_1 
       (.I0(\alu_ctr[1]_0 ),
        .I1(regA_i_IBUF[9]),
        .I2(\alu_ctr[1]_1 ),
        .I3(regB_i_IBUF[9]),
        .I4(result[9]),
        .I5(\alu_ctr[1]_2 ),
        .O(res_o_OBUF[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.CLR(1'b0),
        .D(\result_reg[3]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.CLR(1'b0),
        .D(\result_reg[11]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.CLR(1'b0),
        .D(\result_reg[11]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[11]));
  CARRY4 \result_reg[11]_i_1 
       (.CI(\result_reg[7]_i_1_n_1 ),
        .CO({\result_reg[11]_i_1_n_1 ,\result_reg[11]_i_1_n_2 ,\result_reg[11]_i_1_n_3 ,\result_reg[11]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[11:8]),
        .O({\result_reg[11]_i_1_n_5 ,\result_reg[11]_i_1_n_6 ,\result_reg[11]_i_1_n_7 ,\result_reg[11]_i_1_n_8 }),
        .S({\result_reg[11]_i_2_n_1 ,\result_reg[11]_i_3_n_1 ,\result_reg[11]_i_4_n_1 ,\result_reg[11]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[11]_i_2 
       (.I0(regA_i_IBUF[11]),
        .I1(\regB_ii_reg_n_1_[11] ),
        .O(\result_reg[11]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[11]_i_3 
       (.I0(regA_i_IBUF[10]),
        .I1(\regB_ii_reg_n_1_[10] ),
        .O(\result_reg[11]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[11]_i_4 
       (.I0(regA_i_IBUF[9]),
        .I1(\regB_ii_reg_n_1_[9] ),
        .O(\result_reg[11]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[11]_i_5 
       (.I0(regA_i_IBUF[8]),
        .I1(\regB_ii_reg_n_1_[8] ),
        .O(\result_reg[11]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.CLR(1'b0),
        .D(\result_reg[15]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.CLR(1'b0),
        .D(\result_reg[15]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.CLR(1'b0),
        .D(\result_reg[15]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.CLR(1'b0),
        .D(\result_reg[15]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[15]));
  CARRY4 \result_reg[15]_i_1 
       (.CI(\result_reg[11]_i_1_n_1 ),
        .CO({\result_reg[15]_i_1_n_1 ,\result_reg[15]_i_1_n_2 ,\result_reg[15]_i_1_n_3 ,\result_reg[15]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[15:12]),
        .O({\result_reg[15]_i_1_n_5 ,\result_reg[15]_i_1_n_6 ,\result_reg[15]_i_1_n_7 ,\result_reg[15]_i_1_n_8 }),
        .S({\result_reg[15]_i_2_n_1 ,\result_reg[15]_i_3_n_1 ,\result_reg[15]_i_4_n_1 ,\result_reg[15]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[15]_i_2 
       (.I0(regA_i_IBUF[15]),
        .I1(\regB_ii_reg_n_1_[15] ),
        .O(\result_reg[15]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[15]_i_3 
       (.I0(regA_i_IBUF[14]),
        .I1(\regB_ii_reg_n_1_[14] ),
        .O(\result_reg[15]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[15]_i_4 
       (.I0(regA_i_IBUF[13]),
        .I1(\regB_ii_reg_n_1_[13] ),
        .O(\result_reg[15]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[15]_i_5 
       (.I0(regA_i_IBUF[12]),
        .I1(\regB_ii_reg_n_1_[12] ),
        .O(\result_reg[15]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.CLR(1'b0),
        .D(\result_reg[19]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.CLR(1'b0),
        .D(\result_reg[19]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.CLR(1'b0),
        .D(\result_reg[19]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.CLR(1'b0),
        .D(\result_reg[19]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[19]));
  CARRY4 \result_reg[19]_i_1 
       (.CI(\result_reg[15]_i_1_n_1 ),
        .CO({\result_reg[19]_i_1_n_1 ,\result_reg[19]_i_1_n_2 ,\result_reg[19]_i_1_n_3 ,\result_reg[19]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[19:16]),
        .O({\result_reg[19]_i_1_n_5 ,\result_reg[19]_i_1_n_6 ,\result_reg[19]_i_1_n_7 ,\result_reg[19]_i_1_n_8 }),
        .S({\result_reg[19]_i_2_n_1 ,\result_reg[19]_i_3_n_1 ,\result_reg[19]_i_4_n_1 ,\result_reg[19]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[19]_i_2 
       (.I0(regA_i_IBUF[19]),
        .I1(\regB_ii_reg_n_1_[19] ),
        .O(\result_reg[19]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[19]_i_3 
       (.I0(regA_i_IBUF[18]),
        .I1(\regB_ii_reg_n_1_[18] ),
        .O(\result_reg[19]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[19]_i_4 
       (.I0(regA_i_IBUF[17]),
        .I1(\regB_ii_reg_n_1_[17] ),
        .O(\result_reg[19]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[19]_i_5 
       (.I0(regA_i_IBUF[16]),
        .I1(\regB_ii_reg_n_1_[16] ),
        .O(\result_reg[19]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.CLR(1'b0),
        .D(\result_reg[3]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.CLR(1'b0),
        .D(\result_reg[23]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.CLR(1'b0),
        .D(\result_reg[23]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.CLR(1'b0),
        .D(\result_reg[23]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.CLR(1'b0),
        .D(\result_reg[23]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[23]));
  CARRY4 \result_reg[23]_i_1 
       (.CI(\result_reg[19]_i_1_n_1 ),
        .CO({\result_reg[23]_i_1_n_1 ,\result_reg[23]_i_1_n_2 ,\result_reg[23]_i_1_n_3 ,\result_reg[23]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[23:20]),
        .O({\result_reg[23]_i_1_n_5 ,\result_reg[23]_i_1_n_6 ,\result_reg[23]_i_1_n_7 ,\result_reg[23]_i_1_n_8 }),
        .S({\result_reg[23]_i_2_n_1 ,\result_reg[23]_i_3_n_1 ,\result_reg[23]_i_4_n_1 ,\result_reg[23]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[23]_i_2 
       (.I0(regA_i_IBUF[23]),
        .I1(\regB_ii_reg_n_1_[23] ),
        .O(\result_reg[23]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[23]_i_3 
       (.I0(regA_i_IBUF[22]),
        .I1(\regB_ii_reg_n_1_[22] ),
        .O(\result_reg[23]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[23]_i_4 
       (.I0(regA_i_IBUF[21]),
        .I1(\regB_ii_reg_n_1_[21] ),
        .O(\result_reg[23]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[23]_i_5 
       (.I0(regA_i_IBUF[20]),
        .I1(\regB_ii_reg_n_1_[20] ),
        .O(\result_reg[23]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.CLR(1'b0),
        .D(\result_reg[27]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.CLR(1'b0),
        .D(\result_reg[27]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.CLR(1'b0),
        .D(\result_reg[27]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.CLR(1'b0),
        .D(\result_reg[27]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[27]));
  CARRY4 \result_reg[27]_i_1 
       (.CI(\result_reg[23]_i_1_n_1 ),
        .CO({\result_reg[27]_i_1_n_1 ,\result_reg[27]_i_1_n_2 ,\result_reg[27]_i_1_n_3 ,\result_reg[27]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[27:24]),
        .O({\result_reg[27]_i_1_n_5 ,\result_reg[27]_i_1_n_6 ,\result_reg[27]_i_1_n_7 ,\result_reg[27]_i_1_n_8 }),
        .S({\result_reg[27]_i_2_n_1 ,\result_reg[27]_i_3_n_1 ,\result_reg[27]_i_4_n_1 ,\result_reg[27]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[27]_i_2 
       (.I0(regA_i_IBUF[27]),
        .I1(\regB_ii_reg_n_1_[27] ),
        .O(\result_reg[27]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[27]_i_3 
       (.I0(regA_i_IBUF[26]),
        .I1(\regB_ii_reg_n_1_[26] ),
        .O(\result_reg[27]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[27]_i_4 
       (.I0(regA_i_IBUF[25]),
        .I1(\regB_ii_reg_n_1_[25] ),
        .O(\result_reg[27]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[27]_i_5 
       (.I0(regA_i_IBUF[24]),
        .I1(\regB_ii_reg_n_1_[24] ),
        .O(\result_reg[27]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.CLR(1'b0),
        .D(\result_reg[31]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.CLR(1'b0),
        .D(\result_reg[31]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.CLR(1'b0),
        .D(\result_reg[3]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.CLR(1'b0),
        .D(\result_reg[31]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.CLR(1'b0),
        .D(\result_reg[31]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[31]));
  CARRY4 \result_reg[31]_i_1 
       (.CI(\result_reg[27]_i_1_n_1 ),
        .CO({\result_reg[31]_i_1_n_1 ,\result_reg[31]_i_1_n_2 ,\result_reg[31]_i_1_n_3 ,\result_reg[31]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[31:28]),
        .O({\result_reg[31]_i_1_n_5 ,\result_reg[31]_i_1_n_6 ,\result_reg[31]_i_1_n_7 ,\result_reg[31]_i_1_n_8 }),
        .S({\result_reg[31]_i_2_n_1 ,\result_reg[31]_i_3_n_1 ,\result_reg[31]_i_4_n_1 ,\result_reg[31]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[31]_i_2 
       (.I0(p_0_in),
        .I1(regA_i_IBUF[31]),
        .O(\result_reg[31]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[31]_i_3 
       (.I0(regA_i_IBUF[30]),
        .I1(\regB_ii_reg_n_1_[30] ),
        .O(\result_reg[31]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[31]_i_4 
       (.I0(regA_i_IBUF[29]),
        .I1(\regB_ii_reg_n_1_[29] ),
        .O(\result_reg[31]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[31]_i_5 
       (.I0(regA_i_IBUF[28]),
        .I1(\regB_ii_reg_n_1_[28] ),
        .O(\result_reg[31]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.CLR(1'b0),
        .D(\result_reg[3]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[3]));
  CARRY4 \result_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_1_n_1 ,\result_reg[3]_i_1_n_2 ,\result_reg[3]_i_1_n_3 ,\result_reg[3]_i_1_n_4 }),
        .CYINIT(\regB_ii_reg_n_1_[0] ),
        .DI(regA_i_IBUF[3:0]),
        .O({\result_reg[3]_i_1_n_5 ,\result_reg[3]_i_1_n_6 ,\result_reg[3]_i_1_n_7 ,\result_reg[3]_i_1_n_8 }),
        .S({\result_reg[3]_i_2_n_1 ,\result_reg[3]_i_3_n_1 ,\result_reg[3]_i_4_n_1 ,\result_reg[3]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[3]_i_2 
       (.I0(regA_i_IBUF[3]),
        .I1(\regB_ii_reg_n_1_[3] ),
        .O(\result_reg[3]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[3]_i_3 
       (.I0(regA_i_IBUF[2]),
        .I1(\regB_ii_reg_n_1_[2] ),
        .O(\result_reg[3]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[3]_i_4 
       (.I0(regA_i_IBUF[1]),
        .I1(\regB_ii_reg_n_1_[1] ),
        .O(\result_reg[3]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'h559A)) 
    \result_reg[3]_i_5 
       (.I0(regA_i_IBUF[0]),
        .I1(alu_ctr_IBUF[2]),
        .I2(alu_ctr_IBUF[1]),
        .I3(alu_ctr_IBUF[3]),
        .O(\result_reg[3]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.CLR(1'b0),
        .D(\result_reg[7]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.CLR(1'b0),
        .D(\result_reg[7]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.CLR(1'b0),
        .D(\result_reg[7]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(result[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.CLR(1'b0),
        .D(\result_reg[7]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(result[7]));
  CARRY4 \result_reg[7]_i_1 
       (.CI(\result_reg[3]_i_1_n_1 ),
        .CO({\result_reg[7]_i_1_n_1 ,\result_reg[7]_i_1_n_2 ,\result_reg[7]_i_1_n_3 ,\result_reg[7]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI(regA_i_IBUF[7:4]),
        .O({\result_reg[7]_i_1_n_5 ,\result_reg[7]_i_1_n_6 ,\result_reg[7]_i_1_n_7 ,\result_reg[7]_i_1_n_8 }),
        .S({\result_reg[7]_i_2_n_1 ,\result_reg[7]_i_3_n_1 ,\result_reg[7]_i_4_n_1 ,\result_reg[7]_i_5_n_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[7]_i_2 
       (.I0(regA_i_IBUF[7]),
        .I1(\regB_ii_reg_n_1_[7] ),
        .O(\result_reg[7]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[7]_i_3 
       (.I0(regA_i_IBUF[6]),
        .I1(\regB_ii_reg_n_1_[6] ),
        .O(\result_reg[7]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[7]_i_4 
       (.I0(regA_i_IBUF[5]),
        .I1(\regB_ii_reg_n_1_[5] ),
        .O(\result_reg[7]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[7]_i_5 
       (.I0(regA_i_IBUF[4]),
        .I1(\regB_ii_reg_n_1_[4] ),
        .O(\result_reg[7]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.CLR(1'b0),
        .D(\result_reg[11]_i_1_n_8 ),
        .G(E),
        .GE(1'b1),
        .Q(result[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.CLR(1'b0),
        .D(\result_reg[11]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(result[9]));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    zero_OBUF_inst_i_1
       (.I0(zero_OBUF_inst_i_2_n_1),
        .I1(zero_OBUF_inst_i_3_n_1),
        .I2(zero_OBUF_inst_i_4_n_1),
        .I3(zero_OBUF_inst_i_5_n_1),
        .I4(\regA_i[18] ),
        .O(zero_OBUF));
  LUT6 #(
    .INIT(64'h00000007000F0007)) 
    zero_OBUF_inst_i_2
       (.I0(regA_i_IBUF[31]),
        .I1(p_0_in),
        .I2(\alu_ctr[1] ),
        .I3(alu_ctr_IBUF[3]),
        .I4(alu_ctr_IBUF[0]),
        .I5(cout_reg_n_1),
        .O(zero_OBUF_inst_i_2_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_3
       (.I0(result[22]),
        .I1(result[23]),
        .I2(result[20]),
        .I3(result[21]),
        .I4(result[25]),
        .I5(result[24]),
        .O(zero_OBUF_inst_i_3_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_4
       (.I0(result[28]),
        .I1(result[29]),
        .I2(result[26]),
        .I3(result[27]),
        .I4(result[31]),
        .I5(result[30]),
        .O(zero_OBUF_inst_i_4_n_1));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    zero_OBUF_inst_i_5
       (.I0(zero_OBUF_inst_i_7_n_1),
        .I1(zero_OBUF_inst_i_8_n_1),
        .I2(zero_OBUF_inst_i_9_n_1),
        .I3(\alu_ctr[1]_2 ),
        .I4(result[0]),
        .I5(result[1]),
        .O(zero_OBUF_inst_i_5_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_7
       (.I0(result[16]),
        .I1(result[17]),
        .I2(result[14]),
        .I3(result[15]),
        .I4(result[19]),
        .I5(result[18]),
        .O(zero_OBUF_inst_i_7_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_8
       (.I0(result[10]),
        .I1(result[11]),
        .I2(result[8]),
        .I3(result[9]),
        .I4(result[13]),
        .I5(result[12]),
        .O(zero_OBUF_inst_i_8_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_9
       (.I0(result[4]),
        .I1(result[5]),
        .I2(result[2]),
        .I3(result[3]),
        .I4(result[7]),
        .I5(result[6]),
        .O(zero_OBUF_inst_i_9_n_1));
endmodule

(* NotValidForBitStream *)
module alu_top
   (regA_i,
    regB_i,
    alu_ctr,
    res_o,
    zero);
  input [31:0]regA_i;
  input [31:0]regB_i;
  input [3:0]alu_ctr;
  output [31:0]res_o;
  output zero;

  wire [3:0]alu_ctr;
  wire [3:0]alu_ctr_IBUF;
  wire n_0_107_BUFG;
  wire n_0_107_BUFG_inst_n_1;
  wire [31:0]regA_i;
  wire [31:0]regA_i_IBUF;
  wire [31:0]regB_i;
  wire [31:0]regB_i_IBUF;
  wire [31:0]res_o;
  wire [31:0]res_o_OBUF;
  wire \res_o_OBUF[0]_inst_i_3_n_1 ;
  wire \res_o_OBUF[31]_inst_i_2_n_1 ;
  wire \res_o_OBUF[31]_inst_i_3_n_1 ;
  wire \res_o_OBUF[31]_inst_i_4_n_1 ;
  wire zero;
  wire zero_OBUF;
  wire zero_OBUF_inst_i_10_n_1;
  wire zero_OBUF_inst_i_11_n_1;
  wire zero_OBUF_inst_i_12_n_1;
  wire zero_OBUF_inst_i_13_n_1;
  wire zero_OBUF_inst_i_14_n_1;
  wire zero_OBUF_inst_i_15_n_1;
  wire zero_OBUF_inst_i_16_n_1;
  wire zero_OBUF_inst_i_17_n_1;
  wire zero_OBUF_inst_i_18_n_1;
  wire zero_OBUF_inst_i_19_n_1;
  wire zero_OBUF_inst_i_20_n_1;
  wire zero_OBUF_inst_i_21_n_1;
  wire zero_OBUF_inst_i_22_n_1;
  wire zero_OBUF_inst_i_23_n_1;
  wire zero_OBUF_inst_i_24_n_1;
  wire zero_OBUF_inst_i_25_n_1;
  wire zero_OBUF_inst_i_26_n_1;
  wire zero_OBUF_inst_i_27_n_1;
  wire zero_OBUF_inst_i_6_n_1;

  alu alu0
       (.E(n_0_107_BUFG),
        .\alu_ctr[1] (\res_o_OBUF[0]_inst_i_3_n_1 ),
        .\alu_ctr[1]_0 (\res_o_OBUF[31]_inst_i_2_n_1 ),
        .\alu_ctr[1]_1 (\res_o_OBUF[31]_inst_i_3_n_1 ),
        .\alu_ctr[1]_2 (\res_o_OBUF[31]_inst_i_4_n_1 ),
        .alu_ctr_IBUF(alu_ctr_IBUF),
        .\regA_i[18] (zero_OBUF_inst_i_6_n_1),
        .regA_i_IBUF(regA_i_IBUF),
        .regB_i_IBUF(regB_i_IBUF),
        .res_o_OBUF(res_o_OBUF),
        .zero_OBUF(zero_OBUF));
  IBUF \alu_ctr_IBUF[0]_inst 
       (.I(alu_ctr[0]),
        .O(alu_ctr_IBUF[0]));
  IBUF \alu_ctr_IBUF[1]_inst 
       (.I(alu_ctr[1]),
        .O(alu_ctr_IBUF[1]));
  IBUF \alu_ctr_IBUF[2]_inst 
       (.I(alu_ctr[2]),
        .O(alu_ctr_IBUF[2]));
  IBUF \alu_ctr_IBUF[3]_inst 
       (.I(alu_ctr[3]),
        .O(alu_ctr_IBUF[3]));
  BUFG n_0_107_BUFG_inst
       (.I(n_0_107_BUFG_inst_n_1),
        .O(n_0_107_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6FFF)) 
    n_0_107_BUFG_inst_i_1
       (.I0(alu_ctr_IBUF[3]),
        .I1(alu_ctr_IBUF[0]),
        .I2(alu_ctr_IBUF[2]),
        .I3(alu_ctr_IBUF[1]),
        .O(n_0_107_BUFG_inst_n_1));
  IBUF \regA_i_IBUF[0]_inst 
       (.I(regA_i[0]),
        .O(regA_i_IBUF[0]));
  IBUF \regA_i_IBUF[10]_inst 
       (.I(regA_i[10]),
        .O(regA_i_IBUF[10]));
  IBUF \regA_i_IBUF[11]_inst 
       (.I(regA_i[11]),
        .O(regA_i_IBUF[11]));
  IBUF \regA_i_IBUF[12]_inst 
       (.I(regA_i[12]),
        .O(regA_i_IBUF[12]));
  IBUF \regA_i_IBUF[13]_inst 
       (.I(regA_i[13]),
        .O(regA_i_IBUF[13]));
  IBUF \regA_i_IBUF[14]_inst 
       (.I(regA_i[14]),
        .O(regA_i_IBUF[14]));
  IBUF \regA_i_IBUF[15]_inst 
       (.I(regA_i[15]),
        .O(regA_i_IBUF[15]));
  IBUF \regA_i_IBUF[16]_inst 
       (.I(regA_i[16]),
        .O(regA_i_IBUF[16]));
  IBUF \regA_i_IBUF[17]_inst 
       (.I(regA_i[17]),
        .O(regA_i_IBUF[17]));
  IBUF \regA_i_IBUF[18]_inst 
       (.I(regA_i[18]),
        .O(regA_i_IBUF[18]));
  IBUF \regA_i_IBUF[19]_inst 
       (.I(regA_i[19]),
        .O(regA_i_IBUF[19]));
  IBUF \regA_i_IBUF[1]_inst 
       (.I(regA_i[1]),
        .O(regA_i_IBUF[1]));
  IBUF \regA_i_IBUF[20]_inst 
       (.I(regA_i[20]),
        .O(regA_i_IBUF[20]));
  IBUF \regA_i_IBUF[21]_inst 
       (.I(regA_i[21]),
        .O(regA_i_IBUF[21]));
  IBUF \regA_i_IBUF[22]_inst 
       (.I(regA_i[22]),
        .O(regA_i_IBUF[22]));
  IBUF \regA_i_IBUF[23]_inst 
       (.I(regA_i[23]),
        .O(regA_i_IBUF[23]));
  IBUF \regA_i_IBUF[24]_inst 
       (.I(regA_i[24]),
        .O(regA_i_IBUF[24]));
  IBUF \regA_i_IBUF[25]_inst 
       (.I(regA_i[25]),
        .O(regA_i_IBUF[25]));
  IBUF \regA_i_IBUF[26]_inst 
       (.I(regA_i[26]),
        .O(regA_i_IBUF[26]));
  IBUF \regA_i_IBUF[27]_inst 
       (.I(regA_i[27]),
        .O(regA_i_IBUF[27]));
  IBUF \regA_i_IBUF[28]_inst 
       (.I(regA_i[28]),
        .O(regA_i_IBUF[28]));
  IBUF \regA_i_IBUF[29]_inst 
       (.I(regA_i[29]),
        .O(regA_i_IBUF[29]));
  IBUF \regA_i_IBUF[2]_inst 
       (.I(regA_i[2]),
        .O(regA_i_IBUF[2]));
  IBUF \regA_i_IBUF[30]_inst 
       (.I(regA_i[30]),
        .O(regA_i_IBUF[30]));
  IBUF \regA_i_IBUF[31]_inst 
       (.I(regA_i[31]),
        .O(regA_i_IBUF[31]));
  IBUF \regA_i_IBUF[3]_inst 
       (.I(regA_i[3]),
        .O(regA_i_IBUF[3]));
  IBUF \regA_i_IBUF[4]_inst 
       (.I(regA_i[4]),
        .O(regA_i_IBUF[4]));
  IBUF \regA_i_IBUF[5]_inst 
       (.I(regA_i[5]),
        .O(regA_i_IBUF[5]));
  IBUF \regA_i_IBUF[6]_inst 
       (.I(regA_i[6]),
        .O(regA_i_IBUF[6]));
  IBUF \regA_i_IBUF[7]_inst 
       (.I(regA_i[7]),
        .O(regA_i_IBUF[7]));
  IBUF \regA_i_IBUF[8]_inst 
       (.I(regA_i[8]),
        .O(regA_i_IBUF[8]));
  IBUF \regA_i_IBUF[9]_inst 
       (.I(regA_i[9]),
        .O(regA_i_IBUF[9]));
  IBUF \regB_i_IBUF[0]_inst 
       (.I(regB_i[0]),
        .O(regB_i_IBUF[0]));
  IBUF \regB_i_IBUF[10]_inst 
       (.I(regB_i[10]),
        .O(regB_i_IBUF[10]));
  IBUF \regB_i_IBUF[11]_inst 
       (.I(regB_i[11]),
        .O(regB_i_IBUF[11]));
  IBUF \regB_i_IBUF[12]_inst 
       (.I(regB_i[12]),
        .O(regB_i_IBUF[12]));
  IBUF \regB_i_IBUF[13]_inst 
       (.I(regB_i[13]),
        .O(regB_i_IBUF[13]));
  IBUF \regB_i_IBUF[14]_inst 
       (.I(regB_i[14]),
        .O(regB_i_IBUF[14]));
  IBUF \regB_i_IBUF[15]_inst 
       (.I(regB_i[15]),
        .O(regB_i_IBUF[15]));
  IBUF \regB_i_IBUF[16]_inst 
       (.I(regB_i[16]),
        .O(regB_i_IBUF[16]));
  IBUF \regB_i_IBUF[17]_inst 
       (.I(regB_i[17]),
        .O(regB_i_IBUF[17]));
  IBUF \regB_i_IBUF[18]_inst 
       (.I(regB_i[18]),
        .O(regB_i_IBUF[18]));
  IBUF \regB_i_IBUF[19]_inst 
       (.I(regB_i[19]),
        .O(regB_i_IBUF[19]));
  IBUF \regB_i_IBUF[1]_inst 
       (.I(regB_i[1]),
        .O(regB_i_IBUF[1]));
  IBUF \regB_i_IBUF[20]_inst 
       (.I(regB_i[20]),
        .O(regB_i_IBUF[20]));
  IBUF \regB_i_IBUF[21]_inst 
       (.I(regB_i[21]),
        .O(regB_i_IBUF[21]));
  IBUF \regB_i_IBUF[22]_inst 
       (.I(regB_i[22]),
        .O(regB_i_IBUF[22]));
  IBUF \regB_i_IBUF[23]_inst 
       (.I(regB_i[23]),
        .O(regB_i_IBUF[23]));
  IBUF \regB_i_IBUF[24]_inst 
       (.I(regB_i[24]),
        .O(regB_i_IBUF[24]));
  IBUF \regB_i_IBUF[25]_inst 
       (.I(regB_i[25]),
        .O(regB_i_IBUF[25]));
  IBUF \regB_i_IBUF[26]_inst 
       (.I(regB_i[26]),
        .O(regB_i_IBUF[26]));
  IBUF \regB_i_IBUF[27]_inst 
       (.I(regB_i[27]),
        .O(regB_i_IBUF[27]));
  IBUF \regB_i_IBUF[28]_inst 
       (.I(regB_i[28]),
        .O(regB_i_IBUF[28]));
  IBUF \regB_i_IBUF[29]_inst 
       (.I(regB_i[29]),
        .O(regB_i_IBUF[29]));
  IBUF \regB_i_IBUF[2]_inst 
       (.I(regB_i[2]),
        .O(regB_i_IBUF[2]));
  IBUF \regB_i_IBUF[30]_inst 
       (.I(regB_i[30]),
        .O(regB_i_IBUF[30]));
  IBUF \regB_i_IBUF[31]_inst 
       (.I(regB_i[31]),
        .O(regB_i_IBUF[31]));
  IBUF \regB_i_IBUF[3]_inst 
       (.I(regB_i[3]),
        .O(regB_i_IBUF[3]));
  IBUF \regB_i_IBUF[4]_inst 
       (.I(regB_i[4]),
        .O(regB_i_IBUF[4]));
  IBUF \regB_i_IBUF[5]_inst 
       (.I(regB_i[5]),
        .O(regB_i_IBUF[5]));
  IBUF \regB_i_IBUF[6]_inst 
       (.I(regB_i[6]),
        .O(regB_i_IBUF[6]));
  IBUF \regB_i_IBUF[7]_inst 
       (.I(regB_i[7]),
        .O(regB_i_IBUF[7]));
  IBUF \regB_i_IBUF[8]_inst 
       (.I(regB_i[8]),
        .O(regB_i_IBUF[8]));
  IBUF \regB_i_IBUF[9]_inst 
       (.I(regB_i[9]),
        .O(regB_i_IBUF[9]));
  OBUF \res_o_OBUF[0]_inst 
       (.I(res_o_OBUF[0]),
        .O(res_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \res_o_OBUF[0]_inst_i_3 
       (.I0(alu_ctr_IBUF[2]),
        .I1(alu_ctr_IBUF[1]),
        .O(\res_o_OBUF[0]_inst_i_3_n_1 ));
  OBUF \res_o_OBUF[10]_inst 
       (.I(res_o_OBUF[10]),
        .O(res_o[10]));
  OBUF \res_o_OBUF[11]_inst 
       (.I(res_o_OBUF[11]),
        .O(res_o[11]));
  OBUF \res_o_OBUF[12]_inst 
       (.I(res_o_OBUF[12]),
        .O(res_o[12]));
  OBUF \res_o_OBUF[13]_inst 
       (.I(res_o_OBUF[13]),
        .O(res_o[13]));
  OBUF \res_o_OBUF[14]_inst 
       (.I(res_o_OBUF[14]),
        .O(res_o[14]));
  OBUF \res_o_OBUF[15]_inst 
       (.I(res_o_OBUF[15]),
        .O(res_o[15]));
  OBUF \res_o_OBUF[16]_inst 
       (.I(res_o_OBUF[16]),
        .O(res_o[16]));
  OBUF \res_o_OBUF[17]_inst 
       (.I(res_o_OBUF[17]),
        .O(res_o[17]));
  OBUF \res_o_OBUF[18]_inst 
       (.I(res_o_OBUF[18]),
        .O(res_o[18]));
  OBUF \res_o_OBUF[19]_inst 
       (.I(res_o_OBUF[19]),
        .O(res_o[19]));
  OBUF \res_o_OBUF[1]_inst 
       (.I(res_o_OBUF[1]),
        .O(res_o[1]));
  OBUF \res_o_OBUF[20]_inst 
       (.I(res_o_OBUF[20]),
        .O(res_o[20]));
  OBUF \res_o_OBUF[21]_inst 
       (.I(res_o_OBUF[21]),
        .O(res_o[21]));
  OBUF \res_o_OBUF[22]_inst 
       (.I(res_o_OBUF[22]),
        .O(res_o[22]));
  OBUF \res_o_OBUF[23]_inst 
       (.I(res_o_OBUF[23]),
        .O(res_o[23]));
  OBUF \res_o_OBUF[24]_inst 
       (.I(res_o_OBUF[24]),
        .O(res_o[24]));
  OBUF \res_o_OBUF[25]_inst 
       (.I(res_o_OBUF[25]),
        .O(res_o[25]));
  OBUF \res_o_OBUF[26]_inst 
       (.I(res_o_OBUF[26]),
        .O(res_o[26]));
  OBUF \res_o_OBUF[27]_inst 
       (.I(res_o_OBUF[27]),
        .O(res_o[27]));
  OBUF \res_o_OBUF[28]_inst 
       (.I(res_o_OBUF[28]),
        .O(res_o[28]));
  OBUF \res_o_OBUF[29]_inst 
       (.I(res_o_OBUF[29]),
        .O(res_o[29]));
  OBUF \res_o_OBUF[2]_inst 
       (.I(res_o_OBUF[2]),
        .O(res_o[2]));
  OBUF \res_o_OBUF[30]_inst 
       (.I(res_o_OBUF[30]),
        .O(res_o[30]));
  OBUF \res_o_OBUF[31]_inst 
       (.I(res_o_OBUF[31]),
        .O(res_o[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \res_o_OBUF[31]_inst_i_2 
       (.I0(alu_ctr_IBUF[3]),
        .I1(alu_ctr_IBUF[0]),
        .I2(alu_ctr_IBUF[2]),
        .I3(alu_ctr_IBUF[1]),
        .O(\res_o_OBUF[31]_inst_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8400)) 
    \res_o_OBUF[31]_inst_i_3 
       (.I0(alu_ctr_IBUF[3]),
        .I1(alu_ctr_IBUF[2]),
        .I2(alu_ctr_IBUF[0]),
        .I3(alu_ctr_IBUF[1]),
        .O(\res_o_OBUF[31]_inst_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AFF)) 
    \res_o_OBUF[31]_inst_i_4 
       (.I0(alu_ctr_IBUF[3]),
        .I1(alu_ctr_IBUF[0]),
        .I2(alu_ctr_IBUF[2]),
        .I3(alu_ctr_IBUF[1]),
        .O(\res_o_OBUF[31]_inst_i_4_n_1 ));
  OBUF \res_o_OBUF[3]_inst 
       (.I(res_o_OBUF[3]),
        .O(res_o[3]));
  OBUF \res_o_OBUF[4]_inst 
       (.I(res_o_OBUF[4]),
        .O(res_o[4]));
  OBUF \res_o_OBUF[5]_inst 
       (.I(res_o_OBUF[5]),
        .O(res_o[5]));
  OBUF \res_o_OBUF[6]_inst 
       (.I(res_o_OBUF[6]),
        .O(res_o[6]));
  OBUF \res_o_OBUF[7]_inst 
       (.I(res_o_OBUF[7]),
        .O(res_o[7]));
  OBUF \res_o_OBUF[8]_inst 
       (.I(res_o_OBUF[8]),
        .O(res_o[8]));
  OBUF \res_o_OBUF[9]_inst 
       (.I(res_o_OBUF[9]),
        .O(res_o[9]));
  OBUF zero_OBUF_inst
       (.I(zero_OBUF),
        .O(zero));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    zero_OBUF_inst_i_10
       (.I0(regB_i_IBUF[3]),
        .I1(regB_i_IBUF[4]),
        .I2(regB_i_IBUF[2]),
        .I3(regB_i_IBUF[1]),
        .I4(regB_i_IBUF[0]),
        .I5(zero_OBUF_inst_i_16_n_1),
        .O(zero_OBUF_inst_i_10_n_1));
  LUT5 #(
    .INIT(32'h01000000)) 
    zero_OBUF_inst_i_11
       (.I0(regB_i_IBUF[31]),
        .I1(regB_i_IBUF[30]),
        .I2(regB_i_IBUF[29]),
        .I3(zero_OBUF_inst_i_17_n_1),
        .I4(zero_OBUF_inst_i_18_n_1),
        .O(zero_OBUF_inst_i_11_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    zero_OBUF_inst_i_12
       (.I0(zero_OBUF_inst_i_19_n_1),
        .I1(zero_OBUF_inst_i_20_n_1),
        .O(zero_OBUF_inst_i_12_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    zero_OBUF_inst_i_13
       (.I0(zero_OBUF_inst_i_21_n_1),
        .I1(zero_OBUF_inst_i_18_n_1),
        .O(zero_OBUF_inst_i_13_n_1));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    zero_OBUF_inst_i_14
       (.I0(zero_OBUF_inst_i_22_n_1),
        .I1(alu_ctr_IBUF[3]),
        .I2(alu_ctr_IBUF[0]),
        .I3(regB_i_IBUF[4]),
        .I4(regB_i_IBUF[3]),
        .I5(zero_OBUF_inst_i_16_n_1),
        .O(zero_OBUF_inst_i_14_n_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    zero_OBUF_inst_i_15
       (.I0(zero_OBUF_inst_i_23_n_1),
        .I1(zero_OBUF_inst_i_24_n_1),
        .I2(zero_OBUF_inst_i_25_n_1),
        .I3(zero_OBUF_inst_i_26_n_1),
        .I4(zero_OBUF_inst_i_27_n_1),
        .O(zero_OBUF_inst_i_15_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_16
       (.I0(regB_i_IBUF[7]),
        .I1(regB_i_IBUF[8]),
        .I2(regB_i_IBUF[5]),
        .I3(regB_i_IBUF[6]),
        .I4(regB_i_IBUF[10]),
        .I5(regB_i_IBUF[9]),
        .O(zero_OBUF_inst_i_16_n_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    zero_OBUF_inst_i_17
       (.I0(alu_ctr_IBUF[3]),
        .I1(alu_ctr_IBUF[1]),
        .I2(alu_ctr_IBUF[2]),
        .I3(alu_ctr_IBUF[0]),
        .O(zero_OBUF_inst_i_17_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_18
       (.I0(regB_i_IBUF[25]),
        .I1(regB_i_IBUF[26]),
        .I2(regB_i_IBUF[23]),
        .I3(regB_i_IBUF[24]),
        .I4(regB_i_IBUF[28]),
        .I5(regB_i_IBUF[27]),
        .O(zero_OBUF_inst_i_18_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_19
       (.I0(regB_i_IBUF[19]),
        .I1(regB_i_IBUF[20]),
        .I2(regB_i_IBUF[17]),
        .I3(regB_i_IBUF[18]),
        .I4(regB_i_IBUF[22]),
        .I5(regB_i_IBUF[21]),
        .O(zero_OBUF_inst_i_19_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_20
       (.I0(regB_i_IBUF[13]),
        .I1(regB_i_IBUF[14]),
        .I2(regB_i_IBUF[11]),
        .I3(regB_i_IBUF[12]),
        .I4(regB_i_IBUF[16]),
        .I5(regB_i_IBUF[15]),
        .O(zero_OBUF_inst_i_20_n_1));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    zero_OBUF_inst_i_21
       (.I0(regB_i_IBUF[31]),
        .I1(regA_i_IBUF[0]),
        .I2(regB_i_IBUF[29]),
        .I3(regB_i_IBUF[30]),
        .I4(regA_i_IBUF[1]),
        .I5(alu_ctr_IBUF[1]),
        .O(zero_OBUF_inst_i_21_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    zero_OBUF_inst_i_22
       (.I0(regB_i_IBUF[2]),
        .I1(regB_i_IBUF[1]),
        .I2(regB_i_IBUF[0]),
        .O(zero_OBUF_inst_i_22_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_23
       (.I0(regA_i_IBUF[28]),
        .I1(regA_i_IBUF[29]),
        .I2(regA_i_IBUF[26]),
        .I3(regA_i_IBUF[27]),
        .I4(regA_i_IBUF[31]),
        .I5(regA_i_IBUF[30]),
        .O(zero_OBUF_inst_i_23_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_24
       (.I0(regA_i_IBUF[22]),
        .I1(regA_i_IBUF[23]),
        .I2(regA_i_IBUF[20]),
        .I3(regA_i_IBUF[21]),
        .I4(regA_i_IBUF[25]),
        .I5(regA_i_IBUF[24]),
        .O(zero_OBUF_inst_i_24_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_25
       (.I0(regA_i_IBUF[10]),
        .I1(regA_i_IBUF[11]),
        .I2(regA_i_IBUF[8]),
        .I3(regA_i_IBUF[9]),
        .I4(regA_i_IBUF[13]),
        .I5(regA_i_IBUF[12]),
        .O(zero_OBUF_inst_i_25_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_26
       (.I0(regA_i_IBUF[4]),
        .I1(regA_i_IBUF[5]),
        .I2(regA_i_IBUF[2]),
        .I3(regA_i_IBUF[3]),
        .I4(regA_i_IBUF[7]),
        .I5(regA_i_IBUF[6]),
        .O(zero_OBUF_inst_i_26_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_OBUF_inst_i_27
       (.I0(regA_i_IBUF[16]),
        .I1(regA_i_IBUF[17]),
        .I2(regA_i_IBUF[14]),
        .I3(regA_i_IBUF[15]),
        .I4(regA_i_IBUF[19]),
        .I5(regA_i_IBUF[18]),
        .O(zero_OBUF_inst_i_27_n_1));
  LUT6 #(
    .INIT(64'hF080808080808080)) 
    zero_OBUF_inst_i_6
       (.I0(zero_OBUF_inst_i_10_n_1),
        .I1(zero_OBUF_inst_i_11_n_1),
        .I2(zero_OBUF_inst_i_12_n_1),
        .I3(zero_OBUF_inst_i_13_n_1),
        .I4(zero_OBUF_inst_i_14_n_1),
        .I5(zero_OBUF_inst_i_15_n_1),
        .O(zero_OBUF_inst_i_6_n_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
