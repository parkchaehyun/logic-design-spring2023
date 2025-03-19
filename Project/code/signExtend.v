`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:18 06/10/2023 
// Design Name: 
// Module Name:    signExtend 
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
module signExtend(
    input [1:0] two_bit,
    output reg [7:0] eight_bit
    );
	 
	 always @(*) begin
        case (two_bit)
            2'b00: eight_bit <= 8'b00000000;
            2'b01: eight_bit <= 8'b00000001;
            2'b10: eight_bit <= 8'b11111110;
            2'b11: eight_bit <= 8'b11111111;
        endcase
    end


endmodule
