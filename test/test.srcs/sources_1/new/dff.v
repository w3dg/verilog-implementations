module dff(input d, clk, rst, output reg q, qb);
    
    always @(posedge clk)
    if(rst == 1'b1) begin 
            q <= 1'b0;
            qb <= 1'b1;
        end
    else begin
        q <= d;
        qb <= ~d;
        end
endmodule