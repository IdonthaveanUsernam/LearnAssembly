.globl _start
.section .data
mystring:
	.ascii "Hello there!\n"
mystring_end:
	.equ size, (mystring_end - mystring)
.section .text
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $mystring, %rsi
	movq $size, %rdx
	syscall
	movq $60, %rax
	movq $0, %rdi
	syscall
