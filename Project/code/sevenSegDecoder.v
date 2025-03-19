`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:22 06/11/2023 
// Design Name: 
// Module Name:    sevenSegDecoder 
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
module sevenSegDecoder(
    input [7:0] data,
    output reg [6:0] segA,
    output reg [6:0] segB
    );

  always @(data) begin
    case (data[7:4])
      4'b0000: segA <= 7'b0111111;
      4'b0001: segA <= 7'b0000110;
      4'b0010: segA <= 7'b1011011;
      4'b0011: segA <= 7'b1001111;
      4'b0100: segA <= 7'b1100110;
      4'b0101: segA <= 7'b1101101;
      4'b0110: segA <= 7'b1111101;
      4'b0111: segA <= 7'b0000111;
      4'b1000: segA <= 7'b1111111;
      4'b1001: segA <= 7'b1100111;
      4'b1010: segA <= 7'b1110111;
      4'b1011: segA <= 7'b1111100;
      4'b1100: segA <= 7'b0111001;
      4'b1101: segA <= 7'b1011110;
      4'b1110: segA <= 7'b1111001;
      4'b1111: segA <= 7'b1110001;
    endcase

    case (data[3:0])
      4'b0000: segB <= 7'b0111111;
      4'b0001: segB <= 7'b0000110;
      4'b0010: segB <= 7'b1011011;
      4'b0011: segB <= 7'b1001111;
      4'b0100: segB <= 7'b1100110;
      4'b0101: segB <= 7'b1101101;
      4'b0110: segB <= 7'b1111101;
      4'b0111: segB <= 7'b0000111;
      4'b1000: segB <= 7'b1111111;
      4'b1001: segB <= 7'b1100111;
      4'b1010: segB <= 7'b1110111;
      4'b1011: segB <= 7'b1111100;
      4'b1100: segB <= 7'b0111001;
      4'b1101: segB <= 7'b1011110;
      4'b1110: segB <= 7'b1111001;
      4'b1111: segB <= 7'b1110001;
    endcase
  end

endmodule
