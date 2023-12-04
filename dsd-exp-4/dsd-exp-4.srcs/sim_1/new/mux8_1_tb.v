`timescale 1ns / 1ps

module mux8_1_tb();

    reg A, B, C, D0, D1, D2, D3, D4, D5, D6, D7;
    wire F;
    
    mux8_1 uut(C, B, A, D0, D1, D2, D3, D4, D5, D6, D7, F);
    
    initial
        begin
           A=0;B=0;C=0;D0=0;#5;
           A=0;B=0;C=0;D0=1;#5;
           A=0;B=0;C=1;D1=0;#5;
           A=0;B=0;C=1;D1=1;#5;
           A=0;B=1;C=0;D2=0;#5;
           A=0;B=1;C=0;D2=1;#5;
           A=0;B=1;C=1;D3=0;#5;
           A=0;B=1;C=1;D3=1;#5;
           A=1;B=0;C=0;D4=0;#5;
           A=1;B=0;C=0;D4=1;#5;
           A=1;B=0;C=1;D5=0;#5;
           A=1;B=0;C=1;D5=1;#5;
           A=1;B=1;C=0;D6=0;#5;
           A=1;B=1;C=0;D6=1;#5;
           A=1;B=1;C=1;D7=0;#5;
           A=1;B=1;C=1;D7=1;#5;
           $finish;
        end
endmodule
