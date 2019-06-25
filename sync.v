`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2019 00:09:19
// Design Name: 
// Module Name: sync
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


 module sync(
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
    q<=4'b1000;
    end
    always@(posedge clk)
    begin
    q[3]<=q[0];
    q[2]<=q[3];
    q[1]<=q[2];
    q[0]<=q[1];
    end
    
endmodule
