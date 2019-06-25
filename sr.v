`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 19:46:30
// Design Name: 
// Module Name: sr
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


module sr(
    input s,
    input r,
    input q,clk,
    output reg q1
    );
    
    always@(posedge clk)
    begin
    q1=s|(~r&q);
    end
endmodule
