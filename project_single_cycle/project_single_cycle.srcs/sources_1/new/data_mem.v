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

// 初始化存储器数据 这里必须使用绝对路径，不然读不到值
initial $readmemh ("D:/vivado_project/project_single_cycle/project_single_cycle.srcs/sources_1/new/data_rom.data", mem_r);

always @ (posedge clk or negedge rst_n) begin      //写入存储器
    if(rst_n) begin
        if((addr != 32'b0) && (mem_wr))
        // 每一条 32 位数据地址都要占用 4 个地址位，指令地址 都要为 4 的倍数，可以将指令地址左移两位来保证地址的正确性
            mem_r[addr[9:2]] <= data_in;
    end
end

always @ (*) begin                                 //存储器读出数据
    if(~rst_n || addr == 32'b0)
        data_out <= 32'b0;
    else
        // 每一条 32 位数据地址都要占用 4 个地址位，指令地址 都要为 4 的倍数，可以将指令地址左移两位来保证地址的正确性
        data_out <= mem_r[addr[9:2]];
end

endmodule
