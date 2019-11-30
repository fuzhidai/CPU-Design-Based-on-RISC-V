`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 19:04:38
// Design Name: 
// Module Name: cla_adder
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


module cla_adder(a,b,ci,sum,cout);

    input [7:0]    a;
    input [7:0]    b;
    input ci;
    
    output [7:0]   sum;
    output cout;

    wire  [7:0]    co_tmp;
    wire  [7:0]    cin;
    
    assign  cin[7:0]  = {co_tmp[6:0],ci};
    
    //计算中间进位
    assign  co_tmp[0] = a[0]&b[0] || (a[0] || b[0])&(cin[0]);
    assign  co_tmp[1] = a[1]&b[1] || (a[1] || b[1])&(cin[1]);
    assign  co_tmp[2] = a[2]&b[2] || (a[2] || b[2])&(cin[2]);
    assign  co_tmp[3] = a[3]&b[3] || (a[3] || b[3])&(cin[3]);
    assign  co_tmp[4] = a[4]&b[4] || (a[4] || b[4])&(cin[4]);
    assign  co_tmp[5] = a[5]&b[5] || (a[5] || b[5])&(cin[5]);
    assign  co_tmp[6] = a[6]&b[6] || (a[6] || b[6])&(cin[6]);
    assign  co_tmp[7] = a[7]&b[7] || (a[7] || b[7])&(cin[7]);


    
    //计算和
    assign sum[0] = a[0] ^ b[0] ^ cin[0];
    assign sum[1] = a[1] ^ b[1] ^ cin[1];
    assign sum[2] = a[2] ^ b[2] ^ cin[2];
    assign sum[3] = a[3] ^ b[3] ^ cin[3];
    assign sum[4] = a[4] ^ b[4] ^ cin[4];
    assign sum[5] = a[5] ^ b[5] ^ cin[5];
    assign sum[6] = a[6] ^ b[6] ^ cin[6];
    assign sum[7] = a[7] ^ b[7] ^ cin[7];
    
    assign cout = co_tmp[7];

endmodule
