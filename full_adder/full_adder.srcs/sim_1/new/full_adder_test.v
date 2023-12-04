`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 23:09:26
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test();
    reg A, B, C_IN;
    wire SUM, C_OUT;
    
    full_adder dut(.A(A), .B(B), .C_IN(C_IN), .SUM(SUM), .C_OUT(C_OUT));
    
    initial
        begin
           A=0;
           B=0;
           C_IN=0;
           #5;

           A=0;
           B=0;
           C_IN=1;
           #5;
           
           A=0;
           B=1;
           C_IN=0;
           #5;
           
           A=0;
           B=1;
           C_IN=1;
           #5;
           
           A=1;
           B=0;
           C_IN=0;
           #5;
           
           A=1;
           B=0;
           C_IN=1;
           #5;
           
           A=1;
           B=1;
           C_IN=0;
           #5;
           
           A=1;
           B=1;
           C_IN=1;
           #5;
           
           $finish;
        end
endmodule
