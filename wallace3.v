`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2019 14:59:56
// Design Name: 
// Module Name: wallace3
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


module wallace3(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
    );
    integer i;
    wire s11,s12,s13,s14,s21,s22,s23,s24,s31,s32,s33,s34;
    wire c11,c12,c13,c14,c21,c22,c23,c24,c31,c32,c33,c34;
    reg [7:0] pp0,pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8;
    
    //Calculation of Partial Product
    always @(A,B)
    begin
        for(i=0;i<4;i=i+1) begin
      pp0[i] <= A[i] & B[0];
      pp1[i] <= A[i] & B[1];
      pp2[i] <= A[i] & B[2];
      pp3[i] <= A[i] & B[3];
        end     
    end

    assign P[0] = pp0[0];
assign P[1] = s11;
assign P[2] = s21;
assign P[3] = s31;
assign P[4] = s32;
assign P[5] = s33;
assign P[6] = s34;
assign P[7] = c34;

//first stage
half_add ha11 (pp0[1],pp1[0],s11,c11);
full_add fa12 (pp0[2],pp1[1],pp2[0],s12,c12);
full_add fa13 (pp0[3],pp1[2],pp2[1],s13,c13);
half_add ha12 (pp1[3],pp2[2],s14,c14);
    
   //second stage
    half_add ha21 (s12,c11,s21,c21);
full_add fa22 (s13,c12,pp3[0],s22,c22);
full_add fa23 (s14,c13,pp3[1],s23,c23);
full_add fa24 (pp2[3],c14,pp3[2],s24,c24);

//third stage
    half_add ha31 (s22,c21,s31,c31);
    full_add fa32 (s23,c22,c31,s32,c32);
   full_add fa33 (s24,c23,c32,s33,c33);
      full_add fa34 (pp3[3],c24,c33,s34,c34);
endmodule
