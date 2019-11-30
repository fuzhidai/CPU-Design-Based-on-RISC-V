`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/30 15:41:27
// Design Name: 
// Module Name: test_ls_ins
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


module test_ls_ins;

 
    reg clk;
    reg rst_n;
    
    // 寄存器
    reg [4:0]        rw;       // 写入地址
    wire [31:0]      bus_w;   // 写入数据
    reg              reg_wr;  // 写使能

    reg [4:0]        ra;      // 读地址
    reg              re1;     // 流水线优化
    wire [31:0]      bus_a;          // 读出数据

    reg [4:0]        rb;      // 读地址
    reg              re2;     //流水线优化
    wire [31:0]      bus_b;          // 读数据
    
    // ALU
    reg [3:0]          alu_ctr;
    //reg [31:0]         regA_i,regB_i;
    
    //wire [31:0]        res_o;
    wire               zero;
    
    
    // 扩展器
    reg [31:0]             instr;
    reg [2:0]              ext_op;
    wire [31:0]            imm;
    
    reg                    alu_bsrc; // mux from busb and imm.
    wire [31:0]            bus_bi;  // alu_bsrc result.
    
    // 存储器
    //reg [31:0]       addr;      // 写入地址
    //reg [31:0]       data_in;   // 写入数据
    reg              mem_wr;    // 写使能
    
    wire [31:0]      data_out;  // 读出数据
    
    reg             mem_to_reg; // mux from alu out and mem out.
    wire [31:0]     bus_wo;     // mem_to_reg result.
    
        
    initial begin
        clk = 0;
        rst_n = 0;
        #100;
        rst_n = 1'b1;
        reg_wr = 1'b1;  // 寄存器写使能
        mem_wr = 1'b1;  // 存储器写使能
        re1 = 1'b1;
        re2 = 1'b1;
        
        #100    // sw store.

        alu_ctr = 4'b0000;  // add 
        alu_bsrc = 1'b1;    // imm12 立即数扩展
        ext_op = 3'b010;    // immS
        
        ra = 5'b00001;      // Rs1 R[Rs1]
        rb = 5'b00001;      // Rs2 R[Rs2]
        
        instr = 32'b0000_0000_0000_0000_0000_0000_1000_0000; // {{20{instr[31]}}, instr[31:25], instr[11:7]}
        mem_to_reg = 1'b1;
        
        
        #100    // lw load
        alu_ctr = 4'b0000;  // add 
        alu_bsrc = 1'b1;    // imm12 立即数扩展
        ext_op = 3'b000;    // immI
        
        ra = 5'b00001;      // Rs1 R[Rs1]
        instr = 32'b0000_0000_0001_0000_0000_0000_0000_0000; // {{20{instr[31]}} , instr[31:20]}
        mem_to_reg = 1'b1;
        rw = 5'b00011;
        
        #100    // 验证是否正常存储至 Reg 
        ra = 5'b00011;
        
    end
    always #20 clk = ~clk;
    
    // 寄存器
    reg_file reg_file0(
        .rst_n(rst_n),
        .clk(clk),
        
        .rw(rw),
        .bus_w(bus_wo),
        .reg_wr(reg_wr),
        
        .ra(ra),
        .re1(re1),
        .bus_a(bus_a),
        
        .rb(rb),
        .re2(re2),
        .bus_b(bus_b)
        );
        
    // ALU
    alu_top alu_top0(
        .regA_i(bus_a), 
        .regB_i(bus_bi), 
        .alu_ctr(alu_ctr), 
        .res_o(bus_w), 
        .zero(zero)
        );
    
    // 扩展器
    ie ie0(
        .instr(instr),
        .ext_op(ext_op),
        .imm(imm)
    );
    
    // 存储器
    mem_file mem_file0(
        .rst_n(rst_n),
        .clk(clk),
    
        .addr(bus_w),      // 写入地址
        .data_in(bus_b),   // 写入数据
        .mem_wr(mem_wr),    // 写使能
        
        .data_out(data_out)  // 写出数据
    );
    
    // mux from bus_b and imm. send bus_bi to alu regB_i.
    assign bus_bi = alu_bsrc ? imm : bus_b;
    
    // mux from alu out and mem out.
    assign bus_wo = mem_to_reg ? data_out : bus_w;

endmodule