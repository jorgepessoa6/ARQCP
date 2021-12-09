.section .data

	.global num

.section .text

	.global steps

steps:
	
	# Prologue
	pushl %ebp 
	movl %esp, %ebp 

	movl	num, %eax
	cdq
	movl    $3, %ecx
	imul 	%ecx
	addl	$6,	%eax
	movl    $3, %ecx
	cdq
	idiv 	%ecx
	addl	$12, %eax
	subl 	num, %eax
	subl 	$1, %eax



	# Epilogue
	movl %ebp, %esp 
	popl %ebp

	ret
