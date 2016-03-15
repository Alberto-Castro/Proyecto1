`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:55 03/07/2016 
// Design Name: 
// Module Name:    MUXnumero 
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
module MUXnumero(En,numeroC,numeroF,numero);
input [9:0] numeroC,numeroF;
input En;
output reg [9:0] numero;
	always @(En or numeroC or numeroF)
		case (En)
			1'b0: numero <= numeroF;
			1'b1: numero <= numeroC;
	endcase	
endmodule
