`timescale 1ns / 1ps

module full_adder_tb();

reg A, B, C;
wire S, Cout;

full_adder f1(A, B, C, S, Cout);

initial
    begin
        A=0;B=0;C=0;#10;
        A=0;B=0;C=1;#10;
        A=0;B=1;C=0;#10;
        A=0;B=1;C=1;#10;
        A=1;B=0;C=0;#10;
        A=1;B=0;C=1;#10;
        A=1;B=1;C=0;#10;
        A=1;B=1;C=1;#10;
        
        $finish;
    end
endmodule
