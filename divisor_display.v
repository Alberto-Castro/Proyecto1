`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:22 03/05/2016 
// Design Name: 
// Module Name:    divisor_display 
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
module divisor_display(CLK,Reset,D);
output reg D;
input wire CLK, Reset;
reg [9:0]A;

always @(posedge CLK or posedge Reset)
	if (Reset)
	begin
		A <= 10'd0;
		D <= 1;
	end
	else
		if (A == 10'd1000)
		begin
			D <= ~D;
			A <= 10'd0;
		end
		else 
			A <= A + 10'd1;
			
endmodule
