`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:58 02/29/2016 
// Design Name: 
// Module Name:    Anti_Rebote 
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
module Anti_Rebote(
input wire D,
input CLK, 
output reg DA
	);
reg X1; 
reg X2;
reg X3;
reg A;
reg O;

always @(posedge CLK)
	begin
		X1 <= D;
		X2 <= X1;
		X3 <= X2;
		A <= (D & X1 & X2 & X3);
		O <= (D | X1 | X2 | X3);
		if (A == 1)
			DA = 1;
		if (O == 0)
			DA = 0;
	end

endmodule
