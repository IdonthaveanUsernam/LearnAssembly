.globl _start
.section .text
_start:
	#performe des opérations arithmétique
	movq $3, %rdi
	movq %rdi, %rax
	addq %rdi, %rax
	mulq %rdi
	movq $2, %rdi
	addq %rdi, %rax
	movq $4, %rdi
	mulq %rdi
	movq %rax, %rdi
	
	#met le syscall number
	movq $60, %rax
	
	#performe le system call
	syscall
