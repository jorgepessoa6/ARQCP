.section .data
	
.section .text
	.global update_grades

update_grades:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl $0, %eax
	movl 8(%ebp), %esi  #esi is student
	movl 12(%ebp), %edi #edi	 is address
	
	leal 4(%esi, 1), %eax
	
	movl $0, %edx
	
start:
	movl (%edi), %ecx
	movl %ecx, (%eax)
	
	cmpl $10, %edx
	je end

	addl $4, %edi
	addl $4, %eax
	
	incl %edx
	
	jmp start
end:
	
	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
