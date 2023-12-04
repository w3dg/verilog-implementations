`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DG Productions
// Engineer: Debopam Gupta
// 
// Create Date: 16.08.2023 20:31:52
// Design Name: 
// Module Name: project0
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

module half_adder(
    input INP1,
    input INP2,
    output SUM,
    output CARRY
    );
    
   assign SUM =  INP1 ^ INP2;
   assign CARRY = INP1 & INP2;
endmodule
