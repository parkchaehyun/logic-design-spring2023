`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:18 05/25/2023 
// Design Name: 
// Module Name:    TDC 
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
module TDC(
    input clk,
    input reset,
    output [6:0] bcd7_ten,
    output [6:0] bcd7_one
    );

	 wire new_clk;
	 wire [3:0] bcd_ten;
	 wire [3:0] bcd_one;

	 freq_divider T1(.clr(reset), .clk(clk), .clkout(new_clk));
	 counter T2(.clk(new_clk), .reset(reset), .bcd_ten(bcd_ten), .bcd_one(bcd_one));
	 bcd_to_7 T3(.bcd(bcd_ten), .seg(bcd7_ten));
	 bcd_to_7 T4(.bcd(bcd_one), .seg(bcd7_one));


endmodule
