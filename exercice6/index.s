.globl _start
.section .data
array:
	.quad 12, 4, 5, 6, 7, 8
.section .text
_start:
	movq $array, %rdi
	movq $-1, %rcx
	movq $6, %rax
	repne scasq
	subq $8, %rdi
	subq $array, %rdi
	movq %rdi, %rax
	movq $8, %rbx
	divq %rbx
	movq %rax, %rdi	
	movq $60, %rax
	syscall
