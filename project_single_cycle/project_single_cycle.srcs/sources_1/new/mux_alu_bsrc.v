`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 09:27:29
// Design Name: 
// Module Name: mux_alu_bsrc
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


module mux_alu_bsrc(
    input [1:0]     alu_bsrc,
    input [31:0]    bus_b,
    input [31:0]    imm,
    
    output reg[31:0]    bus_bo
    );
    
    always @ (*) begin 
    
        case(alu_bsrc)
            2'b00 : begin   // choose bus_b
                bus_bo <= bus_b;
            end
            
            2'b01 : begin   // choose 4
                bus_bo <= 4'h4;
            end
            
            2'b10 : begin   // choose imm
                bus_bo <= imm;
            end
            
        endcase
        
    end
    
endmodule
