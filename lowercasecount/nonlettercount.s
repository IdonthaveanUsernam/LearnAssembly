.globl _start
.section .data
mystring:
	.ascii "I love eating 9 cupcakes .\0"
.section .text
_start:
	movq $mystring, %rbx
	movq $0, %rdi
	
uppercase:
	cmp $'.', %al
	je finish
	movb (%rbx), %al
	cmpb $'A', %al
	jb addone
	cmpb $'Z', %al
	ja lowercase
	jmp loopcontrol
lowercase:
	cmpb $'a', %al
	jb addone
	cmpb $'z', %al
	ja addone
loopcontrol:
	incq %rbx
	jmp uppercase
addone:
	incq %rdi
	jmp loopcontrol
finish:
	movq $60, %rax
	syscall
