`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:09 06/10/2023 
// Design Name: 
// Module Name:    MUXfromRegToALU
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
module MUXfromRegToALU(
    input [7:0] readData,
    input [7:0] signExtend,
    input ALUSrc,
    output [7:0] out
    );
	 
	 assign out = (ALUSrc == 1'b0) ? readData : signExtend;



endmodule
