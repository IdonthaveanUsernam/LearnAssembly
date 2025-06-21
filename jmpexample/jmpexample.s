.globl _start
.section .text
_start:
	movq $7, %rdi
	jmp nextplace

	#ces deux instructions sont skip
	movq $8, %rbx
	addq %rbx, %rdi
nextplace:
	movq $60, %rax
	syscall
