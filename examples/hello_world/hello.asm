section .data
    msg db "Hello, World!", 0x0A  ; Message to print, with newline (0x0A)

section .text
    global _start
_start:
    ; Write the message to stdout
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg        ; address of the message
    mov rdx, 14         ; length of the message
    syscall             ; invoke the kernel

    ; Exit the program
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code 0
    syscall