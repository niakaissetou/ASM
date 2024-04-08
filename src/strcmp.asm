BITS 64

section .text

global strcmp

strcmp:
    CMP rdi, 0
    JE .end
    CMP rsi, 0
    JE .end

.loop:
    MOV al, [rdi]
    MOV dl, [rsi]
    CMP al, dl
    JNE .not_equal
    CMP al, 0
    JE .str1_end
    INC rdi
    INC rsi
    JMP .loop

.str1_end:
    CMP al, dl
    JE .end
    JNE .not_equal

.not_equal:
    SUB al, dl
    MOVSX rax, al
    RET

.end:
    XOR rax, rax
    RET
