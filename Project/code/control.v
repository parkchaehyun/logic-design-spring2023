`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:35 06/07/2023 
// Design Name: 
// Module Name:    control 
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
module control(
	 input clk,
    input [1:0] op,
    output reg branch,
    output reg memToReg,
    output reg memRead,
    output reg memWrite,
    output reg ALUSrc,
    output reg regWrite,
	 output reg regDst
    );
	 
	 initial begin
		branch = 0;
	 end
	 
	 always @(op) begin
		 branch <= (op == 2'b11) ? 1'b1 : 1'b0;
		 memToReg <= (op == 2'b00) ? 1'b0 : 1'b1;
		 memRead <= (op == 2'b01) ? 1'b1 : 1'b0;
		 memWrite <= (op == 2'b10) ? 1'b1 : 1'b0;
		 ALUSrc <= (op == 2'b00) ? 1'b0 : 1'b1;
		 regWrite <= (op == 2'b00 || op == 2'b01) ? 1'b1 : 1'b0;
		 regDst <= (op == 2'b00) ? 1'b1 : 1'b0;
	 end

endmodule
