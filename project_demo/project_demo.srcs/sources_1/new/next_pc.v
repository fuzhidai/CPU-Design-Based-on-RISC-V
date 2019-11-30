`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 17:58:12
// Design Name: 
// Module Name: next_pc
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


module next_pc(
    
    input [31:0]    pc,
    input [31:0]    imm,
    input           branch,
    input           zero,
    
    output reg[31:0]    next_pc
    );
    
always @ (*) begin                                
        if(branch & zero)
            next_pc <= pc + imm;
        else
            next_pc <= pc + 4'h4;
end
    
endmodule
