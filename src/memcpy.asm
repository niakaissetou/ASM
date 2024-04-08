BITS 64

SECTION .text

GLOBAL memcpy

memcpy:
    TEST rsi, rsi
    JZ .end

    TEST rdi, rdi
    JZ .end

    MOV rcx, rdx
    CMP rcx, 0
    JE .end

.loop:
    MOV al, [rsi]
    MOV [rdi], al
    INC rsi
    INC rdi
    DEC rcx
    JNZ .loop

.end:
    RET
