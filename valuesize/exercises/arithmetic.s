.section .text
.globl _start
_start:
	movq $0b11, %rdi
	movw %di, %ax
	addw %di, %ax
	mulq %rdi
	movw $0b10, %di
	addw %di, %ax
	movw $4, %di
	mulq %rdi
	movw %ax, %di

	movb $60, %al
	
	syscall
