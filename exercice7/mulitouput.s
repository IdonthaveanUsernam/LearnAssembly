.globl _start
.section .data
first:
	.ascii "Hello, I'm one"
endfirst:
	.equ sizeone, (endfirst-first)
two:
	.ascii " Hello, I'm two"
endtwo:
	.equ sizetwo, (endtwo-two)
.section .text
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $first, %rsi
	movq $sizeone, %rdx
	syscall
	movq $1, %rax
	movq $1, %rdi
	movq $two, %rsi
	movq $sizetwo, %rdx
	syscall
	movq $60, %rax
	movq $0, %rdi
	syscall
