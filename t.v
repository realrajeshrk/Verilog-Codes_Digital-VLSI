`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 22:50:33
// Design Name: 
// Module Name: t
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


module t(
input t,q,clk,
output reg q1
    );
    always@(posedge clk)
    begin
    q1=t^q;
    end
endmodule
