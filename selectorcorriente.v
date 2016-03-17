`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:21 03/09/2016 
// Design Name: 
// Module Name:    selectorcorriente 
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
module selectorcorriente(numero,out,clk,reset);

input clk, reset;
input [9:0] numero;
output reg[5:0] out;

always @(posedge clk)
	if (reset)
		out <= 6'b011001;
	else
		case (numero)
			10'b0000000000:  out <= 6'b000000;//0%
			10'b0000010100:  out <= 6'b000001;//2%
			10'b0000101000:  out <= 6'b000010;//4%
			10'b0000111100:  out <= 6'b000011;//6%
			10'b0001010000:  out <= 6'b000100;//8%
			10'b0001100100:  out <= 6'b000101;//10%
			10'b0001111000:  out <= 6'b000110;//12%
			10'b0010001100:  out <= 6'b000111;//14%
			10'b0010100000:  out <= 6'b001000;//16%
			10'b0010110100:  out <= 6'b001001;//18%
			10'b0011001000:  out <= 6'b001010;//20%
			10'b0011011100:  out <= 6'b001011;//22%
			10'b0011110000:  out <= 6'b001100;//24%
			10'b0100000100:  out <= 6'b001101;//26%
			10'b0100011000:  out <= 6'b001110;//28%
			10'b0100101100:  out <= 6'b001111;//30%
			10'b0101000000:  out <= 6'b010000;//32%
			10'b0101010100:  out <= 6'b010001;//34%
			10'b0101101000:  out <= 6'b010010;//36%
			10'b0101111100:  out <= 6'b010011;//38%
			10'b0110010000:  out <= 6'b010100;//40%
			10'b0110100100:  out <= 6'b010101;//42%
			10'b0110111000:  out <= 6'b010110;//44%
			10'b0111001100:  out <= 6'b010111;//46%
			10'b0111100000:  out <= 6'b011000;//48%
			10'b0111110100:  out <= 6'b011001;//50%
			10'b1000001000:  out <= 6'b011010;//52%
			10'b1000011100:  out <= 6'b011011;//54%
			10'b1000110000:  out <= 6'b011100;//56%
			10'b1001000100:  out <= 6'b011101;//58%
			10'b1001011000:  out <= 6'b011110;//60%
			10'b1001101100:  out <= 6'b011111;//62%
			10'b1010000000:  out <= 6'b100000;//64%
			10'b1010010100:  out <= 6'b100001;//66%
			10'b1010101000:  out <= 6'b100010;//68%
			10'b1010111100:  out <= 6'b100011;//70%
			10'b1011010000:  out <= 6'b100100;//72%
			10'b1011100100:  out <= 6'b100101;//74%
			10'b1011111000:  out <= 6'b100110;//76%
			10'b1100001100:  out <= 6'b100111;//78%
			10'b1100100000:  out <= 6'b101000;//80%
			10'b1100110100:  out <= 6'b101001;//82%
			10'b1101001000:  out <= 6'b101010;//84%
			10'b1101011100:  out <= 6'b101011;//86%
			10'b1101110000:  out <= 6'b101100;//88%
			10'b1110000100:  out <= 6'b101101;//90%
			10'b1110011000:  out <= 6'b101110;//92%
			10'b1110101100:  out <= 6'b101111;//94%
			10'b1111000000:  out <= 6'b110000;//96%
			10'b1111010100:  out <= 6'b110001;//98%
			10'b1111101000:  out <= 6'b110010;//100%
			default out <= 6'b011001;//50%
		endcase
endmodule
