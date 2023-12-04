`timescale 1ns / 1ps

// Design a counter with D flip-flops that goes through the following binary repeated
// sequence 0,1,2,4,6

module counter(input clk, input rst, output q2, q1, q0);
    wire q2b = ~q2;
    wire q1b = ~q1;
    wire q0b = ~q0;
   
   dff dff2(.d((~q2 & q1) + (q2 & ~q1)), .clk(clk), .rst(rst), .q(q2), .qb(q2b));
   dff dff1(.d((~q1 & q2) + q0), .clk(clk), .rst(rst), .q(q1), .qb(q1b));
   dff dff0(.d(~q0 & ~q1 & ~q2), .clk(clk), .rst(rst), .q(q0), .qb(q0b));
   
   initial 
        begin
            #2000;
        end
      
endmodule
