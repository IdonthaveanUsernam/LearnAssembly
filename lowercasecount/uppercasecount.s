.globl _start
.section .data
mystring:
	.ascii "This is a Beautiful Text.\0"

.section .text
_start:
	movq $mystring, %rbx
	movq $0, %rdi
	
mainloop:
	movb (%rbx), %al
	cmpb $0, %al
	je finish
	cmpb $'A', %al
	jb looping
	cmpb $'Z', %al
	ja looping
	incq %rdi
looping:
	incq %rbx
	jmp mainloop
finish:
	movq $60, %rax
	syscall
