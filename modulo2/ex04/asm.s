.section .data
 .global op1
 .global op2
 op3: .int 10
 .global op3
 op4: .int 10
 .global op4

.section .text	
	.global sum_v3
	
sum_v3:
	pushl %ebp
	movl %esp, %ebp
	
	movl op4, %eax
	addl op3, %eax
	subl op2, %eax
	addl op1, %eax
	
	movl %ebp, %esp
	popl %ebp
	
	ret
