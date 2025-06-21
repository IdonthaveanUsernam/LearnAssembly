.globl _start
.section .data
numberofnumbers:
	.quad 7
mynumbers:
	.quad 4, 89, 23, 45, 12, 47, 25
search:
	.quad 89

.section .text
_start:
	movq numberofnumbers, %rcx
	movq search, %rdx
	cmp $0 ,%rcx
	movq numberofnumbers, %rdi
	decq %rdi
	
	je end
looping:
	movq mynumbers-8(,%rcx,8), %rax
	cmp %rdx, %rax
	je end

loopcontrol:
	decq %rdi
	loopq looping
end:
	movq $60, %rax
	syscall
