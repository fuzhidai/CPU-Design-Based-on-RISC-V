module next_pc(
    
    input [31:0]    pc,
    input [31:0]    imm,
    input           branch,
    input           zero,
    
    output reg[31:0]    next_pc
    );
    
always @ (*) begin                                
        if(branch & zero)
            next_pc <= pc + imm;
        else
            next_pc <= pc + 4'h4;
end
    
endmodule