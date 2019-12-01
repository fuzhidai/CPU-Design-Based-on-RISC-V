`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 09:23:31
// Design Name: 
// Module Name: test_j_inst
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


module test_j_inst;
 
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
    
    reg [1:0]              alu_bsrc; // mux from bus_a and imm and 4.
    wire [31:0]            bus_bi;   // alu_bsrc result.
    
    reg                    alu_asrc; // mux from bus_a and pc.
    wire [31:0]            bus_ai;   // alu_asrc result.
    
    // 存储器
    //reg [31:0]       addr;      // 写入地址
    //reg [31:0]       data_in;   // 写入数据
    reg              mem_wr;    // 写使能
    
    wire [31:0]      data_out;  // 读出数据
    
    reg             mem_to_reg; // mux from alu out and mem out.
    wire [31:0]     bus_wo;     // mem_to_reg result.
    
    
    // --- pc ---
    wire [31:0]    cur_pc;
    //reg  [31:0]    imm;
    reg           branch;
    reg           jump;
    //reg           zero;

    wire [31:0]    next_pc;

    reg              ce;
    //reg  [31:0]      addr;
    wire [31:0]     inst;
    
        
    initial begin
        clk = 0;
        rst_n = 0;
        
        #100;
        rst_n = 1'b1;
        mem_wr = 1'b0;  // 存储器写使能
        re1 = 1'b1;
        re2 = 1'b1;
        
        #50  // PC <- PC + 4;   PC <- PC + (SEXT (imm12) * 2)

        alu_ctr = 4'b0000;  // add
        ext_op = 3'b100;    // immJ
        branch = 1'b1;      // next_pc
        
        reg_wr = 1'b1;      // 寄存器写使能
        rw = 5'b00011;
        mem_to_reg = 1'b0;  // choose result of alu send to reg.

        jump = 1'b1;        // * jump
        alu_asrc = 1'b1;    // * choose pc send to alu regA_i.
        alu_bsrc = 2'b01;   // * choose 4  send to alu regB_i.
        
        ra = 5'b00001;      // Rs1 R[Rs1]
        rb = 5'b00001;      // Rs2 R[Rs2]
        
        instr = 32'b0000_0000_1000_0000_0000_0000_0000_0000; //   imm <= {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0}
        
        #50
        ra = 5'b00011;      // 验证 R[rd] <- PC + 4;
        
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
        .regA_i(bus_ai), 
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
    
    // mux from bus_b and imm. send bus_bi to alu regB_i.
    //assign bus_bi = alu_bsrc ? imm : bus_b;
    
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
    
    
    // mux from alu out and mem out.
    assign bus_wo = mem_to_reg ? data_out : bus_w;
    

    
endmodule
