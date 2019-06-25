`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 21:19:37
// Design Name: 
// Module Name: othersr
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


module othersr(
input s,r,
input clk,
output q,
output q1
    );
    reg q,q1;
    initial begin
        q=0;
        q1=~q;
        end
    always@(posedge clk or s,r)
    begin
    q=s|(~r&q);
    q1=~q;
    end
endmodule