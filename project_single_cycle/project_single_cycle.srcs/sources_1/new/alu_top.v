`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 08:28:26
// Design Name: 
// Module Name: alu_top
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


module alu_top(
    input[31:0] regA_i,
    input[31:0] regB_i,
    input[3:0]  alu_ctr,
    
    output[31:0]    res_o,
    output          zero
    );
    
    //reg [3:0]          alu_ctr;
    //reg [31:0]         regA_i,regB_i;
     
    wire        sub_ctr;
    wire        sig_ctr;
    wire [1:0]  op_ctr;
    
    wire   zf; // 零标志
    wire   sf; // 符号标志
    wire   cf; // 进位/错位标志
    wire   of; // 溢出标志
    
    wire    cout;
    //wire [31:0]    wdata_o; // 多位
    
    alu_ctr alu_ctr0(
        .alu_ctr(alu_ctr), 
        .sub_ctr(sub_ctr), 
        .sig_ctr(sig_ctr), 
        .op_ctr(op_ctr)
        );
        
    alu alu0(
        .regA_i(regA_i), 
        .regB_i(regB_i), 
        .sub_ctr_i(sub_ctr), 
        .sig_ctr_i(sig_ctr), 
        .op_ctr_i(op_ctr), 
        .zf(zf), 
        .sf(sf), 
        .cf(cf), 
        .of(of), 
        .cout(cout), 
        .result_o(res_o)
        );
    
    assign zero = zf;   // 零标志
    
endmodule

