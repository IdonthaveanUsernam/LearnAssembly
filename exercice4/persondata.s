.section .data
.globl people, numpeople
numpeople:
	#calcule le nombre de personnes dans le tableau
	.quad (endpeople - people)/PERSON_RECORD_SIZE
people:
	#tableau de gens
	.quad 200, 2, 74, 20, 1, 10
	.quad 280, 2, 74, 44, 0, 8
	.quad 150, 1, 68, 30, 1, 5
	.quad 250, 3, 75, 24, 1, 89
	.quad 250, 2, 70, 11, 1, 12
	.quad 180, 5, 69, 65, 1, 13
endpeople:
	#décrit la structure
	.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
	.globl MOM_OFFSET, ELECTRONIC_OFFSET
	.equ WEIGHT_OFFSET, 0
	.equ HAIR_OFFSET, 8
	.equ HEIGHT_OFFSET, 16
	.equ AGE_OFFSET, 24
	.equ MOM_OFFSET, 32
	.equ ELECTRONIC_OFFSET, 40
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE	, 48
