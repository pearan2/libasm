section .text
    global _ft_strcmp

_ft_strcmp:
    xor rax, rax
    xor rdx, rdx
    xor rcx, rcx
    jmp loop

loop:
    mov al, BYTE [rdi + rcx]
    mov dl, BYTE [rsi + rcx]
    cmp al, dl
    jne diff
    cmp al, 0
    je same
    inc rcx
    jmp loop

same:
    mov rax, 0
    ret

diff:
    sub rax, rdx
    ret