.globl _start
.section .text
_start:
	movq $0, %rdi
	leaq people, %rbx
	movq numpeople, %rcx
	movq AGE_OFFSET(%rbx), %rdi
	
mainloop:
	cmpq $0, %rcx
	je finish
	movq AGE_OFFSET(%rbx), %rax
	cmpq %rax, %rdi
	cmovgq %rax, %rdi
loopcontrol:
	
	addq PERSON_RECORD_SIZE, %rbx
	loopq mainloop	

finish:
	movq $60, %rax
	syscall
