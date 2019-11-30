`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 18:48:21
// Design Name: 
// Module Name: pc
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


module pc(
    input              clk,
    input              rst_n,
    input [31:0]       next_pc,
    
    output reg [31:0]  cur_pc
);

always @ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        cur_pc <= 32'b0;
    end
    else begin
        cur_pc <= next_pc;
    end
end
endmodule
