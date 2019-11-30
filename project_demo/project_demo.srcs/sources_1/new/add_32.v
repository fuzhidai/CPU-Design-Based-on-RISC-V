`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 10:22:03
// Design Name: 
// Module Name: add_32
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


module add_32(sum, cout, a, b, cin);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    
    wire [3:0] G,P;
    wire [3:0] C,sum;
    
    assign G[0] = a[0]&b[0];
    assign P[0] = a[0]|b[0];
    assign C[0] = cin;
    assign sum[0] = G[0]^P[0]^C[0];
    
    assign G[1] = a[1]&b[1];
    assign P[1] = a[1]|b[1];
    assign C[1] = G[0]|(P[0]&cin);
    assign sum[1] = G[1]^P[1]^C[1];    
    
    assign G[2] = a[2]&b[2];
    assign P[2] = a[2]|b[2];
    assign C[2] = G[1]|(P[1]&C[1]);
    assign sum[2] = G[2]^P[2]^C[2];    
    
    assign G[3] = a[3]&b[3];
    assign P[3] = a[3]|b[3];
    assign C[3] = G[2]|(P[2]&C[2]);
    assign sum[3] = G[3]^P[3]^C[3];    
    
    assign cout = G[3]|(P[3]&C[3]);
    
endmodule
