`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 02:20:38
// Design Name: 
// Module Name: half_sub_test
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

// this test bench looks similar like half adder except one not circuit
module half_sub_test;
reg a=0,b=0;
wire s,c; /*never assign values to the outputs if they are net type*/
Half_sub n1(.a(a),.b(b),.s(s),.c(c));
initial
$monitor($time,"\t a=%b,b=%b,s=%b,c=%b \n",a,b,s,c);
initial
begin 
#5 a=1'b0;b=1'b0;
#5 a=1'b0;b=1'b1;
#5 a=1'b1;b=1'b0;
#5 a=1'b1;b=1'b1;
#20 $finish;
end 
endmodule
