.globl _start
.section .data

string:
	.ascii "I love cupcakes\n"
end_string:
	.equ size, (end_string-string)
.section .text
_start:
	movq $10, %rcx
mainloop:	
	movq $1, %rax
	movq $1, %rdi
	movq $string, %rsi
	movq $size, %rdx
	syscall
	loopq mainloop
end:
	movq $0, %rdi
	movq $60, %rax
	syscall

