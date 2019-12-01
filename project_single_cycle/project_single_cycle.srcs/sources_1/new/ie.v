`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 08:40:01
// Design Name: 
// Module Name: ie
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


module ie(
    input [31:0]             instr,
    input [2:0]              ext_op,
    output reg [31:0]        imm
    ); 

always @ (*) begin

    case(ext_op)
        3'b000: begin // ori lw immI
            imm <= {{20{instr[31]}} , instr[31:20]};
        end
        3'b001: begin // lui immU 
            imm <= {instr[31:12], 12'b0};
        end
        3'b010: begin // sw immS
            imm <= {{20{instr[31]}}, instr[31:25], instr[11:7]};
        end
        3'b011: begin // beq immB
            imm <= {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
        end
        3'b100: begin // jal immJ
            imm <= {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
        end
        default: begin
        end
    endcase
    
end

endmodule
