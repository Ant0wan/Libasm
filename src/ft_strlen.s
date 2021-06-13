;ft_strlen
; input: rax as pointer to string
; return: string len as size_t

section	.text
	global _ft_strlen

_ft_strlen:
	mov rbx, 0
loop:
	inc rax,
	inc rbx,
	mov cl, [rax]
	cmp cl, 0
	jne loop

	ret
