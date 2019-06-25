`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2019 14:02:46
// Design Name: 
// Module Name: eight
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


module eight(
    input [3:0]a,
    input [3:0]b,
    output reg [7:0]c
    );
    reg [7:0]j,k,l,m;
    always@(a,b)
    begin
    j={(a[3]&b[0]),(a[2]&b[0]),(a[1]&b[0]),(a[0]&b[0])};
    k={(a[3]&b[1]),(a[2]&b[1]),(a[1]&b[1]),(a[0]&b[1]),1'b0};
    l={(a[3]&b[2]),(a[2]&b[2]),(a[1]&b[2]),(a[0]&b[2]),1'b0,1'b0};
    m={(a[3]&b[3]),(a[2]&b[3]),(a[1]&b[3]),(a[0]&b[3]),1'b0,1'b0,1'b0};
    c=j+k+l+m;
    end
endmodule