`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:52 05/25/2023 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    input reset,
    output reg [3:0] bcd_ten,
    output reg [3:0] bcd_one
    );

	 always@ (posedge clk or posedge reset) begin
		if(reset) begin
			bcd_ten = 0;
			bcd_one = 0;
		end
		else if(bcd_one == 4'b1001) begin
			if(bcd_ten == 4'b1001) begin
				bcd_ten = 4'b0000;
				bcd_one = 4'b0000;
			end
			else begin
				bcd_ten = bcd_ten + 1;
				bcd_one = 4'b0000;
			end
		end
		else begin
			bcd_one = bcd_one + 1;
		end
	 end

endmodule
