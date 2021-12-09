.section .data

.section .text
	.global inc_square

inc_square:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	pushl %edi
	
	movl 8(%ebp), %edi
	movl 12(%ebp), %eax
	
	incl (%edi)
	
	imull %eax, %eax
	
	popl %edi
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
