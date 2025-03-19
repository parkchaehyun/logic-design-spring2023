`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:07 04/27/2023 
// Design Name: 
// Module Name:    bcd_behavioral 
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
module bcd_behavioral(
    input [3:0] in,
    output reg [6:0] out
    );
	 
	 always @(in)
	   begin
			case (in)
				4'b0000 : begin out = 7'b1111110; end
				4'b0001 : begin out = 7'b0110000; end
				4'b0010 : begin out = 7'b1101101; end
				4'b0011 : begin out = 7'b1111001; end
				4'b0100 : begin out = 7'b0110011; end
				4'b0101 : begin out = 7'b1011011; end
				4'b0110 : begin out = 7'b1011111; end
				4'b0111 : begin out = 7'b1110000; end
				4'b1000 : begin out = 7'b1111111; end
				4'b1001 : begin out = 7'b1110011; end
				default : begin out = 7'b0000000; end
			endcase
		end
		
endmodule
