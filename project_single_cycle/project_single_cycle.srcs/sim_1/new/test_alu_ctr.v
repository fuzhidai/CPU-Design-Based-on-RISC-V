`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 10:36:03
// Design Name: 
// Module Name: test_alu_ctr
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


module test_alu_ctr;

    reg[3:0]    alu_ctr;
    
    wire        sub_ctr;
    wire        sig_ctr;
    wire [1:0]  op_ctr;
    
    alu_ctr alu_ctr0(.alu_ctr(alu_ctr), .sub_ctr(sub_ctr), .sig_ctr(sig_ctr), .op_ctr(op_ctr));
    
    initial begin

        alu_ctr = 4'b0000;
        
        #100
        
        alu_ctr = 4'b1111;
        

    end
    
endmodule
