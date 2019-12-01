`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 08:31:55
// Design Name: 
// Module Name: data_mem
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


module data_mem(
    input              rst_n,
    input              clk,

    input [31:0]       addr,      // 写入地址
    input [31:0]       data_in,   // 写入数据
    input              mem_wr,    // 写使能
    
    output reg [31:0] data_out  // 写出数据
);

reg [31:0] mem_r [0:255];

initial begin
//mem_r[5'b00001] = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
//mem_r[5'b00010] = 32'b0000_0000_0000_0000_0000_0000_0000_1111;
end


always @ (posedge clk or negedge rst_n) begin      //写入存储器
    if(rst_n) begin
        if((addr != 32'b0) && (mem_wr))
            mem_r[addr] <= data_in;
    end
end

always @ (*) begin                                 //存储器读出数据
    if(~rst_n || addr == 32'b0)
        data_out <= 32'b0;
    else
        data_out <= mem_r[addr];
end

endmodule
