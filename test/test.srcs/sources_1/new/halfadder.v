module halfadder(output S, C, input A, B);

   // gate level
//   xor(S, A, B);
//   and(C, A, B);
    
    // data flow
    assign S = A ^ B;
    assign C = A & B;
endmodule