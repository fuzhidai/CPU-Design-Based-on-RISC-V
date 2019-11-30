`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 14:10:17
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input              rst_n,
    input              clk,

    input [4:0]        rw,      // 写入地址
    input [31:0]       bus_w,   // 写入数据
    input              reg_wr,  // 写使能

    input [4:0]        ra,      // 读地址
    input              re1,     // 流水线优化
    output reg [31:0] bus_a,   // 读出数据

    input [4:0]        rb,      // 读地址
    input              re2,     //流水线优化
    output reg [31:0] bus_b    // 读数据
);

    reg [31:0] mem_r [0:31];
    
initial begin
    mem_r[5'b00001] = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
    mem_r[5'b00010] = 32'b0000_0000_0000_0000_0000_0000_0000_1111;
end

    
always @ (posedge clk or negedge rst_n) begin      //写入寄存器
    if(rst_n) begin
        if((rw != 5'b0) && (reg_wr))
            mem_r[rw] <= bus_w;
    end
end

always @ (*) begin                                 //从端口1读出数据
    if(~rst_n)
        bus_a <= 32'b0;
    else if(ra == 5'b0)
        bus_a <= 32'b0;
//    else if((ra == rw) && re1 && reg_wr)        //如果写入的地址与要读出的地址相同
//        bus_a <= bus_w;                           //则直接将写入数据读出
    else if(re1)
        bus_a <= mem_r[ra];
    else
        bus_a <= 32'b0;
    end

always @ (*) begin                                 //从端口2读出数据
    if(~rst_n)
        bus_b <= 32'b0;
    else if(rb == 5'b0)
        bus_b <= 32'b0;
//    else if((rb == rw) && re2 && reg_wr)
//        bus_b <= bus_w;
    else if(re2)
        bus_b <= mem_r[rb];
    else
        bus_b <= 32'b0;
    end

endmodule
