.globl _start
.section .text

_start:
	movq $0, %rdx
	movq $6, %rax
	movq $2, %rbx
	divq %rbx
	cmpq $0, %rdx 
	je even
odd:
	movq $0, %rdi
	movq $60 ,%rax
	syscall

even:
	movq $1, %rdi
	movq $60, %rax
	syscall

