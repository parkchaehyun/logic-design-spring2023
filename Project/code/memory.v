`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:13 06/10/2023 
// Design Name: 
// Module Name:    memory 
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
module memory(
    input [7:0] address,
    input [7:0] writeData,
	 input rst,
    input memRead,
    input memWrite,
	 input clk,
    output reg [7:0] readData
    );
	 
	 reg [7:0] memory [31:0];
	 reg performWrite;
	 
	 initial begin
	    performWrite = 0;
		 memory[0] = 8'b00000000;
		 memory[1] = 8'b00000001;
		 memory[2] = 8'b00000010;
		 memory[3] = 8'b00000011;
		 memory[4] = 8'b00000100;
		 memory[5] = 8'b00000101;
		 memory[6] = 8'b00000110;
		 memory[7] = 8'b00000111;
		 memory[8] = 8'b00001000;
		 memory[9] = 8'b00001001;
		 memory[10] = 8'b00001010;
		 memory[11] = 8'b00001011;
		 memory[12] = 8'b00001100;
		 memory[13] = 8'b00001101;
		 memory[14] = 8'b00001110;
		 memory[15] = 8'b00001111;

		 memory[16] = 8'b00000000;
		 memory[17] = 8'b11111111;
		 memory[18] = 8'b11111110;
		 memory[19] = 8'b11111101;
		 memory[20] = 8'b11111100;
		 memory[21] = 8'b11111011;
		 memory[22] = 8'b11111010;
		 memory[23] = 8'b11111001;
		 memory[24] = 8'b11111000;
		 memory[25] = 8'b11110111;
		 memory[26] = 8'b11110110;
		 memory[27] = 8'b11110101;
		 memory[28] = 8'b11110100;
		 memory[29] = 8'b11110011;
		 memory[30] = 8'b11110010;
		 memory[31] = 8'b11110001;
	 end
	 
	 always @(posedge clk or posedge rst) begin
		if (rst) begin
				 memory[0] <= 8'b00000000;
				 memory[1] <= 8'b00000001;
				 memory[2] <= 8'b00000010;
				 memory[3] <= 8'b00000011;
				 memory[4] <= 8'b00000100;
				 memory[5] <= 8'b00000101;
				 memory[6] <= 8'b00000110;
				 memory[7] <= 8'b00000111;
				 memory[8] <= 8'b00001000;
				 memory[9] <= 8'b00001001;
				 memory[10] <= 8'b00001010;
				 memory[11] <= 8'b00001011;
				 memory[12] <= 8'b00001100;
				 memory[13] <= 8'b00001101;
				 memory[14] <= 8'b00001110;
				 memory[15] <= 8'b00001111;

				 memory[16] <= 8'b00000000;
				 memory[17] <= 8'b11111111;
				 memory[18] <= 8'b11111110;
				 memory[19] <= 8'b11111101;
				 memory[20] <= 8'b11111100;
				 memory[21] <= 8'b11111011;
				 memory[22] <= 8'b11111010;
				 memory[23] <= 8'b11111001;
				 memory[24] <= 8'b11111000;
				 memory[25] <= 8'b11110111;
				 memory[26] <= 8'b11110110;
				 memory[27] <= 8'b11110101;
				 memory[28] <= 8'b11110100;
				 memory[29] <= 8'b11110011;
				 memory[30] <= 8'b11110010;
				 memory[31] <= 8'b11110001;
		  end
		  else if (memWrite) begin
				memory[address] <= writeData;
		  end
	 end
	 
	 always @(memRead) begin
			if (memRead) begin
					readData <= memory[address];
			end
	 end
endmodule
