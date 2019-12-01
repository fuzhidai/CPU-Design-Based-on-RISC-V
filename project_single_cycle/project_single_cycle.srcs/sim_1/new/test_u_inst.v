`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 08:32:48
// Design Name: 
// Module Name: test_u_inst
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


 module test_u_inst;
 
    reg clk;
    reg rst_n;
    
    reg [4:0]        rw;       // 写入地址
    wire [31:0]       bus_w;   // 写入数据
    reg              reg_wr;  // 写使能

    reg [4:0]        ra;      // 读地址
    reg              re1;     // 流水线优化
    wire [31:0] bus_a;          // 读出数据

    reg [4:0]        rb;      // 读地址
    reg              re2;     //流水线优化
    wire [31:0] bus_b;          // 读数据
    
    reg [3:0]          alu_ctr;
    //reg [31:0]         regA_i,regB_i;
    
    //wire [31:0]        res_o;
    wire               zero;
    
    
    reg [31:0]             instr;
    reg [2:0]              ext_op;
    wire [31:0]            imm;
    reg                    alu_bsrc;
    wire [31:0]            bus_bi; // mux from busb and imm.
    
        
    initial begin
        clk = 0;
        rst_n = 0;
        #100;
        rst_n = 1'b1;
        reg_wr = 1'b1;
        
        #100
        re1 = 1'b1;
        re2 = 1'b1;
        
        alu_ctr = 4'b1111;
        alu_bsrc = 1'b1;    // choose imm to alu regB_i.
        ext_op = 3'b001;
        
        rw = 5'b00011;
        ra = 5'b00010;
        rb = 5'b00010;
        
        instr = 32'b1111_1111_1111_0000_0000_0000_0000_0000; // 12 high bit is imm.
        
        
        #100
        ra = 5'b00011;
        rb = 5'b00011;
        
    end
    always #20 clk = ~clk;
    
    reg_file reg_file0(
        .rst_n(rst_n),
        .clk(clk),
        
        .rw(rw),
        .bus_w(bus_w),
        .reg_wr(reg_wr),
        
        .ra(ra),
        .re1(re1),
        .bus_a(bus_a),
        
        .rb(rb),
        .re2(re2),
        .bus_b(bus_b)
        );
        
    alu_top alu_top0(
        .regA_i(bus_a), 
        .regB_i(bus_bi), 
        .alu_ctr(alu_ctr), 
        .res_o(bus_w), 
        .zero(zero)
        );
        
    ie ie0(
        .instr(instr),
        .ext_op(ext_op),
        .imm(imm)
    );
    
    // mux from bus_b and imm. send bus_bi to alu regB_i.
    assign bus_bi = alu_bsrc ? imm : bus_b;

endmodule
