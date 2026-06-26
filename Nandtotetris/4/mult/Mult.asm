// Mult.asm
// Computes R2 = R0 * R1
// Assumes R0 >= 0, R1 >= 0

// Initialize R2 = 0
@R2
M=0

// Copy R1 into counter
@R1
D=M
@counter
M=D

(LOOP)
    // If counter == 0, end
    @counter
    D=M
    @END
    D;JEQ

    // R2 = R2 + R0
    @R0
    D=M
    @R2
    M=M+D

    // counter--
    @counter
    M=M-1

    @LOOP
    0;JMP

(END)
    @END
    0;JMP