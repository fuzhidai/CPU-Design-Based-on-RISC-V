`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 12:44:06
// Design Name: 
// Module Name: test_cpu_top
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


module test_cpu_top;
    
    reg         clk;
    reg         rst_n;
    
    wire [31:0]    inst;    
    wire [31:0]    cur_pc;
    wire [31:0]    next_pc;
    
    wire [4:0]  rw_addr;
    wire [4:0]  ra_addr;
    wire [4:0]  rb_addr; 
    
    wire [31:0]      imm;
    wire             zero;
    reg              ce;
    
    wire [31:0]      bus_w;   
    wire [31:0]      bus_a;          
    wire [31:0]      bus_b;     
    wire [31:0]      bus_bi;   // alu_bsrc result.
    wire [31:0]      bus_ai;   // alu_asrc result. 
    wire [31:0]      bus_wo;   // mem_to_reg result.      
    wire [31:0]      data_out; // mem data out.

    // 单值控制信号
    wire  branch;       // pc
    wire  jump;         // pc
    wire  mem_to_reg;   // ALU to Reg
    wire  reg_wr;       // Reg
    wire  mem_wr;       // Mem
    wire  alu_asrc;     // Reg to ALU
    
    // 多值控制信号
    wire [1:0] alu_bsrc;   // imm and Reg to ALU
    wire [2:0] ext_op;     // imm
    wire [3:0] alu_ctr;    // ALU
    
    initial begin
        ce = 0;
        clk = 0;
        rst_n = 0;
        
        #50
        ce = 1'b1;
        rst_n = 1'b1;
        
    end
    always #50 clk = ~clk;
    
    // 寄存器
    reg_file reg_file0(
        .rst_n(rst_n),
        .clk(clk),
        
        .rw(rw_addr),
        .bus_w(bus_wo),
        .reg_wr(reg_wr),
        
        .ra(ra_addr),
        .bus_a(bus_a),
        
        .rb(rb_addr),
        .bus_b(bus_b)
        );
        
    // ALU
    alu_top alu_top0(
        .regA_i(bus_ai), 
        .regB_i(bus_bi), 
        .alu_ctr(alu_ctr), 
        .res_o(bus_w), 
        .zero(zero)
        );
    
    // 扩展器
    ie ie0(
        .instr(inst),
        .ext_op(ext_op),
        .imm(imm)
    );
    
    // 存储器
    data_mem data_mem0(
        .rst_n(rst_n),
        .clk(clk),
    
        .addr(bus_w),      // 写入地址
        .data_in(bus_b),   // 写入数据
        .mem_wr(mem_wr),    // 写使能
        
        .data_out(data_out)  // 写出数据
    );
    
    // 下地址逻辑
    next_pc next_pc0(
        .ce(ce),
        .pc(cur_pc),
        .imm(imm),
        .branch(branch),
        .zero(zero),
        .jump(jump),
        .next_pc(next_pc)
        );
    
    // 指令存储器
    inst_rom inst_rom0(
        .ce(ce),
        .addr(cur_pc),
        .inst(inst)
        );
    
    // 程序计数器
    pc_reg pc_reg0(
        .clk(clk),
        .rst_n(rst_n),
        
        .next_pc(next_pc),
        .cur_pc(cur_pc)
        );
    
    // mux from bus_b and imm and 4. send bus_bi to alu regB_i.
    mux_alu_bsrc mux_alu_bsrc0(
        .alu_bsrc(alu_bsrc),
        .bus_b(bus_b),
        .imm(imm),
        
        .bus_bo(bus_bi)
        );
    
    // mus from bus_a and pc to regA_i
    mux_alu_asrc mux_alu_asrc0(
        .alu_asrc(alu_asrc),
        .bus_a(bus_a),
        .pc(cur_pc),
        
        .bus_ao(bus_ai)
        );
        
    // id 译指模块
    id id0(
        .rst_n(rst_n),
        .inst_i(inst),
    
        .reg1_addr_o(ra_addr),
        .reg2_addr_o(rb_addr),
        .wd_o(rw_addr),  
        
        .branch_o(branch),       // pc
        .jump_o(jump),         // pc
        .mem_to_reg_o(mem_to_reg),   // ALU to Reg
        .reg_wr_o(reg_wr),       // Reg
        .mem_wr_o(mem_wr),       // Mem
        .alu_asrc_o(alu_asrc),     // Reg to ALU
        
        // 多值控制信号
        .alu_bsrc_o(alu_bsrc),   // imm and Reg to ALU
        .ext_op_o(ext_op),     // imm
        .alu_ctr_o(alu_ctr)     // ALU
        );
    
    // mux from alu out and mem out.
    assign bus_wo = mem_to_reg ? data_out : bus_w;

endmodule
