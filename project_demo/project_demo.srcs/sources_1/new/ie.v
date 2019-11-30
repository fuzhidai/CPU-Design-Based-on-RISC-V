module ie(
    input [31:0]             instr,
    input [2:0]              extop,
    output reg [31:0]        imm
    ); 

wire [6:0] op  = instr[6:0];
wire [2:0] op1 = instr[14:12];

always @ (*) begin

    case(op)
        7'b0010011, 7'b0000011: begin // ori lw immI
            imm <= {{20{instr[31]}} , instr[31:20]};
        end
        7'b0110111: begin // lui immU 
            imm <= {instr[31:12], 12'b0};
        end
        7'b0100011: begin // sw immS
            imm <= {{20{instr[31]}}, instr[31:25], instr[11:7]};
        end
        7'b1100011: begin // beq immB
            imm <= {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
        end
        7'b1101111: begin // jal immJ
            imm <= {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
        end
        default: begin
        end
    endcase
    
end

endmodule