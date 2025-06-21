.globl _start
.section .text

_start:
	movq $999, %rcx
	jmp looping
	cmpq $0, %rcx
	je finish
looping:
	movq $0, %rax
	inc %rax 
	inc %rdi
	loopq looping
finish:
	movq $60, %rax
	syscall
