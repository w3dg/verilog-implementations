`timescale 1ns / 1ps

module dfftest();
    reg d, clk, rst;
    wire q, qb;
    
    dff uut(d, clk, rst, q, qb);
    
    always #10 clk = ~clk;
    
    initial begin
        d=1'b0; rst=1'b1; clk=1'b0;
        #10; d=1'b1; rst=1'b0;
        #10; d=1'b0; rst=1'b0; 
        #20;
        $finish;
    end
endmodule
