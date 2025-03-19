`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:14 04/27/2023 
// Design Name: 
// Module Name:    bcd_data_flow 
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
module bcd_data_flow(
    input [3:0] in,
    output [6:0] out
    );
	 
	 assign out = (in == 0) ? 7'b1111110 :
			 (in == 1) ? 7'b0110000 :
			 (in == 2) ? 7'b1101101 :
			 (in == 3) ? 7'b1111001 :
			 (in == 4) ? 7'b0110011 :
			 (in == 5) ? 7'b1011011 :
			 (in == 6) ? 7'b1011111 :
			 (in == 7) ? 7'b1110000 :
			 (in == 8) ? 7'b1111111 : 7'b1110011;


endmodule
