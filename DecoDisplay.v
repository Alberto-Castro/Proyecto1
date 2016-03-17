`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:31 02/29/2016 
// Design Name: 
// Module Name:    DecoDisplay 
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
module DecoDisplay(numeroDCU,salidaDisplay);
	input [3:0] numeroDCU;
	output reg [7:0] salidaDisplay;
	// toma el numero centena,decena o unidad y asigna los pines del 7 segmentos.
	always @*
	begin
	case(numeroDCU)
	4'b0000: salidaDisplay=8'b00000011;
	4'b0001: salidaDisplay=8'b10011111;
	4'b0010: salidaDisplay=8'b00100101;
	4'b0011: salidaDisplay=8'b00001101;
	4'b0100: salidaDisplay=8'b10011001;
	4'b0101: salidaDisplay=8'b01001001;
	4'b0110: salidaDisplay=8'b11000001;
	4'b0111: salidaDisplay=8'b00011111;
	4'b1000: salidaDisplay=8'b00000001;
	4'b1001: salidaDisplay=8'b00011001;
	default: salidaDisplay=8'b11111111;
	endcase
	end


endmodule
