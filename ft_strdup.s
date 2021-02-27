section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup
    push rdi
    call _ft_strlen
    mov rdi, rax
    add rdi, 1
    call _malloc
    cmp rax, 0
    je fail
    mov rdi, rax
    pop rsi
    call _ft_strcpy
    ret

fail:
    ret