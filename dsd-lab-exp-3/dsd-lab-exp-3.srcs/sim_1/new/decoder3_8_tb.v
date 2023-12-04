`timescale 1ns / 1ps

module decoder3_8_tb();
    reg A, B, C;
    wire D0, D1, D2, D3, D4, D5, D6, D7;
    
    decoder3_8 uut(D0, D1, D2, D3, D4, D5, D6, D7, C, B, A);
    
    initial
        begin
           A=0;B=0;C=0;#5;
           A=0;B=0;C=1;#5;
           A=0;B=1;C=0;#5;
           A=0;B=1;C=1;#5;
           A=1;B=0;C=0;#5;
           A=1;B=0;C=1;#5;
           A=1;B=1;C=0;#5;
           A=1;B=1;C=1;#5;
           
           $finish;
        end
endmodule
