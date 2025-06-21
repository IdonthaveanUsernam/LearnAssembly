.globl _start
.section .text

_start:	
	#multiplie 5
	movq $5, %rbx
	#enregistre la valeur dans rax
	movq $1, %rax
	#compteur de puissance
	movq $5, %rcx
	cmpq $0, %rcx
	je finish
looping:
	mulq %rbx
	loopq looping
finish:
	movq %rax, %rdi
	mov $60, %rax
	syscall
