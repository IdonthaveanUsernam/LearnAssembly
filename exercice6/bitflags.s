.globl _start
.section .data
numbers:
	.quad 8, 12, 3

.section .text
_start:
	movq numbers, %rdi
	movq $numbers, %rsi
	
	andq $12, %rdi
	addq $16, %rsi
	andq (%rsi), %rdi
	
	movq $60, %rax
	syscall
	

