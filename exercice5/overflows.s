.globl _start
.section .text
_start:
	movb $0b10000000, %al
	addb $0b10000000, %al
	jo carry
	jmp finish
carry:
	movq $1, %rdi
finish:
	movq $60, %rax
	syscall
