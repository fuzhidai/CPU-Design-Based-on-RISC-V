`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 13:00:04
// Design Name: 
// Module Name: cla
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


module cla(p,g,cin,c,gp,gg);

    input [3:0] p,g;
    input cin;
    output [3:0] c;
    output gp,gg;
    function [99:0] do_cla;
        input [3:0] p,g;
        input cin;
        begin:label
            integer i; 
            reg gp,gg;
            reg [3:0] c; 
            gp = p[0];
            gg = g[0];
            c[0] = cin;
            for(i = 1;i < 4;i = i + 1) begin
                gp = gp&p[i];
                gg = (gg&p[i])|g[i]; 
                c[i] = (c[i-1]&p[i-1])|g[i-1];
            end
            do_cla = {c,gp,gg}; 
        end
    endfunction
    assign {c,gp,gg} = do_cla(p,g,cin);
    
endmodule
