`timescale 1ns / 1ps

module counter_mod6_test();
reg clk ,reset ;
wire [2:0] dout;
counter_mod6 Counter1 ( clk ,reset ,dout ) ;
initial
    begin
    clk=0;
    forever #10 clk = ~clk;
    end
initial
    begin
    reset = 0;#150
    reset = 1;#30
    $finish;
    end
endmodule