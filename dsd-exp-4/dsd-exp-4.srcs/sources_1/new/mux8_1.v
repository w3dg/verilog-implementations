`timescale 1ns / 1ps

module mux8_1(
    input S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7,
    output F  
    );
    
    wire w0, w1, w2, w3, w4, w5, w6, w7;
    wire nw0, nw1, nw2;
    
    not(nw0, S0);
    not(nw1, S1);
    not(nw2, S2);
    
    and(w0, nw0, nw1, nw2, I0);
    and(w1, S0, nw1, nw2, I1);
    and(w2, nw0, S1, nw2, I2);
    and(w3, S0, S1, nw2, I3);
    and(w4, nw0, nw1, S2, I4);
    and(w5, S0, nw1, S2, I5);
    and(w6, nw0, S1, S2, I6);
    and(w7, S0, S1, S2, I7);
    
    or(F, w0, w1, w2, w3, w4, w5, w6, w7);
endmodule
