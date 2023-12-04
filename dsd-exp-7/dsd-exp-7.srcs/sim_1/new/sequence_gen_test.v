`timescale 1ns / 1ps

module sequence_gen_test(); 
    reg clk;
    wire [3:0] op;
    sequence_gen SG1 (op,clk);
    initial begin
        clk=0;
        forever #10 clk = ~clk;
    end
    initial begin
        #200
        $finish;
    end
endmodule