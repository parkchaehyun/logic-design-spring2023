`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:16 05/04/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input A,
    input B,
    input M,
    input S1,
    input S0,
    output [5:0] F
    );
	 
	 wire N_M, N_S1, N_S0, N_A, N_B;
	 
	 wire a[2:0];
	 wire b[7:0];
	 wire c[3:0];
	 
	 not n1(N_M, M);
	 not n2(N_S1, S1);
	 not n3(N_S0, S0);
	 not n4(N_A, A);
	 not n5(N_B, B);
	 
	 and a1(c[0], A, N_M, N_S1, N_S0);
	 and a2(c[2], N_A, N_M, N_S1, S0);
	 
	 xor x1(a[0], A, B);
	 and a3(F[2], a[0], N_M, S1, N_S0);
	 
	 not n6(a[1], a[0]);
	 and a4(F[3], a[1], N_M, S1, S0);
	 
	 and a5(c[1], A, M, N_S1, N_S0);
	 and a6(c[3], N_A, M, N_S1, S0);
	 and a7(F[4], a[0], M, S1, N_S0);
	 
	 xor x2(a[2], N_A, B);
	 and a8(F[5], a[2], M, S1, S0);
	 
	 or o1(F[0], c[0], c[1]);
	 or o2(F[1], c[2], c[3]);

endmodule

1
0
0
1
1
0
0
1