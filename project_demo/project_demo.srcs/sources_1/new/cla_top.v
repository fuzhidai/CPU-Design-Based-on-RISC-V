`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 14:21:27
// Design Name: 
// Module Name: cla_top
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


module cla_top(a,b,cin,s,cout, zf,of,sf,cf);
    input [31:0] a,b;
    input cin;
    output reg [31:0] s;
    output cout;
     
    output reg zf, of, sf, cf;

    reg [31:0] res;

    cla_32 cla(.a(a), .b(b), .cin(cin), .s(res), .cout(cout)); 

    always @ (*) begin
        
        // zf
        if (res == 32'b0000_0000_0000_0000_0000_0000_0000_0000)
            zf <= 1'b1;
        else
            zf <= 1'b1;
            
        // sf
        sf <= res[31];
        
        // cf
        if (cin == 1'b0)
            cf <= cout;
        else
            cf <= ~cout;
            
        // of
        of <= cout;
        
        s <= res;
        
    end
    
endmodule
