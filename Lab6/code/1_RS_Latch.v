`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:50 05/18/2023 
// Design Name: 
// Module Name:    RS_Latch 
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
module RS_Latch(
    input R,
    input S,
    output Q,
    output Q_pr
    );
	 
	 nor u1(Q, R, Q_pr);
	 nor u2(Q_pr, Q, S);

endmodule
