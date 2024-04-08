BITS 64

SECTION .text

GLOBAL strrchr

strrchr:
    CMP rdi, 0
    JE .end
    XOR rax, rax
    XOR rcx, rcx

.loop:
    MOV al, [rdi]
    CMP al, 0
    JE .found_nul
    CMP al, sil
    JE .found
    INC rdi
    JMP .loop

.found_nul:
    CMP al, sil
    JE .found_at_end
    MOV rax, rcx
    RET

.found:
    MOV rcx, rdi
    INC rdi
    JMP .loop

.found_at_end:
    MOV rax, rdi
    RET

.end:
    XOR rax, rax
    RET