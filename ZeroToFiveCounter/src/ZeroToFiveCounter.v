module SevenSegmentDecoder(
    input [3:0] digit,
    output reg [6:0] seg
);

always @(*) begin
    case (digit)
        4'd0: seg = 7'b1000000;
    4'd1: seg = 7'b1111001;
    4'd2: seg = 7'b0100100;
    4'd3: seg = 7'b0110000;
    4'd4: seg = 7'b0011001;
    4'd5: seg = 7'b0010010;
        default: seg = 7'b1111111; // blank display
    endcase
end

endmodule

module ZeroToFiveCounter (
    input clk,
    input rst,
    output [6:0] seg,
    output [7:0] an
);

reg [3:0] count;
reg [26:0] one_second_counter;
reg one_second_enable;

assign an = 8'b01111111;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        one_second_counter <= 0;
        one_second_enable <= 0;
    end else if (one_second_counter >= 100_000_000 - 1) begin
        one_second_counter <= 0;
        one_second_enable <= 1;
    end else begin
        one_second_counter <= one_second_counter + 1;
        one_second_enable <= 0;
    end
end


always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'd0;
    else if (one_second_enable) begin
        if (count == 4)
            count <= 4'd0;
        else
            count <= count + 1;
    end
end

SevenSegmentDecoder decoder (
    .digit(count),
    .seg(seg)
);

endmodule
