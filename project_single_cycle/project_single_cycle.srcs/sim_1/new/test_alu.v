`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 10:35:13
// Design Name: 
// Module Name: test_alu
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


module test_alu;
    reg [3:0]          alu_ctr;
    reg [31:0]         regA_i,regB_i;
     
    wire        sub_ctr;
    wire        sig_ctr;
    wire [1:0]  op_ctr;
    
    wire   zf; // 零标志
    wire   sf; // 符号标志
    wire   cf; // 进位/错位标志
    wire   of; // 溢出标志
    
    wire    cout;
    wire [31:0]    wdata_o; // 多位
    
    alu_ctr alu_ctr0(.alu_ctr(alu_ctr), .sub_ctr(sub_ctr), .sig_ctr(sig_ctr), .op_ctr(op_ctr));
    alu alu0(.regA_i(regA_i), .regB_i(regB_i), .sub_ctr_i(sub_ctr), .sig_ctr_i(sig_ctr), .op_ctr_i(op_ctr), 
                .zf(zf), .sf(sf), .cf(cf), .of(of), .cout(cout), .result_o(wdata_o));
    
    initial begin
        
        alu_ctr = 4'b0000; 
        regA_i = 32'b0000_0000_0000_0000_0000_0000_1111_0000;
        regB_i = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
 
        #100    
        alu_ctr = 4'b0000;        
        regA_i = 32'b0111_1111_1111_1111_1111_1111_1111_1111; 
        regB_i = 32'b0111_1111_1111_1111_1111_1111_1111_1111; 

    end
    
endmodule
