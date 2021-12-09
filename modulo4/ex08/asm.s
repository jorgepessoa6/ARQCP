.section .data

.section .text
	.global calc

calc:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	pushl %esi
	pushl %edi
	
	movl 8(%ebp), %edi
	movl 12(%ebp), %esi
	movl 16(%ebp), %ecx
	
	subl %edi, (%esi)
	movl (%esi), %eax
	imull %ecx, %eax
	subl $2, %eax
	
end:
	popl %edi
	popl %esi
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
