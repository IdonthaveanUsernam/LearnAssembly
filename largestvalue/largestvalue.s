.globl _start
.section .data
#longeur tab
numberofnumbers:
	.quad 7
#tableau
mynumbers:
	.quad 5, 20, 33, 80, 52, 10,1

#trouve la plus grande valeure
.section .text
_start:
	movq numberofnumbers, %rcx #met le nb d'element
	movq $mynumbers, %rbx #mety l'addresse du premier element dans rbx
	movq $0, %rdi #rdi contient la plus grande valeure courante
	
	cmp $0, %rcx
	je endloop
myloop:
	#trouver la prochaine valeure pointer par rbx
	movq (%rbx), %rax
	cmp %rdi, %rax #si c'est pas plus gros va a la fin de la boucle
	jbe loopcontrol
	movq %rax, %rdi #sinon enregistrer la valeure
loopcontrol:
	#change l'addresse dans %rbx pour aller a la prochaine valeure
	addq $8, %rbx
	loop myloop
endloop:
	movq $60, %rax
	syscall
