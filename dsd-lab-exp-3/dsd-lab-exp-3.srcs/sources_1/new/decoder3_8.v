`timescale 1ns / 1ps

module decoder3_8(
    output D0, D1, D2, D3, D4, D5, D6,D7,
    input I0, I1, I2
    );
    
    wire w1, w2, w0;
    not n1(w0, I0);
    not n2(w1, I1);
    not n3(w2, I2);
    
    and a0(D0, w2, w1, w0);
    and a1(D1, w2, w1, I0);
    and a2(D2, w2, I1, w0);
    and a3(D3, w2, I1, I0);
    and a4(D4, I2, w1, w0);
    and a5(D5, I2, w1, I0);
    and a6(D6, I2, I1, w0);
    and a7(D7, I2, I1, I0);
    
endmodule
