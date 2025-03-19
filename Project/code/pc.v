`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:40 06/10/2023 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input [7:0] inputCount,
    input clk,
	 input rst,
    output reg [7:0] out
    );
	 
	 always @(posedge clk or posedge rst) begin
		if (rst)
			out <= 8'b00000000;
		else
			out <= inputCount;
	 end

endmodule
