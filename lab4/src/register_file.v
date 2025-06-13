module register_file(
    input CLK,
    input WE3,
    input [4:0] A1, A2, A3,
    input [31:0] WD3,
    output reg [31:0] RD1, RD2
);

    reg [31:0] registers [0:31];  // 32x32-bit register

    // Okuma Portları (Kombinasyonel)
    always @(*) begin
        RD1 = registers[A1];
        RD2 = registers[A2];
    end

    // Yazma Portu (Clock'un yükselen kenarında)
    always @(posedge CLK) begin
        if (WE3) registers[A3] <= WD3;
    end

endmodule