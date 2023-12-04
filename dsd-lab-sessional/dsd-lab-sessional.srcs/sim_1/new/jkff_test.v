`timescale 1ns / 1ps

module jkfftest();
    reg j,k,clk;
    wire q;
    
    jkff uut(j,k,clk,q);
    
    always #10 clk= ~clk;
    
    initial
        begin
            j=0;k=0;clk=0;
            #10;j=0;k=1;
            #10;j=1;k=0;
            #10;j=1;k=1;
            #100;
            
            $finish;
        end
endmodule