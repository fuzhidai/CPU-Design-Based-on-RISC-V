`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 10:45:47
// Design Name: 
// Module Name: id
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


module id(

    input             rst_n,
    input [31:0]      inst_i,
    
    // 输出到regfile
    output reg [4:0]  reg1_addr_o,
    output reg [4:0]  reg2_addr_o,
    output reg [4:0]  wd_o,
    
    // 单值控制信号
    output reg  branch_o,       // pc
    output reg  jump_o,         // pc
    output reg  mem_to_reg_o,   // ALU to Reg
    output reg  reg_wr_o,       // Reg
    output reg  mem_wr_o,       // Mem
    output reg  alu_asrc_o,     // Reg to ALU
    
    // 多值控制信号
    output reg [1:0]  alu_bsrc_o,   // imm and Reg to ALU
    output reg [2:0]  ext_op_o,     // imm
    output reg [3:0]  alu_ctr_o     // ALU

    );
    
    wire [6:0] op  = inst_i[6:0];            //运算类型
    wire [2:0] fn = inst_i[14:12];          //具体运算方式
        
    always @ (*) begin
        if(~rst_n) begin    // 清零重置
            wd_o <= 0;
            reg1_addr_o <= 0;
            reg2_addr_o <= 0;
        end
        else begin      // 译码
            wd_o <= inst_i[11:7];                     // 写寄存器地址
            reg1_addr_o <= inst_i[19:15];             // 读寄存器 A 地址
            reg2_addr_o <= inst_i[24:20];             // 读寄存器 B 地址
            
            // 单值控制信号
            branch_o <= op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];        // B-type
            jump_o <= op[6]&op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];            // J-type
            mem_to_reg_o <= ~op[6]&~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];  // Load
            reg_wr_o <= (~op[6]&op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])       // R-type
                        | (~op[6]&~op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])   // I-type-ALU
                        | (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0])     // lui
                        | (~op[6]&~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0])  // Load
                        | (op[6]&op[5]&~op[4]&op[3]&op[2]&op[1]&op[0]);     // J-type
            mem_wr_o <= ~op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];       // Store
            alu_asrc_o <= op[6]&op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];        // J-type
            
            // 多值控制信号
            alu_bsrc_o[1] <= (~op[6]&~op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])   // I-type-ALU
                        | (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0])       // lui
                        | (~op[6]&~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0])    // Load
                        | (~op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0]);    // Store
            alu_bsrc_o[0] <= op[6]&op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];       // J-type
            
            ext_op_o[2] <= op[6]&op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];       // J-type
            ext_op_o[1] <= (op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0])    // B-type
                        | (~op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0]);  // Store
            ext_op_o[0] <= (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0])     // lui
                        | (op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0]);   // B-type
           
            
            alu_ctr_o[3] <= (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0])    // lui
                        | (op[6]&op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0]);   // B-type
            alu_ctr_o[2] <= ((~op[6]&op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])  // R-type
                        | (~op[6]&~op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0]))  // I-type-ALU
                        & fn[2]
                        | (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0]);    // lui
            alu_ctr_o[1] <= ((~op[6]&op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])  // R-type
                        | (~op[6]&~op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0]))  // I-type-ALU
                        & fn[1]
                        | (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0]);    // lui   
            alu_ctr_o[0] <= ((~op[6]&op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0])  // R-type
                        | (~op[6]&~op[5]&op[4]&~op[3]&~op[2]&op[1]&op[0]))  // I-type-ALU
                        & fn[0]
                        | (~op[6]&op[5]&op[4]&~op[3]&op[2]&op[1]&op[0]);    // lui    
                        
            
        end
    end
    
endmodule
