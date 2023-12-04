`timescale 1ns / 1ps

module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
       
    wire w1, w2, w3;
    
    xor x1(w1, A, B);
    xor x2(S, w1, Cin);
    
    and a1(w2, A, B);
    and a2(w3, w1, Cin);
    
    or o1(Cout, w2, w3);
    
endmodule
