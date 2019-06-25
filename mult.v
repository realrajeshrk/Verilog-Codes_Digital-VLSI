`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2019 13:17:52
// Design Name: 
// Module Name: mult
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


module mult(
    input [1:0]a,
    input [1:0]b,
    output reg [3:0]c
    );
    reg [3:0]x,y;
    always@(a,b)
    begin
    x={(a[1]&b[0]),(a[0]&b[0])};
    y={(a[1]&b[1]),(a[0]&b[1]),1'b0};
    c=x+y;
    end
endmodule
