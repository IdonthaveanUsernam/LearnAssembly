.global _start
.section .text
_start:
	movq $1, %rax
	jmp something
good:
	movl $0b011, %eax
	jmp super
random:
	movb $1, %al
	jmp bruh

finish:
	movq $60, %rax
	syscall

super:
	movw $11, %di
	jmp finish
something:
	movw $1, %ax
	jmp random
bruh:
	movb $1, %ah
	jmp good
