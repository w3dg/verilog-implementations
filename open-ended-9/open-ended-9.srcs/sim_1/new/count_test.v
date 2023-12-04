`timescale 1ns / 1ps

// Design a counter with D flip-flops that goes through the following binary repeated
// sequence 0,1,2,4,6

module count_test();
    reg clk;
    reg rst;
    wire q2, q1, q0;
   
   always #10 clk = ~clk;
    
   counter counter_ckt(.clk(clk), .rst(rst), .q2(q2), .q1(q1), .q0(q0));
   
   initial 
        begin
            #2000;
        end
      
endmodule
