`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 22:57:00
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input C_IN,
    output SUM,
    input C_OUT
    );
    
    assign SUM = (A ^ B) ^ C_IN; // XOR Gate
    assign C_OUT = (A & B) + (C_IN & ((~A & B) + (A & ~B)));
    
endmodule
