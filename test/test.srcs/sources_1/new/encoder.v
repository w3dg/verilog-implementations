module encoder(output D1, D0, input I3, I2, I1, I0);
    
    wire w0, w1, w2, w3, w4;
    
    not(w0, I0);
    not(w1, I1);
    not(w2, I2);
    
    xor(w3, I2, I3);
    and(D1, w3, w0, w1);
    
    
    xor(w4, I1, I3);
    and(D0, w2, w1, w4); 
    
    
endmodule
