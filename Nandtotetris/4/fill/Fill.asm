// Fill.asm
// If keyboard pressed → black screen
// Else → white screen

(LOOP)
    // Check keyboard
    @24576
    D=M
    @BLACK
    D;JNE
    @WHITE
    0;JMP


// =======================
// BLACK SCREEN
// =======================
(BLACK)
    @16384
    D=A
    @addr
    M=D

(BLACK_LOOP)
    @addr
    D=M
    @24576
    D=D-A
    @LOOP
    D;JEQ

    @addr
    A=M
    M=-1

    @addr
    M=M+1

    @BLACK_LOOP
    0;JMP


// =======================
// WHITE SCREEN
// =======================
(WHITE)
    @16384
    D=A
    @addr
    M=D

(WHITE_LOOP)
    @addr
    D=M
    @24576
    D=D-A
    @LOOP
    D;JEQ

    @addr
    A=M
    M=0

    @addr
    M=M+1

    @WHITE_LOOP
    0;JMP