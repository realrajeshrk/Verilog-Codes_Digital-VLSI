`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 21:41:43
// Design Name: 
// Module Name: jk
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


module jk(
input j,k,q,clk,
output reg q1
    );
    always@(posedge clk)
    begin
    q1=(j&~q)|(~k&q);
    end
endmodule
