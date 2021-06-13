;ft_putstr
; input: rax as pointer to string
; output: print string at rax

section .text
	global _ft_putstr

_ft_putstr:
	push rax
	mov rbx, 0
loop:
	inc rax,
	inc rbx,
	mov cl, [rax]
	cmp cl, 0
	jne loop

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall

	ret
