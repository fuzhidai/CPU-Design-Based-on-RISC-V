`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 11:21:58
// Design Name: 
// Module Name: test_add32
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


module test_add32(

    );
    
    reg[3:0] a,b;
    reg cin;
    
    wire[3:0] sum;
    wire cout;
    
    add_32 add_320(.sum(sum), .cout(cout), .a(a), .b(b), .cin(cin));
    
    initial begin
        a = 4'b0001;
        b = 4'b0011;
        cin = 1'b0;
        
    
    
    end
    
endmodule
