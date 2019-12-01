`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 08:28:43
// Design Name: 
// Module Name: alu
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
reg [31:0] regB_ii;

    
always @ (*) begin

    case(op_ctr_i)
        
        2'b00, 2'b11: begin    // add sub 选择加法器结果输出
            
            // 符号扩展
            if (sub_ctr_i) begin
                regB_ii <= ~regB_i;
            end       
            else begin
                regB_ii <= regB_i;
            end
            
            {cout, result} <= regA_i + regB_ii + sub_ctr_i;  

                        
            if (op_ctr_i == 2'b00) begin
                result_o <= result;
            end
            
            else if(op_ctr_i == 2'b11) begin
                
                if (sig_ctr_i) begin // 带符号整数比较小于置 1
                    result_o <= {31'b0, (of ^ sf)}; // 零扩展
                end
                
                else begin
                    result_o <= {31'b0, (sub_ctr_i ^ cf)};// 零扩展    
                end                
            
            end
                         
        end 
        
        2'b01: begin    // or 选择"按位或"结果输出
            result_o <= regA_i | regB_i;
        end
        
        2'b10: begin    // srcB 选择操作数 B 直接输出
            result_o <= regB_i;
        end
        
        // 2'b11: begin    // slt sltu 选择小于置位结果输出
        // end
        
    endcase
    
end

assign zf = (result_o == 32'b0 ? 1'b1 : 1'b0); // 零标志
assign sf = result_o[31];   // 符号标志
assign cf = (sub_ctr_i ? ~cout : cout); // 进位/错位标志

// 当 X 和 Y' 的最高位相同且不同于结果 F 的最高位时发生溢出 of = 1 否则 of = 0
assign of = ((regA_i[31] == regB_ii[31]) && (regA_i[31] != result_o[31]) ? 1'b1 : 1'b0 ); // 溢出标志
    
    
endmodule
