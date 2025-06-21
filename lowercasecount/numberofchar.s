.globl _start
.section .data
mystring:
	.ascii "I love eating cupcakes.\0"
.section .text
_start:
	movq $mystring, %rbx
	movq $0, %rdi
mainloop:
	movb (%rbx), %al
	cmpb $0, %al
	je finish
	incq %rdi
loopcontrol:
	incq %rbx
	jmp mainloop
finish:
	movq $60, %rax
	syscall
