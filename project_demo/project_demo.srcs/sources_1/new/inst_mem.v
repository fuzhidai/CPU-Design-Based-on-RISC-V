`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 20:24:33
// Design Name: 
// Module Name: inst_mem
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


module inst_mem(
    input              ce,
    input [31:0]       addr,
    output reg [31:0]  inst
);

reg [31:0] inst_memory [0:255];

//initial $readmemh ("inst_rom.data", inst_memory);

always @ (*) begin
    if(~ce)
        inst <= 0;  
    else
        inst <= inst_memory[addr];
end

endmodule
