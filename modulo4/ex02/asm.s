.section .data

.section .text
	.global sum_n

sum_n:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl 8(%ebp), %ecx
	movl $0, %eax
	cmpl $0, %ecx
	jle end
	movl $1, %edx

sum:
	addl %edx, %eax
	
	cmpl %ecx, %edx
	je end
	
	incl %edx
	
	jmp sum

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
