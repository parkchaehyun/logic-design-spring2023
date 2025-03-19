`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:13 04/27/2023 
// Design Name: 
// Module Name:    bcd_structural 
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
module bcd_structural(
    input [3:0] in,
    output [6:0] out
    );
	 
	 wire w[10:0], N_in2, N_in1, N_in0;
	 
	 not n1(N_in2, in[2]);
	 not n2(N_in1, in[1]);
	 not n3(N_in0, in[0]);
	 
	 and a1(w[0], in[2], in[0]); //BD
	 and a2(w[1], N_in2, N_in0); //B'D'
	 and a3(w[2], N_in1, N_in0); //C'D'
	 and a4(w[3], in[1], in[0]); //CD
	 and a5(w[4], in[1], N_in0); //CD'
	 and a6(w[5], in[2], N_in1, in[0]); //BC'D
	 and a7(w[6], N_in2, in[1]); //B'C
	 and a8(w[7], in[2], N_in0); //BD'
	 and a9(w[8], in[2], N_in1); //BC'
	 
	 or o1(out[6], in[3], w[0], in[1], w[1]);
	 or o2(out[5], w[2], w[3], N_in2);
	 or o3(out[4], in[2], N_in1, in[0]);
	 or o4(out[3], w[1], w[4], w[5], w[6]);
	 or o5(out[2], w[1], w[4]);
	 or o6(out[1], in[3], w[2], w[7], w[8]);
	 or o7(out[0], in[3], w[4], w[8], w[6]);


endmodule
