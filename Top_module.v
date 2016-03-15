`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:39 03/03/2016 
// Design Name: 
// Module Name:    Top_module 
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
module Top_module(Up,Down,Frec,reset,clk,En,Ciclo_trabajo,Anod,Catod);
input wire Up,Down,reset,clk;
input wire[2:0] Frec;
input wire En;
output Ciclo_trabajo;
output [3:0] Anod;
output [7:0] Catod;

wire [2:0] E4;
wire[5:0] W1;
wire[5:0] W2;
wire[9:0] W5;
wire[9:0] W9;
wire W3,W4,W6,W7,W8;
wire E1,E2,E3,E5;

//Sincronizacion de Entradas
Anti_Rebote 	Anti_Rebote2(.D(reset),.CLK(clk),.DA(E3));
Anti_Rebote 	Anti_Rebote3(.D(Frec[0]),.CLK(clk),.DA(E4[0]));
Anti_Rebote 	Anti_Rebote4(.D(Frec[1]),.CLK(clk),.DA(E4[1]));
Anti_Rebote 	Anti_Rebote5(.D(Frec[2]),.CLK(clk),.DA(E4[2]));
Anti_Rebote 	Anti_Rebote6(.D(En),.CLK(clk),.DA(E5)); 

divisor_display divisor_display1(.CLK(clk),.Reset(E3),.D(W6));

antirebotebotones 	Anti_Rebote0(.D(Up),.CLK(W6),.activar(W7));
antirebotebotones 	Anti_Rebote1(.D(Down),.CLK(W6),.activar(W8));

//maquinas de estados. botones up y down
estadossuma estadossuma1(.activar(W7),.clk(W6),.reset(E3),.suma(E1));
estadossuma estadosresta1(.activar(W8),.clk(W6),.reset(E3),.suma(E2));

//Seleccion de frecuencia 
selector_de_frecuencia	selector_de_frecuencia1(.In(E4),.CLK(W6),.Reset(E3),.Q(W1));


//Divisiones de frecuencias
Divisor_de_frecuencia	Divisor_de_frecuencia1(.Q(W1),.CLK(clk),.Reset(E3),.D(W3));
//div_frec_x100 div_frec_x1001(.CLK(W3),.Reset(E3),.D(W4));

//seleccion de corriente
//situador_corriente	situador_corriente1(.out(W2),.up(E1),.down(E2),.clk(W3),.reset(E3));
corriente_display2	corriente_display1(.In(E4),.out1(W5),.out2(W9),.up(E1),.down(E2),.clk(W6),.reset(E3));
selectorcorriente selector1(.numero(W5),.out(W2),.clk(W6),.reset(E3));

//Salidas
Display Display1(.En(E5),.numeroC(W5),.numeroF(W9),.clk(W6),.reset(E3),.anod(Anod),.cat(Catod));
Contador_Ciclo_de_Trabajo2	Contador_Ciclo_de_Trabajo1(.Q(W2),.Reset(E3),.CLK(W3),.A(Ciclo_trabajo));

endmodule
