`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 15:55:47
// Design Name: 
// Module Name: gray
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


module gray (
  out    , // counter out
  enable , // enable for counter
  clk    , // clock
  rst      // active hight reset
  );
  
  //------------Input Ports--------------
  input clk, rst, enable; 
  //----------Output Ports----------------
  output [ 7:0] out;
  //------------Internal Variables--------
  wire [7:0] out;
  reg [7:0] count;
  //-------------Code Starts Here---------
  always @ (posedge clk) 
  if (rst) 
    count <= 0; 
  else if (enable) 
    count <= count + 1; 
    
  assign out = { count[7], (count[7] ^ count[6]),(count[6] ^ 
               count[5]),(count[5] ^ count[4]), (count[4] ^ 
               count[3]),(count[3] ^ count[2]), (count[2] ^ 
               count[1]),(count[1] ^ count[0]) };
    
endmodule 