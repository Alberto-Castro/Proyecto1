`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:00:31 03/08/2016 
// Design Name: 
// Module Name:    selector_de_frecuencia 
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
module selector_de_frecuencia(In,CLK,Reset,Q);
input [2:0]In;
input Reset,CLK;
output [5:0]Q;
reg [5:0]O;
always @(posedge CLK or posedge Reset)
	if (Reset)
		O <= 6'b100000;//32
	else
		case(In)
			3'b000: O<=6'b100000;//32
			3'b001: O<=6'b010011;//19
			3'b010: O<=6'b001100;//12
			3'b011: O<=6'b001001;//9
			3'b100: O<=6'b000111;//7
			3'b101: O<=6'b000110;//6
			3'b110: O<=6'b000101;//5
			3'b111: O<=6'b000100;//4
			default: O<=6'b100000;//32
		endcase 
assign Q = O;
endmodule 
