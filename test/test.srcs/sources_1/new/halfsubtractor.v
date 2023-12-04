module halfsubtractor(output D, Bw, input A, B);
//    wire w;
    
//    not(w, A);
    
//    xor(D, A, B);
//    and(Bw, w, B);

    assign D = A ^ B;
    assign Bw = (~A) & B;

endmodule