`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:24 02/29/2016 
// Design Name: 
// Module Name:    MaquinotaDisplay 
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
module MaquinotaDisplay(clk,reset,salidaDisplay1,salidaDisplay2,salidaDisplay3,salidaDisplay4,ANOD,CAT);
	//input [3:0] Pnum,Snum,Tnum;
	input clk,reset;//seleccion;
	input [7:0] salidaDisplay1;
	input [7:0] salidaDisplay2;
	input [7:0] salidaDisplay3;
	input [7:0] salidaDisplay4;
	parameter estado1 = 2'b00;
   parameter estado2 = 2'b01;
   parameter estado3 = 2'b10;
   parameter estado4 = 2'b11;
	output reg [3:0] ANOD;
	output reg [7:0] CAT;
	reg [1:0] state = estado1;
	reg [7:0] contador = 0;
	//reg [7:0] cambiar = 8'b01100100;
	//reg [7:0] cambiarM = 8'b00000001;

   always@(posedge clk)
      if (reset) begin
         state <= estado1;
         //<outputs> <= <initial_values>;
      end
      else
         case (state)
            estado1 : begin
               if (contador == 8'b01100100)
                  state <= estado2;
               
               else
                  state <= estado1;
						contador = contador + 1'b1;
						ANOD[0]=0;
						ANOD[1]=1;
						ANOD[2]=1;
						ANOD[3]=1;
						CAT = salidaDisplay4;
            end
            estado2 : begin
               if (contador == 8'b00000001)
                  state <= estado3;
  
               else
                  state <= estado2;
						contador = contador - 1'b1;
						ANOD[0]=1;
						ANOD[1]=0;
						ANOD[2]=1;
						ANOD[3]=1;
						CAT = salidaDisplay3;
            end
            estado3 : begin
               if (contador == 8'b01100100)
                  state <= estado4;
              
               else
                  state <= estado3;
						contador = contador + 1'b1;
						ANOD[0]=1;
						ANOD[1]=1;
						ANOD[2]=0;
						ANOD[3]=1;
						CAT = salidaDisplay2;
            end
            estado4 : begin
               if (contador == 8'b00000001)
                  state <= estado1;
             
               else
                  state <= estado4;
						contador = contador - 1'b1;
						ANOD[0]=1;
						ANOD[1]=1;
						ANOD[2]=1;
						ANOD[3]=0;
						CAT = salidaDisplay1;
            end
         endcase
							

endmodule
