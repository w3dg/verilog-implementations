`timescale 1ns / 1ps

module seq_det_test();
    reg clk, rst, Din;
    wire Dout;
    
    seq_det det1(clk, rst, Din, Dout);
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        rst = 0;
        Din = 0; #20
        Din = 1; #20
        Din = 0; #20
        Din = 1; #20
        Din = 1; #20
        Din = 0; #20
        Din = 1; #20
        Din = 1; #20
        Din = 0; #20
        Din = 0; #20
        Din = 0; #20
        Din = 1; #20
        
        $finish;
     end
endmodule
        