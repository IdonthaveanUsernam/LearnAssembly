.globl _start
.section .text
_start:
	leaq people, %rbx
	movq $0, %rdi
	movq $0, %rdx
	movq numpeople, %rcx
mainloop:
	cmpq $0, %rcx
	je finish
	movb NAME_OFFSET(%rbx), %al
	cmpb $'0', %al
	je loopcontrol
	incq %rdx
	incq %rbx
	jmp mainloop
loopcontrol:
	addq PERSON_RECORD_SIZE, %rbx
	loopq mainloop
	
	
finish:
	movq $60, %rax
	syscall
