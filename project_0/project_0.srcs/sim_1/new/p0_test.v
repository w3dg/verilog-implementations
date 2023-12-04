`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 20:49:33
// Design Name: 
// Module Name: p0_test
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


module p0_test();
    reg A, B;
    wire W;
    
    p0_test(.INP1(A), .INP2(B), .OUT(W));
    
    initial begin
    
    A=0;
    B=0;
    #5
    A=0;
    B=1;
    #5
    A=1;
    B=0;
    #5
    A=1;
    B=1;
    #5

    $stop;
    end
endmodule
