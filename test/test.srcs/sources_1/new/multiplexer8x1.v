module multiplexer(input I2, I1, I0, D7, D6, D5, D4, D3, D2, D1, D0, output F);
    wire w0, w1, w2;
    
    wire m0, m1, m2, m3, m4, m5, m6, m7;
    
    not(w0, I0);
    not(w1, I1);
    not(w2, I2);
    
    and(m0, D0, w2, w1, w0);
    and(m1, D1, w2, w1, I0);
    and(m2, D2, w2, I1, w0);
    and(m3, D3, w2, I1, I0);
    and(m4, D4, I2, w1, w0);
    and(m5, D5, I2, w1, I0);
    and(m6, D6, I2, I1, w0);
    and(m7, D7, I2, I1, I0);
    
    or(F, m0, m1, m2, m3, m4, m5, m6, m7);
    
endmodule