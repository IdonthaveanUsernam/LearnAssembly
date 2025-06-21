.globl _start
#calcule 2³
.section .text
_start:
	#%rbx a la base
	movq $2, %rbx
	
	#%rcx tient le compte de la puissance
	movq $3, %rcx
	
	#enregistre la valeur accumulée dans rax
	movq $1, %rax

	#si la puissance est égale a 0 on est bon
	cmpq $0, %rcx
	je complete

mainloop:
	#multiplie la valeur accumulé par notre base
	mulq %rbx
	loopq mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
