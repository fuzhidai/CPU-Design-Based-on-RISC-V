`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 15:52:24
// Design Name: 
// Module Name: data_rom
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


module data_rom(
    input              mem_wr,
    input [31:0]       addr,
    output reg [31:0]  data
    );
    
reg [31:0] data_mem [0:255];

initial $readmemh ("data_rom.data", data_mem);

always @ (*) begin
    if(~mem_wr)
        data <= 0;
    else
        data <= data_mem[addr[9:2]];
end    

endmodule
