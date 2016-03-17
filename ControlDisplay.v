`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:06 02/28/2016 
// Design Name: 
// Module Name:    ControlDisplay 
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
module ControlDisplay(numero,Pnum,Snum,Tnum);
	input [7:0] numero;
	output reg [4:0] Pnum;
	output reg [4:0] Snum;
	output reg [4:0] Tnum;

	integer i;
	always @(numero);
	begin
		Pnum = 4'd0;
		Snum = 4'd0;
		Tnum = 4'd0;
	
		for (i=7; i >= 0; i=i-1)
		begin
			if (Pnum >= 5)
				Pnum = Pnum + 3;
			if (Snum >= 5)
				Snum = Snum + 3;
			if (Tnum >= 5)
				Tnum = Tnum + 3;
			
		
		Pnum = Pnum << 1;
		Pnum[0] = Snum [3];
		Snum = Snum << 1;
		Snum[0] = Tnum[3];
		Tnum = Tnum << 1;
		Tnum[0] = numero[i];
		end
	end
	
endmodule
