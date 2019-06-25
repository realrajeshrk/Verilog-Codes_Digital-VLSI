`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 23:24:25
// Design Name: 
// Module Name: asyn
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


module asyn(
output reg clk,
output reg[3:0]q
    );
    initial
    begin
    repeat(100)
     begin
        clk=0;#30
        clk=~clk;#20;
     end
    end
    initial
    begin
        q=4'b0000;
    end
    always@(negedge clk)
        q[0]<=~q[0];
    always@(negedge q[0])
        q[1]<=~q[1];
    always@(negedge q[1])
        q[2]<=~q[2];
    always@(negedge q[2])
        q[3]<=~q[3];                
    
endmodule
