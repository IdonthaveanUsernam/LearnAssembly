.section .data
.globl people, numpeople
numpeople:
	#calcule le nombre de personnes dans le tableau
	.quad (endpeople - people)/PERSON_RECORD_SIZE
people:
	#tableau de gens
	.quad 200, 2, 74, 20
	.quad 280, 2, 74, 44
	.quad 150, 1, 68, 30
	.quad 250, 3, 75, 24
	.quad 250, 2, 70, 11
	.quad 180, 5, 69, 65
endpeople:
	#décrit la structure
	.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
	.equ WEIGHT_OFFSET, 0
	.equ HAIR_OFFSET, 8
	.equ HEIGHT_OFFSET, 16
	.equ AGE_OFFSET, 24
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE	, 32
