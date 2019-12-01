module next_pc(

    input           ce,
    input [31:0]    pc,
    input [31:0]    imm,
    input           branch,
    input           zero,
    input           jump,
    
    output reg[31:0]    next_pc
    );
    
always @ (*) begin     

    if(~ce)
        next_pc <= 0;  
    else                                   
        if(branch & zero || jump)
            next_pc <= pc + imm;
        else
            next_pc <= pc + 4'h4;
end
    
endmodule