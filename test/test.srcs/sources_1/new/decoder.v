module decoder(input I2, I1, I0, output D7, D6, D5, D4, D3, D2, D1, D0);
    wire w0, w1, w2;
    
    not(w0, I0);
    not(w1, I1);
    not(w2, I2);
    
    and(D0, w2, w1, w0);
    and(D1, w2, w1, I0);
    and(D2, w2, I1, w0);
    and(D3, w2, I1, I0);
    and(D4, I2, w1, w0);
    and(D5, I2, w1, I0);
    and(D6, I2, I1, w0);
    and(D7, I2, I1, I0);
    
endmodule