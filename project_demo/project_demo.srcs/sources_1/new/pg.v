`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 12:48:55
// Design Name: 
// Module Name: pg
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

module pg(a,b,p,g); 
    input [3:0] a,b;
    output [3:0] p,g;
    assign p = a|b;
    assign g=a&b; 
endmodule