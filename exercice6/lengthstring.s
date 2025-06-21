.globl _start
.section .data
mystring:
	.ascii "This is a string.\0"
.section .text
_start:
	movq $-1, %rcx
	movq $mystring, %rdi
	movb $0, %al
	repne scasb
	decq %rdi
	subq $mystring, %rdi
	movq $60, %rax
	syscall
