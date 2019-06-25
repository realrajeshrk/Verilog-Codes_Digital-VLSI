`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 21:50:30
// Design Name: 
// Module Name: sipo
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



module sipo( din ,clk ,reset ,dout );

output [3:0] dout ;
wire [3:0] dout ;

input din ;
wire din ;
input clk ;
wire clk ;
input reset ;
wire reset ;

reg [3:0]s;

always @ (posedge (clk)) begin 
 if (reset)
  s <= 0;
 else begin
  s[3] <= din;
  s[2] <= s[3];
  s[1] <= s[2];
  s[0] <= s[1];
 end
end

assign dout = s;
 

endmodule