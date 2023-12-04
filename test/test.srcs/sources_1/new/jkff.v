module jkff(input j, k, clk, rst, output reg q, qb);
    
    always @(posedge clk)
    case({j,k})
        2'b00:  begin q = q; qb = qb; end 
        2'b01: begin q = 0; qb = 1; end
        2'b10: begin q = 1; qb = 0; end 
        2'b11: begin q = ~q; qb = ~qb; end
    endcase
endmodule