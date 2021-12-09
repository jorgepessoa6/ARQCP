.section .data
	
.section .text
	.global fill_s1

fill_s1:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %esi  #esi is student
	movl 12(%ebp), %edi #edi	 is address
	movb 16(%ebp), %cl
	movl 20(%ebp), %ebx
	movb 24(%ebp), %ch
	
	leal 0(%esi, 1), %edx
	movl %edi, (%edx)
	
	leal 4(%esi, 1), %edx
	movb %cl, (%edx)
	
	leal 8(%esi, 1), %edx
	movl %ebx, (%edx)
	
	leal 12(%esi, 1), %edx
	movb %ch, (%edx)

	
end:
	
	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
