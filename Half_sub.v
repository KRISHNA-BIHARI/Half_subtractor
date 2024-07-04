`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: krishna
// 
// Create Date: 04.07.2024 20:21:57
// Design Name: 
// Module Name: Half_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Half_sub(
  input a,    // Input 'a'
  input b,    // Input 'b'
  output s,   // Output 's' (difference)
  output c    // Output 'c' (borrow)
);
wire w1;
  // Combinational logic equations for difference and  borrow
 assign    s = a ^ b; // XOR operation for difference
 assign w1 = ~a; // taking not of A
 assign   c = w1 & b;  // AND operation for borrow
endmodule
