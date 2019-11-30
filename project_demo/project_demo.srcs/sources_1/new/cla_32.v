`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 13:12:50
// Design Name: 
// Module Name: cla_32
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


module cla_32(a,b,cin,s,cout);

    input [31:0] a,b;
    input cin;
    output [31:0] s;
    output cout;
        
    wire [7:0] gg,gp,gc; 
    wire [3:0] ggg,ggp,ggc;
    
    wire gggg,gggp; 
        
    bit_slice b1(.a(a[3:0]),.b(b[3:0]),.cin(gc[0]),.s(s[3:0]),.gp(gp[0]),.gg(gg[0])); 
    bit_slice b2(.a(a[7:4]),.b(b[7:4]),.cin(gc[1]),.s(s[7:4]),.gp(gp[1]),.gg(gg[1])); 
    bit_slice b3(.a(a[11:8]),.b(b[11:8]),.cin(gc[2]),.s(s[11:8]),.gp(gp[2]),.gg(gg[2])); 
    bit_slice b4(.a(a[15:12]),.b(b[15:12]),.cin(gc[3]),.s(s[15:12]),.gp(gp[3]),.gg(gg[3])); 
    bit_slice b5(.a(a[19:16]),.b(b[19:16]),.cin(gc[4]),.s(s[19:16]),.gp(gp[4]),.gg(gg[4])); 
    bit_slice b6(.a(a[23:20]),.b(b[23:20]),.cin(gc[5]),.s(s[23:20]),.gp(gp[5]),.gg(gg[5])); 
    bit_slice b7(.a(a[27:24]),.b(b[27:24]),.cin(gc[6]),.s(s[27:24]),.gp(gp[6]),.gg(gg[6])); 
    bit_slice b8(.a(a[31:28]),.b(b[31:28]),.cin(gc[7]),.s(s[31:28]),.gp(gp[7]),.gg(gg[7])); 

    cla c0(.p(gp[3:0]),.g(gg[3:0]),.cin(ggc[0]),.c(gc[3:0]),.gp(ggp[0]),.gg(ggg[0])); 
    cla c1(.p(gp[7:4]),.g(gg[7:4]),.cin(ggc[1]),.c(gc[7:4]),.gp(ggp[1]),.gg(ggg[1])); 
    assign ggp[3:2] = 2'b11; 
    assign ggg[3:2] = 2'b00;
    
    cla c2(.p(ggp),.g(ggg),.cin(cin),.c(ggc),.gp(gggp),.gg(gggg));
    assign cout = gggg|(gggp&cin); 
    
endmodule
