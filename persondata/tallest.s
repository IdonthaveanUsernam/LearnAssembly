.globl _start
.section .text
_start:
	#pointer sur le premier record
	leaq people, %rbx
	#le compre du record
	movq numpeople, %rcx
	#plus grande valeure trouvee
	movq $0, %rdi
	#preconditions
	cmp $0, %rcx
	je finish

mainloop:
	#%rbx est le pointeur de la structure
	#cette instruction enregistre la taille dans %rax
	movq HEIGHT_OFFSET(%rbx), %rax
	cmpq %rdi, %rax
	jbe endloop
	
	movq %rax, %rdi
endloop:
	addq $PERSON_RECORD_SIZE, %rbx
	loopq mainloop
finish:
	movq $60, %rax
	syscall
