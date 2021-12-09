pushl %ebx
pushl %esi
pushl %edi

.section .data
 .global op1
 .global op2

.section .text	
	.global sum
	
sum:
	pushl %ebp
	movl %esp, %ebp
	
	movl op1, %ecx
	movl op2, %eax
	add %ecx, %eax
	
	movl %ebp, %esp
	popl %ebp
	
	ret
	
popl %edi
popl %esi
popl %ebx
