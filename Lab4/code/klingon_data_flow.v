`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:40 05/02/2023 
// Design Name: 
// Module Name:    klingon_data_flow 
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
module klingon_data_flow(
    input [3:0] in,
    output [6:0] out
    );
	 
	 assign out = (in == 0) ? 7'b1111110 :
					  (in == 1) ? 7'b1000000 :
					  (in == 2) ? 7'b1000001 :
					  (in == 3) ? 7'b1001001 :
					  (in == 4) ? 7'b0100011 :
					  (in == 5) ? 7'b0011101 :
					  (in == 6) ? 7'b0100101 :
					  (in == 7) ? 7'b0010011 :
					  (in == 8) ? 7'b0110110 : 7'b0110111;

endmodule
