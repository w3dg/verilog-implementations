`timescale 1ns / 1ps

module sequence_gen(op,clk);
    input clk;
    output [3:0]op;
    reg [3:0]op;
    initial
    begin
        op[3:0] = 4'b1100 ;
    end
    always @( posedge clk) op <= {op[3]^op[1], op[3:1]};
endmodule