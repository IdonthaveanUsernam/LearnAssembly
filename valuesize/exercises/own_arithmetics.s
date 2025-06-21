.section .text
.globl _start
_start:
	movb $32, %al
	movb %al, %bl
	movw $20, %di
	
	mulw %di
	inc %rax
	dec %rax
	movl $5, %eax
	movb $5, %ah
	
	#syscall
	movw $0, %di
	movq $60, %rax
	syscall 
