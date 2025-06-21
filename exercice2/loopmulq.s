.globl _start
.section .text

_start:
	movb $2, %al
	movb $2, %bl
	movq $5, %rcx 
	cmp $0, %rcx
	je finish
	
looping:
	mulq %rbx
	add %rbx, %rax
	loopq looping

finish:	
	mov %rax, %rdi
	mov $60, %rax
	syscall
