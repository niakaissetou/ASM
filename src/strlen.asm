BITS 64

SECTION .text
GLOBAL strlen

strlen:
    XOR rcx, rcx
    CMP rdi, 0
    JE .end
.loop:
    CMP byte [rdi + rcx], 0
    JE  .end
    INC rcx
    JMP .loop
.end:
    MOV rax, rcx
    RET
