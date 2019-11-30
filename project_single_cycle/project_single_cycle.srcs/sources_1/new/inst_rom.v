module inst_rom(
    input              ce,
    input [31:0]       addr,
    output reg [31:0]  inst
);

reg [31:0] inst_mem [0:255];

// 这里必须使用绝对路径，不然读不到值
initial $readmemh ("D:/vivado_project/project_single_cycle/project_single_cycle.srcs/sources_1/new/inst_rom.data", inst_mem);

always @ (*) begin
    if(~ce)
        inst <= 0;  
    else
        inst <= inst_mem[addr[9:2]];
end

endmodule