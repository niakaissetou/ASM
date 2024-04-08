BITS 64

SECTION .text

GLOBAL strchr

strchr:
    CMP rdi, 0
    JE .end
    XOR rax,rax
    XOR rcx, rcx
.loop:
    MOV al, [rdi]
    CMP al, dl
    JE .found
    CMP al, 0
    JE .not_found
    INC rdi
    INC rcx
    JMP .loop

.found:
    MOV rax, rdi
    RET

.not_found:
    CMP al, dl
    JNE .end
    CMP dl, 0
    JNE .end
    MOV rax, rcx
    RET

.end:
    XOR rax, rax
    RET
