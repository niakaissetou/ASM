BITS 64

SECTION .text

GLOBAL memset

memset:
    TEST rdi, rdi
    JZ .end
    MOV al, sil
    MOV rcx, rdx
    CMP rcx, 0
    JE .end

.loop:
    MOV [rdi], al
    INC rdi
    DEC rcx
    JNZ .loop

.end:
    RET