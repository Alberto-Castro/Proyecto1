`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:30:30 03/01/2016 
// Design Name: 
// Module Name:    Display 
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
module Display(En,numeroC,numeroF,clk,reset,anod,cat);
	input [9:0] numeroC,numeroF;
	input clk,reset,En;
	wire [9:0] numero;
	wire [3:0] Pnum;
	wire [3:0] Snum;
	wire [3:0] Tnum;
	wire [3:0] Cnum;
	wire [7:0] salida0;
	wire [7:0] salida1;
	wire [7:0] salida2;
	wire [7:0] salida3;
	output wire [3:0] anod;
	output wire [7:0] cat;
	
	MUXnumero Muxnumero1 (.En(En),.numeroC(numeroC),.numeroF(numeroF),.numero(numero));
	ControlDisplay CD (.numero(numero),.Pnum(Pnum),.Snum(Snum),.Tnum(Tnum),.Cnum(Cnum));
	DecoDisplay DD0 (.numeroDCU(Pnum),.salidaDisplay(salida0));
	DecoDisplay DD1 (.numeroDCU(Snum),.salidaDisplay(salida1));
	DecoDisplay DD2 (.numeroDCU(Tnum),.salidaDisplay(salida2));
	DecoDisplay DD3 (.numeroDCU(Cnum),.salidaDisplay(salida3));
	MaquinotaDisplay jul(.clk(clk),.reset(reset),.salidaDisplay1(salida0),.salidaDisplay2(salida1),.salidaDisplay3(salida2),.salidaDisplay4(salida3),.ANOD(anod),.CAT(cat));

endmodule
