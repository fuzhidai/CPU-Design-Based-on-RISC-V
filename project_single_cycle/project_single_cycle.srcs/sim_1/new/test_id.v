`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 10:56:56
// Design Name: 
// Module Name: test_id
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


module test_id;
    
    reg         rst_n;
    reg [31:0]  inst;
    
    wire [4:0]  rw_addr;
    wire [4:0]  ra_addr;
    wire [4:0]  rb_addr;    

    // ��ֵ�����ź�
    wire  branch;       // pc
    wire  jump;         // pc
    wire  mem_to_reg;   // ALU to Reg
    wire  reg_wr;       // Reg
    wire  mem_wr;       // Mem
    wire  alu_asrc;     // Reg to ALU
    
    // ��ֵ�����ź�
    wire [1:0] alu_bsrc;   // imm and Reg to ALU
    wire [2:0] ext_op;     // imm
    wire [3:0] alu_ctr;    // ALU

    initial begin

        rst_n = 0;
        
        #50 // add
        rst_n = 1'b1;   // 0000000 rs1[4:0] rs2[4:0] 000 rd[4:0] 0110011
        inst =  32'b0000_0001_1111_1111_1000_1111_1011_0011;
        
        #50 // slt
        rst_n = 1'b1;   // 0000000 rs1[4:0] rs2[4:0] 010 rd[4:0] 0110011
        inst = 32'b0000_0001_1111_1111_1010_1111_1011_0011;
        
        #50 // sltu
        rst_n = 1'b1;   // 0000000 rs1[4:0] rs2[4:0] 011 rd[4:0] 0110011
        inst = 32'b0000_0001_1111_1111_1011_1111_1011_0011;
        
        #50 // ori
        rst_n = 1'b1;   // imm[11:0] rs1[4:0] 110 rd[4:0] 0010011
        inst = 32'b1111_1111_1111_1111_1110_1111_1001_0011;
        
        #50 // lui
        rst_n = 1'b1;   // imm[19:0] rd[4:0] 0110111
        inst = 32'b1111_1111_1111_1111_1111_1111_1011_0111;
        
        #50 // lw
        rst_n = 1'b1;   // imm[11:0] rs1[4:0] 010 rd[4:0] 0000011
        inst = 32'b1111_1111_1111_1111_1010_1111_1000_0011;

        #50 // sw
        rst_n = 1'b1;   // imm[11:5] rs2[4:0] rs1[4:0] 010 imm[4:0] 0100011
        inst = 32'b1111_1111_1111_1111_1010_1111_1010_0011;

        #50 // beq
        rst_n = 1'b1;   // imm[11:5] rs2[4:0] rs1[4:0] 000 imm[4:0] 1100011
        inst = 32'b1111_1111_1111_1111_1010_1111_1110_0011;
        
        #50 // jal
        rst_n = 1'b1;   // imm[19:0] rd[4:0] 1101111
        inst = 32'b1111_1111_1111_1111_1111_1111_1110_1111;
        
    end
    
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
        
        // ��ֵ�����ź�
        .alu_bsrc_o(alu_bsrc),   // imm and Reg to ALU
        .ext_op_o(ext_op),     // imm
        .alu_ctr_o(alu_ctr)     // ALU
        );
    
endmodule