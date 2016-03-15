`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:43 03/07/2016 
// Design Name: 
// Module Name:    estadossuma 
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
module estadossuma(activar,clk,reset,suma);

	input clk,reset,activar;
	output reg suma;
	parameter state1 = 2'b00;
   parameter state2 = 2'b01;
   parameter state3 = 2'b10;
	
	
   

   reg [1:0] state = state1;

   always@(posedge clk)
      if (reset) begin
         state <= state1;
         suma = 0;
      end
      else
         case (state)
            state1 : begin
               if (activar)
                  state <= state2;
               else
                  state <= state1;
						suma = 0;
            end
            state2 : begin
						suma = 1;
                  state <= state3;
            end
            state3 : begin
               if (activar)
					begin
                  state <= state3;
						suma = 0;
					end
               else
                  state <= state1;
       
            end
            
            default : begin  // Fault Recovery
               state <= state1;
               suma = 0;
            end   
         endcase
							

endmodule
