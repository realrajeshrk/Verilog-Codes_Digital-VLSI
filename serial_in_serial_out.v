`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 18:58:52
// Design Name: 
// Module Name: serial_in_serial_out
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


module serial_in_serial_out(

output dout,


input din ,

input clk ,

input reset 
    
);
reg [2:0]s;
reg dout;
wire din;
wire clk ;
wire reset;
always @ (posedge (clk)) begin 
 if (reset)
  dout <= 0;
 else begin
  s[0] <= din ;
  s[1] <= s[0] ;
  s[2] <= s[1] ;
  dout <= s[2]; 
 end
end

endmodule
