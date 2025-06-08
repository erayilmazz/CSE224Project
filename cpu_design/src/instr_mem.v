initial begin
    rom[0] = 32'h00a00513; // ADDI r10, r0, 10
    rom[1] = 32'h00f00793; // ADDI r15, r0, 15
    rom[2] = 32'h00f50633; // ADD r25, r10, r15
    rom[3] = 32'hffb60693; // SUBI r20, r25, 5
    rom[4] = 32'h002005b3; // ADDI r21, r0, 2
    rom[5] = 32'h00c0006f; // J 12
    rom[6] = 32'h0153f6b3; // SHIFTL r30, r7, r21
    rom[12] = 32'h00400213; // ADDI r4, r0, 4
    rom[13] = 32'h000002b3; // ADD r5, r0, r0
    rom[14] = 32'h00522463; // BEQ r4, r5, 7
    rom[15] = 32'h00100313; // ADDI r6, r0, 1
    rom[16] = 32'h00100393; // ADDI r7, r0, 1
    rom[17] = 32'h007304b3; // ADD r9, r6, r7
    rom[18] = 32'h007002b3; // ADD r5, r0, r7
    rom[19] = 32'h009003b3; // ADD r7, r0, r9
    rom[20] = 32'h00128293; // ADDI r5, r5, 1
    rom[21] = 32'h00e0006f; // J 14
end
