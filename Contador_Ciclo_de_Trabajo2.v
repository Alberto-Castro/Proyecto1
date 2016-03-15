`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:28:15 03/10/2016 
// Design Name: 
// Module Name:    Contador_Ciclo_de_Trabajo2 
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
module Contador_Ciclo_de_Trabajo2(Q,Reset,CLK,A);
input CLK,Reset;
input[5:0] Q;
output reg A;
reg[5:0] D;

always @(posedge CLK or posedge Reset)
begin
	if (Reset)
		D <= 6'b000000;
	else
	begin
		D <= D + 6'b000001;
		if (D == 6'b110010) 
			D <= 6'b000000;
	end
end

always @(D or Q)
begin
	if (D > Q)
		A <= 1'b0;
	else
		A <= 1'b1;
end

endmodule 