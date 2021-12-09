.section .data
	
.section .text
	.global update_address

update_address:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	pushl %esi
	pushl %edi

	movl $0, %ecx
	movl 8(%ebp), %esi  #esi is student
	movl 12(%ebp), %edi #edi	 is address
	
	leal 124(%esi, 1), %eax
	
start:
	movb (%edi), %cl
	
	cmpb $0, %cl
	je end
	
	movb %cl, (%eax)
	
	incl %edi
	incl %eax
	
	jmp start
end:
	movb $0, (%eax)
	
	# Restore Regsiters
	popl %edi
	popl %esi

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
