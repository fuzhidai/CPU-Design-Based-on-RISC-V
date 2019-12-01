`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 09:33:01
// Design Name: 
// Module Name: mux_alu_asrc
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


module mux_alu_asrc(
    input           alu_asrc,
    input [31:0]    bus_a,
    input [31:0]    pc,

    output reg[31:0]    bus_ao
    );
    
    always @ (*) begin 
    
        case(alu_asrc)
            1'b0 : begin   // choose bus_a
                bus_ao <= bus_a;
            end
            
            1'b1 : begin   // choose pc.
                bus_ao <= pc;
            end
            
        endcase
        
    end
    
endmodule
