.globl _start
.section .data

numberofnumbers:
	.quad 1000
mynumbers:
	.quad 4, 32, 12, 8, 78, 32, 4, 1, 6, 4, 11,12

.section .text

_start:
	movq numberofnumbers, %rcx
	movq $0, %rdi

	cmp $0, %rcx
	je endloop

myloop:
	movq mynumbers-8(,%rcx,8), %rax

	cmp %rdi, %rax
	jbe loopcontrol
	movq %rax, %rdi
loopcontrol:
	loopq myloop

endloop:
	movq $60, %rax
	syscall
