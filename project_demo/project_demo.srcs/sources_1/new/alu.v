module alu(
    
    input [31:0]         regA_i,
    input [31:0]         regB_i,
    
    input                sub_ctr_i,
    input                sig_ctr_i,
    input [1:0]          op_ctr_i,
    
    output   zf, // 零标志
    output   sf, // 符号标志
    output   cf, // 进位/错位标志
    output   of, // 溢出标志
    
    output reg           cout,
    output reg [31:0]    result_o
    
    );

reg [31:0] result;

    
always @ (*) begin

    case(op_ctr_i)
        
        2'b00, 2'b11: begin    // add sub 选择加法器结果输出
            
            // 符号扩展
            if (sub_ctr_i) begin
                {cout, result} <= regA_i + ~regB_i + sub_ctr_i;  
            end       
            else begin
                {cout, result} <= regA_i + regB_i + sub_ctr_i;
            end
                        
            if (op_ctr_i == 2'b00) begin
                result_o <= result;
            end
            
            else if(op_ctr_i == 2'b11) begin
                
                if (sig_ctr_i) begin // 带符号整数比较小于置 1
                    result_o <= {(of|sf), 31'b0}; // 零扩展
                end
                
                else begin
                    result_o <= {(sub_ctr_i|cf), 31'b0};// 零扩展    
                end                
            
            end
                         
        end 
        
        2'b01: begin    // or 选择“按位或”结果输出
            result <= regA_i | regB_i;
        end
        
        2'b10: begin    // srcB 选择操作数 B 直接输出
            result <= regB_i;
        end
        
        // 2'b11: begin    // slt sltu 选择小于置位结果输出
        // end
        
    endcase
    
end

assign zf = (result_o == 32'b0 ? 1'b1 : 1'b0); // 零标志
assign sf = result_o[31];   // 符号标志
assign cf = (sub_ctr_i ? ~cout : cout); // 进位/错位标志
assign of = ((result_o[31] ^ regA_i[31]) && (result_o[31] ^ regB_i[31]) ? 1'b1 : 1'b0 ); // 溢出标志
    
    
endmodule