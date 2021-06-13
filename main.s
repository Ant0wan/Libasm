section .data
	text db "Hello, World!",10,0

section .text
	global _start
_start:
	mov rax, text
	call _ft_putstr

	mov rax, 60
	mov rdi, 0
	syscall
