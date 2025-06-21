.globl _start
.section .data
mytext:
	.ascii "This is a string of charavters.\0"
.section .text
_start:
	movq $mytext, %rbx #pointeur de mytext dans rbx
	movq $0, %rdi
mainloop:
	#next 64-bits
	movq (%rbx), %rax
byte1:
	cmpb $0, %al
	je finish
	cmpb $'a', %al
	jb byte2
	cmpb $'z', %al
	ja byte2
	incq %rdi
byte2:
	cmpb $0, %ah
	je finish
	cmpb $'a', %ah
	jb byte3
	cmpb $'z', %ah
	ja byte3
	incq %rdi
byte3:
	#shift les prochains bytes

	rorq $16, %rax
	cmpb $0, %al
	je finish
	cmpb $'a', %al
	jb byte4
	cmpb $'z', %al
	ja byte4
	incq %rdi
byte4:
	cmpb $0, %ah
	je finish
	cmpb $'a', %ah
	jb byte5
	cmpb $'z', %ah
	ja byte5
	incq %rdi
byte5:
	rorq $16, %rax
	
