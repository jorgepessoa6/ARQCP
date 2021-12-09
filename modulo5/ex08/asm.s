.section .data
	
.section .text
	.global fill_s2

fill_s2:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %esi  #esi is student
	movl 12(%ebp), %edi #short
	movl 16(%ebp), %edx	#int
	movl 20(%ebp), %ebx #char
	
	movl $0, %ecx
	movw (%edi), %cx
	movw %cx, 0(%esi)
	
	movw 2(%edi), %cx
	movw %cx, 2(%esi)
	
	movw 4(%edi), %cx
	movw %cx, 4(%esi)
	
	movl %edx, 8(%esi)
	
	movb 0(%ebx), %cl
	movb %cl, 12(%esi)
	
	movb 1(%ebx), %cl
	movb %cl, 13(%esi)
	
	movb 2(%ebx), %cl
	movb %cl, 14(%esi)

end:
	
	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
