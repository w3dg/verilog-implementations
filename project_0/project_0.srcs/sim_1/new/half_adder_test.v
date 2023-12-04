`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 22:32:50
// Design Name: 
// Module Name: half_adder_test
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


module half_adder_test();
    reg A, B;
    wire SUM, CARRY;
    
    localparam period = 20;
    
    half_adder dut(.INP1(A), .INP2(B), .SUM(SUM), .CARRY(CARRY));
    
    initial
        begin
            A = 0;
            B = 0;  
            #5
            
            A = 0;
            B = 1;
            #5
            
            A = 1;
            B = 0;
            #5
            
            A = 1;
            B = 1;
            #5;
            $finish;         
        end
endmodule
