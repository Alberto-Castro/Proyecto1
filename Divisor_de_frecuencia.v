`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alberto Castro G. 
// 
// Create Date:    12:48:17 02/27/2016 
// Design Name: 
// Module Name:    Divisor_de_frecuencia 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Divisor_de_frecuencia(Q,CLK,Reset,D);
input [5:0]Q;
output reg D;
input wire CLK;
input wire Reset;
//input wire EN;
reg [5:0]A;

always @(posedge CLK, posedge Reset)
	if (Reset)
	begin
		A <= 6'd0;
		D <= 0;
	end
	else
			if (A == Q)
			begin
				D <= ~D;
				A <= 6'd0;
			end
			else 
				A <= A + 6'd1;
			
endmodule
