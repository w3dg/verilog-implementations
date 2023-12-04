`timescale 1ns / 1ps

module seq_det(
    input clk,
    input rst,
    input Din,
    output Dout
    );
    reg [1:0] state;
 
    initial
    begin
        state <= 2'b00;
    end
    always @ ( posedge clk)
        begin
        if ( rst )
            state <= 2'b00;
        else
            begin
            case( {state,Din} )
                3'b000: begin
                state <= 2'b00;
                end
                3'b001: begin
                state <= 2'b01;
                end
                3'b010: begin
                state <= 2'b10;
                end
                3'b011: begin
                state <= 2'b01;
                end
                3'b100: begin
                state <= 2'b00;
                end
                3'b101: begin
                state <= 2'b11;
                end
                3'b110: begin
                state <= 2'b10;
                end
                3'b111: begin
                state <= 2'b01;
                end
                endcase
            end // else ends
        end // always block ends
        assign Dout = (({state,Din}) == 3'b111) ? 1'b1 : 1'b0 ;
    
endmodule