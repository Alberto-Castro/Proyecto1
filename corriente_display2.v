`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:34 03/07/2016 
// Design Name: 
// Module Name:    corriente_display2 
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
module corriente_display2(In,out1,out2,up,down,clk,reset);

input up, down, clk, reset;
input [2:0] In;

//output reg[9:0] N1;
//output reg[9:0] N2;

output reg [9:0] out1;
output reg [9:0] out2;

always @(posedge clk)begin
	if (reset) 
	begin
		out2 <= 10'b0000011110;
		out1 <= 10'b0111110100;
	end
	else if (up) 
		if (out1 == 10'b1111101000)
			out1 <= 10'b0000000000;
		else
			out1 <= out1 + 10'b0000010100;
	else if (down)
		if (out1 == 10'b0000000000)
			out1 <= 10'b1111101000;
		else
			out1 <= out1 - 10'b0000010100;	
	else
		case(In)
			3'b000: out2 <= 10'b0000011110;//30
			3'b001: out2 <= 10'b0000110010;//50
			3'b010: out2 <= 10'b0001001011;//75
			3'b011: out2 <= 10'b0001100100;//100
			3'b100: out2 <= 10'b0001111101;//125
			3'b101: out2 <= 10'b0010010110;//150
			3'b110: out2 <= 10'b0010101111;//175
			3'b111: out2 <= 10'b0011001000;//200
			
		endcase
		//N1 <= out1;
		//N2 <= out2;
end

endmodule
